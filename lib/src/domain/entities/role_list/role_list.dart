import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../role/role.dart';

part 'role_list.zorphy.dart';
part 'role_list.g.dart';

/// Vendure `RoleList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $RoleList {
  List<Role> get items;
  int get totalItems;
}
