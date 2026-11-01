import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../localized_string/localized_string.dart';

part 'string_field_option.zorphy.dart';
part 'string_field_option.g.dart';

/// Vendure `StringFieldOption` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $StringFieldOption {
  List<LocalizedString>? get label;
  String get value;
}
