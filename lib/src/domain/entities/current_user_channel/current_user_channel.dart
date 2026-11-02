import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'current_user_channel.zorphy.dart';
part 'current_user_channel.g.dart';

/// Vendure `CurrentUserChannel` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CurrentUserChannel {
  String? get code;
  String get id;
  String get token;
}
