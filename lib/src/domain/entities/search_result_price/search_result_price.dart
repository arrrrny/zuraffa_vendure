import 'package:json_annotation/json_annotation.dart';

part 'search_result_price.g.dart';

/// Vendure's `SearchResultPrice` GraphQL union: either a price range
/// (when the channel's currency rounds a product's price into a band)
/// or a single price. The sealed hierarchy is ported verbatim from the
/// source SDK — it is a wire union, not a zorphy entity.
sealed class SearchResultPrice {
  const SearchResultPrice._();

  factory SearchResultPrice.fromJson(Map<String, dynamic> json) {
    final runtimeType = json['runtimeType'] as String?;
    switch (runtimeType) {
      case 'priceRange':
        return PriceRange.fromJson(json);
      case 'singlePrice':
        return SinglePrice.fromJson(json);
      default:
        throw ArgumentError('Unknown SearchResultPrice variant: $runtimeType');
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(explicitToJson: true)
class PriceRange extends SearchResultPrice {
  double? max;
  double? min;

  PriceRange({this.max, this.min}) : super._();

  factory PriceRange.fromJson(Map<String, dynamic> json) =>
      _$PriceRangeFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PriceRangeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SinglePrice extends SearchResultPrice {
  double? value;

  SinglePrice({this.value}) : super._();

  factory SinglePrice.fromJson(Map<String, dynamic> json) =>
      _$SinglePriceFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SinglePriceToJson(this);
}
