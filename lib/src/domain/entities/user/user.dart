import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../authentication_method/authentication_method.dart';
import '../role/role.dart';
import '../user_custom_fields/user_custom_fields.dart';

part 'user.zorphy.dart';
part 'user.g.dart';

/// Vendure `User` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $User {
  List<AuthenticationMethod> get authenticationMethods;
  DateTime get createdAt;
  UserCustomFields? get customFields;
  String get id;
  String get identifier;
  DateTime? get lastLogin;
  List<Role>? get roles;
  DateTime get updatedAt;
  bool get verified;
}
