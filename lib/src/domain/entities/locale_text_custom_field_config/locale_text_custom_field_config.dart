import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../localized_string/localized_string.dart';
import '../enums/permission.dart';

part 'locale_text_custom_field_config.zorphy.dart';
part 'locale_text_custom_field_config.g.dart';

/// Vendure `LocaleTextCustomFieldConfig` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $LocaleTextCustomFieldConfig {
  List<LocalizedString>? get description;
  bool? get internal;
  List<LocalizedString>? get label;
  bool get list;
  String get name;
  bool? get nullable;
  bool? get readonly;
  List<Permission>? get requiresPermission;
  String get type;
  Map<String, dynamic>? get ui;
}
