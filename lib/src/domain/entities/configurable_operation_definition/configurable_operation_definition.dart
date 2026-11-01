import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../config_arg_definition/config_arg_definition.dart';

part 'configurable_operation_definition.zorphy.dart';
part 'configurable_operation_definition.g.dart';

/// Vendure `ConfigurableOperationDefinition` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ConfigurableOperationDefinition {
  List<ConfigArgDefinition> get args;
  String get code;
  String get description;
}
