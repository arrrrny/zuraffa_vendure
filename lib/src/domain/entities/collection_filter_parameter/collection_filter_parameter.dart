import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../date_operators/date_operators.dart';
import '../id_operators/id_operators.dart';
import '../number_operators/number_operators.dart';
import '../string_operators/string_operators.dart';

part 'collection_filter_parameter.zorphy.dart';
part 'collection_filter_parameter.g.dart';

/// Vendure `CollectionFilterParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CollectionFilterParameter {
  List<CollectionFilterParameter>? get and;
  List<CollectionFilterParameter>? get or;
  DateOperators? get createdAt;
  StringOperators? get description;
  IdOperators? get id;
  StringOperators? get languageCode;
  StringOperators? get name;
  IdOperators? get parentId;
  NumberOperators? get position;
  StringOperators? get slug;
  DateOperators? get updatedAt;
}
