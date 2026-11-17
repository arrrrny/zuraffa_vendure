import 'package:test/test.dart';
import 'package:vendure/vendure.dart';

/// Regression for arrrrny/zuraffa_vendure#17 (reported live from
/// zik_zak#877 and zik_zak#897): `CustomOperations` defaulted
/// `expectedDataType` to `'data'`, but the GraphQL client has ALREADY
/// unwrapped the top-level `data` envelope before the SDK sees a
/// `QueryResult`. The default therefore made `_handleErrors` look for a
/// `data` key INSIDE the operation's own field map — a key that cannot
/// exist — so every caller who omitted the parameter threw
/// `No data returned for expected type: data` on a response the backend
/// had accepted. The throw was reachable ONLY on success, which also made
/// the message actively misleading.
///
/// The default is now `null`: the adapter returns the operation's single
/// root field (the payload shape the source SDK handed back before the
/// `data` default), or the whole envelope when the document selected more
/// than one root field. Callers who pass an explicit name — the convention
/// zik_zak#899 keeps — are unaffected.
///
/// Two shapes the default must not mistake for a failure or an empty page:
/// a root field the server answered with `null` (D9 — the ordinary
/// guest-session `activeOrder`), and a multi-field envelope reaching a
/// paginated operation (D10 — no `items`/`totalItems` to report, so it
/// fails loudly instead of returning a page that exists as empty).
///
/// The transport is a scripted [Link.function]: the real
/// [GraphQLVendureDataSource] over the real `graphql_plus` client, no
/// server and no network, so these tests pin the SDK's own response
/// handling rather than a stand-in.

const _endpoint = 'https://shop.example.com/shop-api';

/// The zik_zak#897 response in shape: a healthy mutation the server
/// accepted, whose `data` is already the operation's field map (plus the
/// `__typename` `gql()` injects into every selection set).
const _postListingResponse = {
  'data': {
    '__typename': 'Mutation',
    'postListing': {'created': true, 'updated': false, 'errors': <dynamic>[]},
  },
};

/// Two root fields — the shape the single-root-field default must NOT
/// guess at (a heuristic is wrong for a multi-field document).
const _twoFieldResponse = {
  'data': {
    '__typename': 'Query',
    'activeOrder': {'id': 42},
    'nextOrderStates': <String>['Draft'],
  },
};

CustomOperations _opsFor(Map<String, dynamic> response) {
  final client = GraphQLClient(
    link: Link.function((request, [forward]) async* {
      yield Response(
        data: response['data'] as Map<String, dynamic>?,
        response: response,
      );
    }),
    cache: GraphQLCache(),
  );
  return CustomOperations(
    GraphQLVendureDataSource(
      const VendureContext(endpoint: _endpoint),
      innerClient: client,
    ),
  );
}

void main() {
  group('CustomOperations default expectedDataType (zuraffa_vendure#17)', () {
    test('D1: mutate without expectedDataType returns the root field payload '
        '(the zik_zak#897 symptom — a successful mutation threw)', () async {
      final ops = _opsFor(_postListingResponse);

      final result = await ops.mutate<Map<String, dynamic>>(
        'mutation { postListing { created updated errors } }',
        const {},
      );

      expect(result['created'], isTrue);
      expect(result['updated'], isFalse);
    });

    test(
      'D2: query without expectedDataType returns the root field payload',
      () async {
        final ops = _opsFor({
          'data': {
            '__typename': 'Query',
            'activeOrder': {'__typename': 'Order', 'id': 42},
          },
        });

        final result = await ops.query<Map<String, dynamic>>(
          'query { activeOrder { id } }',
          const {},
        );

        expect(result['id'], 42);
      },
    );

    test(
      'D3: queryList without expectedDataType returns the root field list',
      () async {
        final ops = _opsFor({
          'data': {
            '__typename': 'Query',
            'activeProducts': [
              {'__typename': 'Product', 'id': 1},
              {'__typename': 'Product', 'id': 2},
            ],
          },
        });

        final result = await ops.queryList<Map<String, dynamic>>(
          'query { activeProducts { id } }',
          const {},
          fromJson: (json) => json,
        );

        expect(result.map((row) => row['id']), [1, 2]);
      },
    );

    test('D4: queryListPaginated without expectedDataType paginates the root field', () async {
      final ops = _opsFor({
        'data': {
          '__typename': 'Query',
          'getDealList': {
            'items': [
              {'__typename': 'Deal', 'id': '1'},
            ],
            'totalItems': 1,
          },
        },
      });

      final page = await ops.queryListPaginated<Map<String, dynamic>>(
        'query { getDealList { items { id } totalItems } }',
        fromJson: (json) => json,
      );

      expect(page.totalItems, 1);
      expect(page.items.single['id'], '1');
    });

    test('D5: mutateListPaginated without expectedDataType paginates the root field', () async {
      final ops = _opsFor({
        'data': {
          '__typename': 'Mutation',
          'postDealList': {
            'items': [
              {'__typename': 'Deal', 'id': '1'},
            ],
            'totalItems': 1,
          },
        },
      });

      final page = await ops.mutateListPaginated<Map<String, dynamic>>(
        'mutation { postDealList { items { id } totalItems } }',
        const {},
        fromJson: (json) => json,
      );

      expect(page.totalItems, 1);
      expect(page.items.single['id'], '1');
    });

    test(
      'D6: a multi-field document returns the whole envelope, not a guess',
      () async {
        final ops = _opsFor(_twoFieldResponse);

        final result = await ops.query<Map<String, dynamic>>(
          'query { activeOrder { id } nextOrderStates }',
          const {},
        );

        // The envelope IS the answer here: there is no single root field to
        // pick, and silently picking one would be the heuristic the issue
        // warns is wrong for multi-field documents.
        expect(result['activeOrder'], {'id': 42});
        expect(result['nextOrderStates'], ['Draft']);
      },
    );

    test(
      'D7: an explicit expectedDataType still extracts exactly that key',
      () async {
        final ops = _opsFor(_postListingResponse);

        final result = await ops.mutate<Map<String, dynamic>>(
          'mutation { postListing { created updated errors } }',
          const {},
          expectedDataType: 'postListing',
        );

        expect(result['created'], isTrue);
      },
    );

    test('D8: an explicit expectedDataType missing from the envelope names '
        'the keys it DID return (the one-glance diagnosis)', () async {
      final ops = _opsFor(_postListingResponse);

      Object? surfaced;
      try {
        await ops.mutate<Map<String, dynamic>>(
          'mutation { postListing { created updated errors } }',
          const {},
          expectedDataType: 'data',
        );
      } catch (e) {
        surfaced = e;
      }

      expect(surfaced, isA<VendureDataSourceException>());
      final message = (surfaced! as VendureDataSourceException).message;
      expect(message, contains('No data returned for expected type: data'));
      expect(message, contains('envelope keys'));
      expect(message, contains('postListing'));
    });

    test('D9: a single root field present with a null value is an answer, '
        'not a failure (a guest session\'s activeOrder)', () async {
      final ops = _opsFor({
        'data': {'__typename': 'Query', 'activeOrder': null},
      });

      // The raw escape hatch returns null — the server answered, the
      // payload is simply empty. Throwing here is #17's failure mode one
      // field-name deeper: the response was a healthy 200.
      final result = await ops.query<dynamic>(
        'query { activeOrder { id } }',
        const {},
      );

      expect(result, isNull);
    });

    test('D10: a paginated multi-field envelope fails loudly instead of '
        'reporting a real page as empty', () async {
      final ops = _opsFor({
        'data': {
          '__typename': 'Query',
          'getDealList': {
            'items': [
              {'__typename': 'Deal', 'id': '1'},
            ],
            'totalItems': 5,
          },
          'other': 1,
        },
      });

      Object? surfaced;
      try {
        await ops.queryListPaginated<Map<String, dynamic>>(
          'query { getDealList { items { id } totalItems } other }',
          fromJson: (json) => json,
        );
      } catch (e) {
        surfaced = e;
      }

      expect(surfaced, isA<VendureDataSourceException>());
      final message = (surfaced! as VendureDataSourceException).message;
      expect(message, contains('no items/totalItems'));
      expect(message, contains('getDealList'));
    });
  });
}
