import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'config_arg_input.zorphy.dart';
part 'config_arg_input.g.dart';

/// Vendure `ConfigArgInput` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ConfigArgInput {
  String get name;
  String get value;
}
