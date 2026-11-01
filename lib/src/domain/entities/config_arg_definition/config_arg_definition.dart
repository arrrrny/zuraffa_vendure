import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'config_arg_definition.zorphy.dart';
part 'config_arg_definition.g.dart';

/// Vendure `ConfigArgDefinition` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ConfigArgDefinition {
  Map<String, dynamic>? get defaultValue;
  String? get description;
  String? get label;
  bool get list;
  String get name;
  bool get required_;
  String get type;
  Map<String, dynamic>? get ui;
}
