import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../localized_string/localized_string.dart';
import '../enums/permission.dart';

part 'float_custom_field_config.zorphy.dart';
part 'float_custom_field_config.g.dart';

/// Vendure `FloatCustomFieldConfig` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FloatCustomFieldConfig {
  List<LocalizedString>? get description;
  bool? get internal;
  List<LocalizedString>? get label;
  bool get list;
  double? get max;
  double? get min;
  String get name;
  bool? get nullable;
  bool? get readonly;
  List<Permission>? get requiresPermission;
  double? get step;
  String get type;
  Map<String, dynamic>? get ui;
}
