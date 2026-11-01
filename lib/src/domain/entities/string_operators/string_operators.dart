import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'string_operators.zorphy.dart';
part 'string_operators.g.dart';

/// Vendure `StringOperators` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $StringOperators {
  String? get contains;
  String? get eq;
  List<String>? get in_;
  bool? get isNull;
  String? get notContains;
  String? get notEq;
  List<String>? get notIn;
  String? get regex;
}
