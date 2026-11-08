import 'package:graphql/client.dart';
import 'package:test/test.dart';
import 'package:vendure/vendure.dart';

/// Spec `001-vendure-zuraffa-rewrite` — the GraphQL datasource adapter:
/// response-envelope handling ported from the source SDK
/// (`_handleErrors`/`_extractExpectedData`), the one-error-path guarantee,
/// and the context assembly (languageCode rides the endpoint URL). The
/// transport is a scripted [Link.function] — no server, no network.

const _endpoint = 'https://shop.example.com/shop-api';

/// A link that yields [response] on the first call, then fails.
Link scriptedLink(Map<String, dynamic> response) =>
    Link.function((request, [forward]) async* {
      yield Response(
        data: response['data'] as Map<String, dynamic>?,
        response: response,
      );
    });

GraphQLVendureDataSource dataSourceFor(
  Map<String, dynamic> response, {
  VendureContext? context,
}) {
  final client = GraphQLClient(
    link: scriptedLink(response),
    cache: GraphQLCache(),
  );
  return GraphQLVendureDataSource(
    context ?? const VendureContext(endpoint: _endpoint),
    innerClient: client,
  );
}

int _decoder(Map<String, dynamic> json) => (json['id'] as num?)?.toInt() ?? -1;

void main() {
  group('transport wire configuration (T-suite, regression for the zik_zak websocket loop + Future-already-completed crash)', () {
    test('T1: the default client carries the context timeout, not graphql\'s silent 5s queryRequestTimeout', () {
      final ds = GraphQLVendureDataSource(
        const VendureContext(
          endpoint: _endpoint,
          timeout: Duration(seconds: 42),
        ),
      );
      expect(
        ds.buildDefaultClient().queryManager.requestTimeout,
        const Duration(seconds: 42),
      );
    });

    test('T2: a null context timeout disables the request timeout (zik_zak issue-265 configuration)', () {
      final ds = GraphQLVendureDataSource(
        const VendureContext(endpoint: _endpoint),
      );
      expect(ds.buildDefaultClient().queryManager.requestTimeout, isNull);
    });

    test('T2b: copyWith round-trips the transport vocabulary — a context rebuild keeps the explicit timeout', () {
      const context = VendureContext(
        endpoint: _endpoint,
        timeout: Duration(minutes: 2),
        customFieldsConfig: {
          'product': ['featured'],
        },
      );
      final rebuilt = context.copyWith(channelToken: 'channel-1');
      // The very regression the review flagged: copyWith dropping the
      // transport fields would revert the timeout to graphql's 5s default.
      expect(rebuilt.timeout, const Duration(minutes: 2));
      expect(rebuilt.customFieldsConfig, context.customFieldsConfig);
      expect(rebuilt.appCheckConfig, isNull);
      expect(rebuilt.channelToken, 'channel-1');
    });

    test('T3: the subscription client speaks graphql-transport-ws (Vendure servers close the legacy graphqlWs subprotocol)', () {
      final ds = GraphQLVendureDataSource(
        const VendureContext(endpoint: _endpoint),
      );
      final link = ds.buildSubscriptionClient().link;
      expect(link, isA<WebSocketLink>());
      expect(
        (link as WebSocketLink).subProtocol,
        GraphQLProtocol.graphqlTransportWs,
      );
    });

    test(
      'T4: the subscription endpoint swaps the scheme and keeps languageCode',
      () {
        final ds = GraphQLVendureDataSource(
          const VendureContext(endpoint: _endpoint, languageCode: 'tr'),
        );
        final link = ds.buildSubscriptionClient().link as WebSocketLink;
        expect(link.url, 'wss://shop.example.com/shop-api?languageCode=tr');
      },
    );
  });

  group('GraphQLVendureDataSource envelope handling (FR-005, ported from the source SDK)', () {
    test(
      'G1: extracts the expectedDataType key from the data envelope',
      () async {
        final ds = dataSourceFor({
          'data': {
            '__typename': 'Query',
            'activeOrder': {'__typename': 'Order', 'id': 42},
          },
        });

        final result = await ds.query<int>(
          'query { activeOrder { id } }',
          variables: const {},
          headers: const {},
          fromJson: _decoder,
          expectedDataType: 'activeOrder',
        );

        expect(result, 42);
      },
    );

    test('G2: navigates a dot-separated expectedDataType path', () async {
      final ds = dataSourceFor({
        'data': {
          '__typename': 'Query',
          'order': {
            '__typename': 'Order',
            'lines': {
              '__typename': 'OrderLineList',
              'items': {'__typename': 'OrderLine', 'id': 7},
            },
          },
        },
      });

      final result = await ds.query<int>(
        'query { order { lines { items { id } } } }',
        variables: const {},
        headers: const {},
        fromJson: _decoder,
        expectedDataType: 'order.lines.items',
      );

      expect(result, 7);
    });

    test(
      'G3: a missing expectedDataType key resolves to the failure exception',
      () async {
        final ds = dataSourceFor({
          'data': {
            '__typename': 'Query',
            'other': {'__typename': 'Other', 'id': 1},
          },
        });

        Object? surfaced;
        try {
          await ds.query<int>(
            'query { activeOrder { id } }',
            variables: const {},
            headers: const {},
            fromJson: _decoder,
            expectedDataType: 'activeOrder',
          );
        } catch (e) {
          surfaced = e;
        }

        expect(surfaced, isA<VendureDataSourceException>());
        expect(
          (surfaced! as VendureDataSourceException).message,
          contains('No data returned for expected type'),
        );
      },
    );

    test(
      'G4: an ErrorResult typename surfaces its message as the failure',
      () async {
        final ds = dataSourceFor({
          'data': {
            '__typename': 'Mutation',
            'authenticate': {
              '__typename': 'ErrorResult',
              'message': 'Invalid credentials',
            },
          },
        });

        Object? surfaced;
        try {
          await ds.mutate<int>(
            'mutation { authenticate { __typename } }',
            variables: const {},
            headers: const {},
            fromJson: _decoder,
            expectedDataType: 'authenticate',
          );
        } catch (e) {
          surfaced = e;
        }

        expect(surfaced, isA<VendureDataSourceException>());
        expect(
          (surfaced! as VendureDataSourceException).message,
          'Invalid credentials',
        );
      },
    );

    test('G5: a GraphQL error result maps to the failure exception (no raw exception escapes)', () async {
      final client = GraphQLClient(
        link: Link.function((request, [forward]) async* {
          throw OperationException(
            linkException: NetworkException(
              originalException: Exception('boom'),
              uri: Uri.parse(_endpoint),
            ),
          );
        }),
        cache: GraphQLCache(),
      );
      final ds = GraphQLVendureDataSource(
        const VendureContext(endpoint: _endpoint),
        innerClient: client,
      );

      Object? surfaced;
      try {
        await ds.query<int>(
          'query { activeOrder { id } }',
          variables: const {},
          headers: const {},
          fromJson: _decoder,
          expectedDataType: 'activeOrder',
        );
      } catch (e) {
        surfaced = e;
      }

      expect(surfaced, isA<VendureDataSourceException>());
      expect(
        (surfaced! as VendureDataSourceException).message,
        contains('GraphQL operation failed'),
      );
    });

    test('G6: a null-data result maps to the failure exception', () async {
      final client = GraphQLClient(
        link: Link.function((request, [forward]) async* {
          yield const Response(data: null, response: {});
        }),
        cache: GraphQLCache(),
      );
      final ds = GraphQLVendureDataSource(
        const VendureContext(endpoint: _endpoint),
        innerClient: client,
      );

      Object? surfaced;
      try {
        await ds.query<int>(
          'query { activeOrder { id } }',
          variables: const {},
          headers: const {},
          fromJson: _decoder,
          expectedDataType: 'activeOrder',
        );
      } catch (e) {
        surfaced = e;
      }

      expect(surfaced, isA<VendureDataSourceException>());
      expect(
        (surfaced! as VendureDataSourceException).message,
        'No data returned from GraphQL operation',
      );
    });
  });

  group('VendureContext assembly (FR-005)', () {
    test(
      'G7: languageCode rides the endpoint URL as a query parameter',
      () async {
        final client = GraphQLClient(
          link: Link.function((request, [forward]) async* {
            yield Response(
              data: {
                '__typename': 'Query',
                'activeOrder': {'__typename': 'Order', 'id': 1},
              },
              response: {
                'data': {
                  '__typename': 'Query',
                  'activeOrder': {'__typename': 'Order', 'id': 1},
                },
              },
            );
          }),
          cache: GraphQLCache(),
        );
        final ds = GraphQLVendureDataSource(
          const VendureContext(endpoint: _endpoint, languageCode: 'de'),
          innerClient: client,
        );

        await ds.query<int>(
          'query { activeOrder { id } }',
          variables: const {},
          headers: const {},
          fromJson: _decoder,
          expectedDataType: 'activeOrder',
        );

        expect(
          const VendureContext(
            endpoint: _endpoint,
            languageCode: 'de',
          ).endpointWithLanguageCode,
          contains('languageCode=de'),
        );
      },
    );

    test('G8: copyWith produces a new immutable context', () {
      const base = VendureContext(endpoint: _endpoint, languageCode: 'en');
      final swapped = base.copyWith(languageCode: 'fr');

      expect(swapped.languageCode, 'fr');
      expect(base.languageCode, 'en');
    });

    test('G9: __typename is normalized to runtimeType before the union decodes '
        '(the wire-dispatch linchpin)', () async {
      // The server sends __typename; the hand-written sealed unions
      // dispatch on runtimeType. The adapter's normalization (ported
      // from the source SDK's VendureRemoteDataSource) bridges the two.
      final ds = dataSourceFor({
        'data': {
          '__typename': 'Mutation',
          'addItemToOrder': {'__typename': 'Order', 'id': 'o-9', 'code': 'T-9'},
        },
      });

      final result = await ds.mutate<UpdateOrderItemsResult>(
        'mutation { addItemToOrder { id } }',
        variables: const {},
        headers: const {},
        fromJson: UpdateOrderItemsResult.fromJson,
        expectedDataType: 'addItemToOrder',
      );

      expect(result, isA<UpdateOrderItemsResult>());
      expect((result as dynamic).id, 'o-9');
    });

    test('G10: mutateWithHeaders tolerates an absent expectedDataType key '
        '(the auth seam: token rides the header, body irrelevant)', () async {
      // The firebase token-exchange server answers the mutation with
      // only __typename — no authenticate key. The old SDK's
      // extractResponseHeaders never validated the body; the port's
      // mutateWithHeaders must return null data + the headers instead
      // of throwing (zik_zak issue-265/371 init regression lock).
      final ds = dataSourceFor({
        'data': {'__typename': 'Mutation'},
      });

      final response = await ds.mutateWithHeaders<AuthenticationResult>(
        'mutation { authenticate(input: {firebaseAuth: {uid: "u", jwt: "j"}}) { __typename } }',
        variables: const {},
        headers: const {},
        fromJson: AuthenticationResult.fromJson,
        expectedDataType: 'authenticate',
      );

      expect(response.data, isNull);
      expect(response.headers, isEmpty); // scripted link carries no headers
    });
  });
}
