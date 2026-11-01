import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../localized_string/localized_string.dart';
import '../enums/permission.dart';

part 'date_time_custom_field_config.zorphy.dart';
part 'date_time_custom_field_config.g.dart';

/// Vendure `DateTimeCustomFieldConfig` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $DateTimeCustomFieldConfig {
  List<LocalizedString>? get description;
  bool? get internal;
  List<LocalizedString>? get label;
  bool get list;
  String? get max;
  String? get min;
  String get name;
  bool? get nullable;
  bool? get readonly;
  List<Permission>? get requiresPermission;
  int? get step;
  String get type;
  Map<String, dynamic>? get ui;
}
