// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'payment_declined_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class PaymentDeclinedError {
  PaymentDeclinedError({
    required ErrorCode this.errorCode,
    required String this.message,
    required String this.paymentErrorMessage,
  });

  factory PaymentDeclinedError.fromJson(Map<String, dynamic> json) =>
      _$PaymentDeclinedErrorFromJson(json);

  final ErrorCode errorCode;

  final String message;

  final String paymentErrorMessage;

  PaymentDeclinedError copyWith({
    ErrorCode? errorCode,
    String? message,
    String? paymentErrorMessage,
  }) {
    return PaymentDeclinedError(
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
      paymentErrorMessage: paymentErrorMessage ?? this.paymentErrorMessage,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  PaymentDeclinedError copyWithField<T>(
    Field<PaymentDeclinedError, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'errorCode':
        return copyWith(errorCode: value as ErrorCode);
      case 'message':
        return copyWith(message: value as String);
      case 'paymentErrorMessage':
        return copyWith(paymentErrorMessage: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'PaymentDeclinedError has no settable field with this name',
        );
    }
  }

  PaymentDeclinedError copyWithPaymentDeclinedError({
    ErrorCode? errorCode,
    String? message,
    String? paymentErrorMessage,
  }) {
    return copyWith(
      errorCode: errorCode,
      message: message,
      paymentErrorMessage: paymentErrorMessage,
    );
  }

  PaymentDeclinedError patchWithPaymentDeclinedError([
    PaymentDeclinedErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? PaymentDeclinedErrorPatch();
    final _patchMap = _patcher.patchMap;
    return PaymentDeclinedError(
      errorCode: _patchMap.containsKey(PaymentDeclinedError$.errorCode)
          ? ((_patchMap[PaymentDeclinedError$.errorCode] is Function)
                    ? _patchMap[PaymentDeclinedError$.errorCode](this.errorCode)
                    : (_patchMap[PaymentDeclinedError$.errorCode] is Patch)
                    ? _patchMap[PaymentDeclinedError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[PaymentDeclinedError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(PaymentDeclinedError$.message)
          ? ((_patchMap[PaymentDeclinedError$.message] is Function)
                    ? _patchMap[PaymentDeclinedError$.message](this.message)
                    : (_patchMap[PaymentDeclinedError$.message] is Patch)
                    ? _patchMap[PaymentDeclinedError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[PaymentDeclinedError$.message])
                as String
          : this.message,
      paymentErrorMessage:
          _patchMap.containsKey(PaymentDeclinedError$.paymentErrorMessage)
          ? ((_patchMap[PaymentDeclinedError$.paymentErrorMessage] is Function)
                    ? _patchMap[PaymentDeclinedError$.paymentErrorMessage](
                        this.paymentErrorMessage,
                      )
                    : (_patchMap[PaymentDeclinedError$.paymentErrorMessage]
                          is Patch)
                    ? _patchMap[PaymentDeclinedError$.paymentErrorMessage]
                          .applyTo(this.paymentErrorMessage)
                    : _patchMap[PaymentDeclinedError$.paymentErrorMessage])
                as String
          : this.paymentErrorMessage,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PaymentDeclinedError &&
        errorCode == other.errorCode &&
        message == other.message &&
        paymentErrorMessage == other.paymentErrorMessage;
  }

  @override
  int get hashCode {
    return Object.hash(this.errorCode, this.message, this.paymentErrorMessage);
  }

  @override
  String toString() {
    return 'PaymentDeclinedError(' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message}' +
        ', ' +
        'paymentErrorMessage: ${paymentErrorMessage})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$PaymentDeclinedErrorToJson(this);
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

extension PaymentDeclinedErrorPropertyHelpers on PaymentDeclinedError {
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

  bool get hasMessage {
    return this.message.isNotEmpty;
  }

  bool get noMessage {
    return this.message.isEmpty;
  }

  bool get hasPaymentErrorMessage {
    return this.paymentErrorMessage.isNotEmpty;
  }

  bool get noPaymentErrorMessage {
    return this.paymentErrorMessage.isEmpty;
  }
}

extension PaymentDeclinedErrorSerialization on PaymentDeclinedError {
  Map<String, dynamic> toJson() {
    return _$PaymentDeclinedErrorToJson(this);
  }
}

enum PaymentDeclinedError$ { errorCode, message, paymentErrorMessage }

class PaymentDeclinedErrorPatch
    extends PatchBase<PaymentDeclinedError, PaymentDeclinedError$> {
  PaymentDeclinedError applyTo(PaymentDeclinedError entity) {
    return entity.patchWithPaymentDeclinedError(this);
  }

  PaymentDeclinedErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[PaymentDeclinedError$.errorCode] = value;
    return this;
  }

  PaymentDeclinedErrorPatch withMessage(String? value) {
    patchMap[PaymentDeclinedError$.message] = value;
    return this;
  }

  PaymentDeclinedErrorPatch withPaymentErrorMessage(String? value) {
    patchMap[PaymentDeclinedError$.paymentErrorMessage] = value;
    return this;
  }
}

/// Field descriptors for [PaymentDeclinedError] query construction
abstract final class PaymentDeclinedErrorFields {
  static const errorCode = Field<PaymentDeclinedError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<PaymentDeclinedError, String>(
    'message',
    _$message,
  );

  static const paymentErrorMessage = Field<PaymentDeclinedError, String>(
    'paymentErrorMessage',
    _$paymentErrorMessage,
  );

  static ErrorCode _$errorCode(PaymentDeclinedError e) {
    return e.errorCode;
  }

  static String _$message(PaymentDeclinedError e) {
    return e.message;
  }

  static String _$paymentErrorMessage(PaymentDeclinedError e) {
    return e.paymentErrorMessage;
  }
}

extension PaymentDeclinedErrorCompareE on PaymentDeclinedError {
  Map<String, dynamic> compareToPaymentDeclinedError(
    PaymentDeclinedError other,
  ) {
    final Map<String, dynamic> diff = {};

    if (errorCode != other.errorCode) {
      diff['errorCode'] = () => other.errorCode;
    }

    if (message != other.message) {
      diff['message'] = () => other.message;
    }

    if (paymentErrorMessage != other.paymentErrorMessage) {
      diff['paymentErrorMessage'] = () => other.paymentErrorMessage;
    }
    return diff;
  }
}
