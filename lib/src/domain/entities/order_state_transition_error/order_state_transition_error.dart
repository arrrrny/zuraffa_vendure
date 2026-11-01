import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'order_state_transition_error.zorphy.dart';
part 'order_state_transition_error.g.dart';

/// Vendure `OrderStateTransitionError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $OrderStateTransitionError {
  ErrorCode get errorCode;
  String get fromState;
  String get message;
  String get toState;
  String get transitionError;
}
