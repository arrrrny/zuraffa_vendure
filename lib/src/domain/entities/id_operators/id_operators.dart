import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'id_operators.zorphy.dart';
part 'id_operators.g.dart';

/// Vendure `IdOperators` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $IdOperators {
  String? get eq;
  List<String>? get in_;
  bool? get isNull;
  String? get notEq;
  List<String>? get notIn;
}
