import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'user_custom_fields.zorphy.dart';
part 'user_custom_fields.g.dart';

/// Vendure `UserCustomFields` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $UserCustomFields {
  String? get city;
  String? get deviceToken;
  String? get email;
  String? get fullName;
  String? get neighborhood;
  String? get os;
  String? get osVersion;
  String? get phoneBrand;
  String? get phoneModel;
  String? get town;
}
