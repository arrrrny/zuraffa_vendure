import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../native_auth_input/native_auth_input.dart';

part 'authentication_input.zorphy.dart';
part 'authentication_input.g.dart';

/// Vendure `AuthenticationInput` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $AuthenticationInput {
  NativeAuthInput? get native;
}
