import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../localized_string/localized_string.dart';
import '../enums/permission.dart';
import '../string_field_option/string_field_option.dart';

part 'string_custom_field_config.zorphy.dart';
part 'string_custom_field_config.g.dart';

/// Vendure `StringCustomFieldConfig` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $StringCustomFieldConfig {
  List<LocalizedString>? get description;
  bool? get internal;
  List<LocalizedString>? get label;
  int? get length;
  bool get list;
  String get name;
  bool? get nullable;
  List<StringFieldOption>? get options;
  String? get pattern;
  bool? get readonly;
  List<Permission>? get requiresPermission;
  String get type;
  Map<String, dynamic>? get ui;
}
