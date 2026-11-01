// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'order_state_transition_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class OrderStateTransitionError {
  OrderStateTransitionError({
    required ErrorCode this.errorCode,
    required String this.fromState,
    required String this.message,
    required String this.toState,
    required String this.transitionError,
  });

  factory OrderStateTransitionError.fromJson(Map<String, dynamic> json) =>
      _$OrderStateTransitionErrorFromJson(json);

  final ErrorCode errorCode;

  final String fromState;

  final String message;

  final String toState;

  final String transitionError;

  OrderStateTransitionError copyWith({
    ErrorCode? errorCode,
    String? fromState,
    String? message,
    String? toState,
    String? transitionError,
  }) {
    return OrderStateTransitionError(
      errorCode: errorCode ?? this.errorCode,
      fromState: fromState ?? this.fromState,
      message: message ?? this.message,
      toState: toState ?? this.toState,
      transitionError: transitionError ?? this.transitionError,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  OrderStateTransitionError copyWithField<T>(
    Field<OrderStateTransitionError, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'errorCode':
        return copyWith(errorCode: value as ErrorCode);
      case 'fromState':
        return copyWith(fromState: value as String);
      case 'message':
        return copyWith(message: value as String);
      case 'toState':
        return copyWith(toState: value as String);
      case 'transitionError':
        return copyWith(transitionError: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'OrderStateTransitionError has no settable field with this name',
        );
    }
  }

  OrderStateTransitionError copyWithOrderStateTransitionError({
    ErrorCode? errorCode,
    String? fromState,
    String? message,
    String? toState,
    String? transitionError,
  }) {
    return copyWith(
      errorCode: errorCode,
      fromState: fromState,
      message: message,
      toState: toState,
      transitionError: transitionError,
    );
  }

  OrderStateTransitionError patchWithOrderStateTransitionError([
    OrderStateTransitionErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? OrderStateTransitionErrorPatch();
    final _patchMap = _patcher.patchMap;
    return OrderStateTransitionError(
      errorCode: _patchMap.containsKey(OrderStateTransitionError$.errorCode)
          ? ((_patchMap[OrderStateTransitionError$.errorCode] is Function)
                    ? _patchMap[OrderStateTransitionError$.errorCode](
                        this.errorCode,
                      )
                    : (_patchMap[OrderStateTransitionError$.errorCode] is Patch)
                    ? _patchMap[OrderStateTransitionError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[OrderStateTransitionError$.errorCode])
                as ErrorCode
          : this.errorCode,
      fromState: _patchMap.containsKey(OrderStateTransitionError$.fromState)
          ? ((_patchMap[OrderStateTransitionError$.fromState] is Function)
                    ? _patchMap[OrderStateTransitionError$.fromState](
                        this.fromState,
                      )
                    : (_patchMap[OrderStateTransitionError$.fromState] is Patch)
                    ? _patchMap[OrderStateTransitionError$.fromState].applyTo(
                        this.fromState,
                      )
                    : _patchMap[OrderStateTransitionError$.fromState])
                as String
          : this.fromState,
      message: _patchMap.containsKey(OrderStateTransitionError$.message)
          ? ((_patchMap[OrderStateTransitionError$.message] is Function)
                    ? _patchMap[OrderStateTransitionError$.message](
                        this.message,
                      )
                    : (_patchMap[OrderStateTransitionError$.message] is Patch)
                    ? _patchMap[OrderStateTransitionError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[OrderStateTransitionError$.message])
                as String
          : this.message,
      toState: _patchMap.containsKey(OrderStateTransitionError$.toState)
          ? ((_patchMap[OrderStateTransitionError$.toState] is Function)
                    ? _patchMap[OrderStateTransitionError$.toState](
                        this.toState,
                      )
                    : (_patchMap[OrderStateTransitionError$.toState] is Patch)
                    ? _patchMap[OrderStateTransitionError$.toState].applyTo(
                        this.toState,
                      )
                    : _patchMap[OrderStateTransitionError$.toState])
                as String
          : this.toState,
      transitionError:
          _patchMap.containsKey(OrderStateTransitionError$.transitionError)
          ? ((_patchMap[OrderStateTransitionError$.transitionError] is Function)
                    ? _patchMap[OrderStateTransitionError$.transitionError](
                        this.transitionError,
                      )
                    : (_patchMap[OrderStateTransitionError$.transitionError]
                          is Patch)
                    ? _patchMap[OrderStateTransitionError$.transitionError]
                          .applyTo(this.transitionError)
                    : _patchMap[OrderStateTransitionError$.transitionError])
                as String
          : this.transitionError,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrderStateTransitionError &&
        errorCode == other.errorCode &&
        fromState == other.fromState &&
        message == other.message &&
        toState == other.toState &&
        transitionError == other.transitionError;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.errorCode,
      this.fromState,
      this.message,
      this.toState,
      this.transitionError,
    );
  }

  @override
  String toString() {
    return 'OrderStateTransitionError(' +
        'errorCode: ${errorCode}' +
        ', ' +
        'fromState: ${fromState}' +
        ', ' +
        'message: ${message}' +
        ', ' +
        'toState: ${toState}' +
        ', ' +
        'transitionError: ${transitionError})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$OrderStateTransitionErrorToJson(this);
    _sanitizeJson(data);
    return data;
  }

  dynamic _sanitizeJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      json.remove('__typename');
      return json..forEach((key, value) {
        json[key] = _sanitizeJson(value);
      });
    } else if (json is List) {
      return json.map((e) => _sanitizeJson(e)).toList();
    }
    return json;
  }
}

extension OrderStateTransitionErrorPropertyHelpers
    on OrderStateTransitionError {
  bool get isErrorCodeAlreadyLoggedInError {
    return this.errorCode == ErrorCode.alreadyLoggedInError;
  }

  bool get isErrorCodeCouponCodeExpiredError {
    return this.errorCode == ErrorCode.couponCodeExpiredError;
  }

  bool get isErrorCodeCouponCodeInvalidError {
    return this.errorCode == ErrorCode.couponCodeInvalidError;
  }

  bool get isErrorCodeCouponCodeLimitError {
    return this.errorCode == ErrorCode.couponCodeLimitError;
  }

  bool get isErrorCodeEmailAddressConflictError {
    return this.errorCode == ErrorCode.emailAddressConflictError;
  }

  bool get isErrorCodeGuestCheckoutError {
    return this.errorCode == ErrorCode.guestCheckoutError;
  }

  bool get isErrorCodeIdentifierChangeTokenExpiredError {
    return this.errorCode == ErrorCode.identifierChangeTokenExpiredError;
  }

  bool get isErrorCodeIdentifierChangeTokenInvalidError {
    return this.errorCode == ErrorCode.identifierChangeTokenInvalidError;
  }

  bool get isErrorCodeIneligiblePaymentMethodError {
    return this.errorCode == ErrorCode.ineligiblePaymentMethodError;
  }

  bool get isErrorCodeIneligibleShippingMethodError {
    return this.errorCode == ErrorCode.ineligibleShippingMethodError;
  }

  bool get isErrorCodeInsufficientStockError {
    return this.errorCode == ErrorCode.insufficientStockError;
  }

  bool get isErrorCodeInvalidCredentialsError {
    return this.errorCode == ErrorCode.invalidCredentialsError;
  }

  bool get isErrorCodeMissingPasswordError {
    return this.errorCode == ErrorCode.missingPasswordError;
  }

  bool get isErrorCodeNativeAuthStrategyError {
    return this.errorCode == ErrorCode.nativeAuthStrategyError;
  }

  bool get isErrorCodeNegativeQuantityError {
    return this.errorCode == ErrorCode.negativeQuantityError;
  }

  bool get isErrorCodeNotVerifiedError {
    return this.errorCode == ErrorCode.notVerifiedError;
  }

  bool get isErrorCodeNoActiveOrderError {
    return this.errorCode == ErrorCode.noActiveOrderError;
  }

  bool get isErrorCodeOrderLimitError {
    return this.errorCode == ErrorCode.orderLimitError;
  }

  bool get isErrorCodeOrderModificationError {
    return this.errorCode == ErrorCode.orderModificationError;
  }

  bool get isErrorCodeOrderPaymentStateError {
    return this.errorCode == ErrorCode.orderPaymentStateError;
  }

  bool get isErrorCodeOrderStateTransitionError {
    return this.errorCode == ErrorCode.orderStateTransitionError;
  }

  bool get isErrorCodePasswordAlreadySetError {
    return this.errorCode == ErrorCode.passwordAlreadySetError;
  }

  bool get isErrorCodePasswordResetTokenExpiredError {
    return this.errorCode == ErrorCode.passwordResetTokenExpiredError;
  }

  bool get isErrorCodePasswordResetTokenInvalidError {
    return this.errorCode == ErrorCode.passwordResetTokenInvalidError;
  }

  bool get isErrorCodePasswordValidationError {
    return this.errorCode == ErrorCode.passwordValidationError;
  }

  bool get isErrorCodePaymentDeclinedError {
    return this.errorCode == ErrorCode.paymentDeclinedError;
  }

  bool get isErrorCodePaymentFailedError {
    return this.errorCode == ErrorCode.paymentFailedError;
  }

  bool get isErrorCodeUnknownError {
    return this.errorCode == ErrorCode.unknownError;
  }

  bool get isErrorCodeVerificationTokenExpiredError {
    return this.errorCode == ErrorCode.verificationTokenExpiredError;
  }

  bool get isErrorCodeVerificationTokenInvalidError {
    return this.errorCode == ErrorCode.verificationTokenInvalidError;
  }

  bool get hasFromState {
    return this.fromState.isNotEmpty;
  }

  bool get noFromState {
    return this.fromState.isEmpty;
  }

  bool get hasMessage {
    return this.message.isNotEmpty;
  }

  bool get noMessage {
    return this.message.isEmpty;
  }

  bool get hasToState {
    return this.toState.isNotEmpty;
  }

  bool get noToState {
    return this.toState.isEmpty;
  }

  bool get hasTransitionError {
    return this.transitionError.isNotEmpty;
  }

  bool get noTransitionError {
    return this.transitionError.isEmpty;
  }
}

extension OrderStateTransitionErrorSerialization on OrderStateTransitionError {
  Map<String, dynamic> toJson() {
    return _$OrderStateTransitionErrorToJson(this);
  }
}

enum OrderStateTransitionError$ {
  errorCode,
  fromState,
  message,
  toState,
  transitionError,
}

class OrderStateTransitionErrorPatch
    extends PatchBase<OrderStateTransitionError, OrderStateTransitionError$> {
  OrderStateTransitionError applyTo(OrderStateTransitionError entity) {
    return entity.patchWithOrderStateTransitionError(this);
  }

  OrderStateTransitionErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[OrderStateTransitionError$.errorCode] = value;
    return this;
  }

  OrderStateTransitionErrorPatch withFromState(String? value) {
    patchMap[OrderStateTransitionError$.fromState] = value;
    return this;
  }

  OrderStateTransitionErrorPatch withMessage(String? value) {
    patchMap[OrderStateTransitionError$.message] = value;
    return this;
  }

  OrderStateTransitionErrorPatch withToState(String? value) {
    patchMap[OrderStateTransitionError$.toState] = value;
    return this;
  }

  OrderStateTransitionErrorPatch withTransitionError(String? value) {
    patchMap[OrderStateTransitionError$.transitionError] = value;
    return this;
  }
}

/// Field descriptors for [OrderStateTransitionError] query construction
abstract final class OrderStateTransitionErrorFields {
  static const errorCode = Field<OrderStateTransitionError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const fromState = Field<OrderStateTransitionError, String>(
    'fromState',
    _$fromState,
  );

  static const message = Field<OrderStateTransitionError, String>(
    'message',
    _$message,
  );

  static const toState = Field<OrderStateTransitionError, String>(
    'toState',
    _$toState,
  );

  static const transitionError = Field<OrderStateTransitionError, String>(
    'transitionError',
    _$transitionError,
  );

  static ErrorCode _$errorCode(OrderStateTransitionError e) {
    return e.errorCode;
  }

  static String _$fromState(OrderStateTransitionError e) {
    return e.fromState;
  }

  static String _$message(OrderStateTransitionError e) {
    return e.message;
  }

  static String _$toState(OrderStateTransitionError e) {
    return e.toState;
  }

  static String _$transitionError(OrderStateTransitionError e) {
    return e.transitionError;
  }
}

extension OrderStateTransitionErrorCompareE on OrderStateTransitionError {
  Map<String, dynamic> compareToOrderStateTransitionError(
    OrderStateTransitionError other,
  ) {
    final Map<String, dynamic> diff = {};

    if (errorCode != other.errorCode) {
      diff['errorCode'] = () => other.errorCode;
    }

    if (fromState != other.fromState) {
      diff['fromState'] = () => other.fromState;
    }

    if (message != other.message) {
      diff['message'] = () => other.message;
    }

    if (toState != other.toState) {
      diff['toState'] = () => other.toState;
    }

    if (transitionError != other.transitionError) {
      diff['transitionError'] = () => other.transitionError;
    }
    return diff;
  }
}
