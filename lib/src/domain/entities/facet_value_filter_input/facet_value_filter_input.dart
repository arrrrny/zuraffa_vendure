import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'facet_value_filter_input.zorphy.dart';
part 'facet_value_filter_input.g.dart';

/// Vendure `FacetValueFilterInput` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FacetValueFilterInput {
  String? get and;
  List<String>? get or;
}
