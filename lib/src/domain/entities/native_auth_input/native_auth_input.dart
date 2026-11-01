import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'native_auth_input.zorphy.dart';
part 'native_auth_input.g.dart';

/// Vendure `NativeAuthInput` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $NativeAuthInput {
  String get password;
  String get username;
}
