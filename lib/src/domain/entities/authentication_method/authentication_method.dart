import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'authentication_method.zorphy.dart';
part 'authentication_method.g.dart';

/// Vendure `AuthenticationMethod` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $AuthenticationMethod {
  DateTime get createdAt;
  String get id;
  String get strategy;
  DateTime get updatedAt;
}
