import 'package:test/test.dart';
import 'package:vendure/vendure.dart';

/// Regression for zuraffa_vendure#2 (reported from zik_zak#508,
/// slug `deal-listing-typename-crash`): the paginated custom operations
/// lost the envelope-wide `__typename` normalization the source SDK's
/// `queryListPaginated`/`mutateListPaginated` applied before `fromJson`.
/// `gql()` injects `__typename` into every selection set, so the raw
/// escape hatch hands entity decoders nested maps like
/// `{__typename: 'ChannelListing', ...}` — a polymorphic dispatcher
/// (zorphy `explicitSubTypes` fromJson, e.g. zik_zak's `Listing.fromJson`)
/// throws `UnsupportedError` on any server type it doesn't list.
///
/// The decoder below mirrors that dispatcher's strictness.

Map<String, dynamic> _strictListingDecoder(Map<String, dynamic> json) {
  final listing = json['listing'];
  if (listing is Map) {
    final typename = listing['__typename'] as String?;
    if (typename != null && typename != 'Listing') {
      throw UnsupportedError(
        "The __typename '$typename' is not supported by the "
        'Listing.fromJson constructor.',
      );
    }
  }
  return json;
}

const _dealListEnvelope = {
  'items': [
    {
      'id': '1',
      '__typename': 'Deal',
      'listing': {
        '__typename': 'ChannelListing',
        'id': 'l1',
        'title': 'Air Max 90',
        'price': 12999,
      },
    },
  ],
  'totalItems': 1,
};

const _dealListQuery =
    'query GetDealList(\$options: DealListOptions) { '
    'getDealList(options: \$options) { items { id listing { id title price } } totalItems } }';

void main() {
  group('CustomOperations paginated envelope normalization (zuraffa_vendure#2)', () {
    test('P1: queryListPaginated converts __typename before fromJson', () async {
      final ops = CustomOperations(
        InMemoryVendureDataSource(script: {'getDealList': _dealListEnvelope}),
      );

      final page = await ops.queryListPaginated<Map<String, dynamic>>(
        _dealListQuery,
        fromJson: _strictListingDecoder,
        expectedDataType: 'getDealList',
      );

      expect(page.totalItems, 1);
      final deal = page.items.single;
      // The row's own __typename is normalized away into runtimeType —
      // an unknown key json_serializable entities ignore.
      expect(deal['__typename'], isNull);
      expect(deal['runtimeType'], 'deal');
      // The nested listing's __typename must be gone too: a polymorphic
      // dispatcher then sees no __typename and decodes the base type,
      // exactly the pre-7.x behavior.
      final listing = deal['listing'] as Map<String, dynamic>;
      expect(listing['__typename'], isNull);
      expect(listing['runtimeType'], 'channelListing');
      expect(listing['title'], 'Air Max 90');
      expect(listing['price'], 12999);
    });

    test('P2: mutateListPaginated converts __typename before fromJson', () async {
      final ops = CustomOperations(
        InMemoryVendureDataSource(script: {'postDealList': _dealListEnvelope}),
      );

      final page = await ops.mutateListPaginated<Map<String, dynamic>>(
        'mutation PostDealList { postDealList { items { id } totalItems } }',
        const {},
        fromJson: _strictListingDecoder,
        expectedDataType: 'postDealList',
      );

      expect(page.totalItems, 1);
      final listing = page.items.single['listing'] as Map<String, dynamic>;
      expect(listing['__typename'], isNull);
      expect(listing['title'], 'Air Max 90');
    });
  });
}
