import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'config_arg.zorphy.dart';
part 'config_arg.g.dart';

/// Vendure `ConfigArg` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ConfigArg {
  String get name;
  String get value;
}
