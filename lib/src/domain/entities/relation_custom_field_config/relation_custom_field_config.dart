import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../localized_string/localized_string.dart';
import '../enums/permission.dart';

part 'relation_custom_field_config.zorphy.dart';
part 'relation_custom_field_config.g.dart';

/// Vendure `RelationCustomFieldConfig` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $RelationCustomFieldConfig {
  List<LocalizedString>? get description;
  String get entity;
  bool? get internal;
  List<LocalizedString>? get label;
  bool get list;
  String get name;
  bool? get nullable;
  bool? get readonly;
  List<Permission>? get requiresPermission;
  List<String> get scalarFields;
  String get type;
  Map<String, dynamic>? get ui;
}
