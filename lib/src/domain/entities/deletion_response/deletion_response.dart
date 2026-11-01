import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/deletion_result.dart';

part 'deletion_response.zorphy.dart';
part 'deletion_response.g.dart';

/// Vendure `DeletionResponse` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $DeletionResponse {
  String? get message;
  DeletionResult get result;
}
