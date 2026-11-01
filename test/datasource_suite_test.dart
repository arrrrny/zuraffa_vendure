import 'package:test/test.dart';
import 'package:vendure/vendure.dart';

/// Spec `001-vendure-zuraffa-rewrite` — the outbound Vendure seam: the
/// [VendureDataSource] port contract, the pure-Dart
/// [InMemoryVendureDataSource] recording surface, and the one-error-path
/// guarantee. Written test-first; the GraphQL adapter lands in the green
/// phase.

/// A trivial decoder for the tests — the real repositories use the
/// zorphy entities' generated fromJson.
int _sumDecoder(Map<String, dynamic> json) => (json['a'] as num?)?.toInt() ?? 0;

void main() {
  group('InMemoryVendureDataSource records requests exactly as passed (FR-005, US4)', () {
    test('D1: query records document, variables, headers, and returns the scripted payload', () async {
      final adapter = InMemoryVendureDataSource(
        script: {
          'activeOrder': {'a': 41},
        },
      );

      final result = await adapter.query<int>(
        'query getActiveOrder { activeOrder { id } }',
        variables: const {},
        headers: const {'languageCode': 'en'},
        fromJson: _sumDecoder,
        expectedDataType: 'activeOrder',
      );

      expect(result, 41);
      expect(adapter.requests, hasLength(1));
      final rec = adapter.requests.single;
      expect(rec.document, 'query getActiveOrder { activeOrder { id } }');
      expect(rec.variables, const {});
      expect(rec.headers, const {'languageCode': 'en'});
      expect(rec.isMutation, isFalse);
      expect(rec.expectedDataType, 'activeOrder');
    });

    test(
      'D2: mutate records isMutation=true and returns the scripted payload',
      () async {
        final adapter = InMemoryVendureDataSource(
          script: {
            'addItemToOrder': {'a': 7},
          },
        );

        final result = await adapter.mutate<int>(
          'mutation addItemToOrder(\$id: ID!, \$qty: Int!) { addItemToOrder(productVariantId: \$id, quantity: \$qty) { id } }',
          variables: const {'id': 'v1', 'qty': 2},
          headers: const {},
          fromJson: _sumDecoder,
          expectedDataType: 'addItemToOrder',
        );

        expect(result, 7);
        final rec = adapter.requests.single;
        expect(rec.isMutation, isTrue);
        expect(rec.variables, const {'id': 'v1', 'qty': 2});
      },
    );

    test('D3: an unscripted operation returns the empty-payload decode (a real endpoint with no data)', () async {
      final adapter = InMemoryVendureDataSource();

      final result = await adapter.query<int>(
        'query { activeOrder { id } }',
        variables: const {},
        headers: const {},
        fromJson: _sumDecoder,
        expectedDataType: 'activeOrder',
      );

      expect(result, 0);
    });

    test(
      'D4: requests accumulate in call order across query and mutate',
      () async {
        final adapter = InMemoryVendureDataSource(
          script: {
            'activeOrder': {'a': 1},
            'addItemToOrder': {'a': 2},
          },
        );

        await adapter.query<int>(
          'q1',
          variables: const {},
          headers: const {},
          fromJson: _sumDecoder,
          expectedDataType: 'activeOrder',
        );
        await adapter.mutate<int>(
          'm1',
          variables: const {},
          headers: const {},
          fromJson: _sumDecoder,
          expectedDataType: 'addItemToOrder',
        );
        await adapter.query<int>(
          'q2',
          variables: const {},
          headers: const {},
          fromJson: _sumDecoder,
          expectedDataType: 'activeOrder',
        );

        expect(adapter.requests.map((r) => r.document), ['q1', 'm1', 'q2']);
        expect(adapter.requests[1].isMutation, isTrue);
      },
    );
  });

  group('the port\'s one error path (FR-008, US4)', () {
    test('D5: a scripted error surfaces verbatim — no raw transport exception escapes', () async {
      final boom = VendureDataSourceException('transport dead');
      final adapter = InMemoryVendureDataSource(error: boom);

      Object? surfaced;
      try {
        await adapter.query<int>(
          'q',
          variables: const {},
          headers: const {},
          fromJson: _sumDecoder,
          expectedDataType: 'activeOrder',
        );
      } catch (e) {
        surfaced = e;
      }

      expect(surfaced, isA<VendureDataSourceException>());
      expect(identical(surfaced, boom), isTrue);
    });

    test('D6: the error path is shared by query and mutate', () async {
      final adapter = InMemoryVendureDataSource(
        error: const VendureDataSourceException('boom'),
      );

      for (final op in [
        () => adapter.query<int>(
          'q',
          variables: const {},
          headers: const {},
          fromJson: _sumDecoder,
          expectedDataType: 'x',
        ),
        () => adapter.mutate<int>(
          'm',
          variables: const {},
          headers: const {},
          fromJson: _sumDecoder,
          expectedDataType: 'x',
        ),
      ]) {
        Object? surfaced;
        try {
          await op();
        } catch (e) {
          surfaced = e;
        }
        expect(surfaced, isA<VendureDataSourceException>());
      }
    });
  });
}
