import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../config_arg_input/config_arg_input.dart';

part 'configurable_operation_input.zorphy.dart';
part 'configurable_operation_input.g.dart';

/// Vendure `ConfigurableOperationInput` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ConfigurableOperationInput {
  List<ConfigArgInput> get arguments;
  String get code;
}
