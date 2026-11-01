import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../channel/channel.dart';
import '../enums/permission.dart';

part 'role.zorphy.dart';
part 'role.g.dart';

/// Vendure `Role` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Role {
  List<Channel> get channels;
  String get code;
  DateTime get createdAt;
  String get description;
  String get id;
  List<Permission> get permissions;
  DateTime get updatedAt;
}
