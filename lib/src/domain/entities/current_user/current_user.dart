import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../current_user_channel/current_user_channel.dart';

part 'current_user.zorphy.dart';
part 'current_user.g.dart';

/// Vendure `CurrentUser` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CurrentUser {
  List<CurrentUserChannel> get channels;
  String get id;
  String get identifier;
}
