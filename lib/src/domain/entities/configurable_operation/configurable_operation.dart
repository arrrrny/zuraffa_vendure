import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../config_arg/config_arg.dart';

part 'configurable_operation.zorphy.dart';
part 'configurable_operation.g.dart';

/// Vendure `ConfigurableOperation` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ConfigurableOperation {
  List<ConfigArg> get args;
  String get code;
}
