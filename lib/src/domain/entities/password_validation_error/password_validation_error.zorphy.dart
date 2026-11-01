// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'password_validation_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class PasswordValidationError {
  PasswordValidationError({
    required ErrorCode this.errorCode,
    required String this.message,
    required String this.validationErrorMessage,
  });

  factory PasswordValidationError.fromJson(Map<String, dynamic> json) =>
      _$PasswordValidationErrorFromJson(json);

  final ErrorCode errorCode;

  final String message;

  final String validationErrorMessage;

  PasswordValidationError copyWith({
    ErrorCode? errorCode,
    String? message,
    String? validationErrorMessage,
  }) {
    return PasswordValidationError(
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
      validationErrorMessage:
          validationErrorMessage ?? this.validationErrorMessage,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  PasswordValidationError copyWithField<T>(
    Field<PasswordValidationError, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'errorCode':
        return copyWith(errorCode: value as ErrorCode);
      case 'message':
        return copyWith(message: value as String);
      case 'validationErrorMessage':
        return copyWith(validationErrorMessage: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'PasswordValidationError has no settable field with this name',
        );
    }
  }

  PasswordValidationError copyWithPasswordValidationError({
    ErrorCode? errorCode,
    String? message,
    String? validationErrorMessage,
  }) {
    return copyWith(
      errorCode: errorCode,
      message: message,
      validationErrorMessage: validationErrorMessage,
    );
  }

  PasswordValidationError patchWithPasswordValidationError([
    PasswordValidationErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? PasswordValidationErrorPatch();
    final _patchMap = _patcher.patchMap;
    return PasswordValidationError(
      errorCode: _patchMap.containsKey(PasswordValidationError$.errorCode)
          ? ((_patchMap[PasswordValidationError$.errorCode] is Function)
                    ? _patchMap[PasswordValidationError$.errorCode](
                        this.errorCode,
                      )
                    : (_patchMap[PasswordValidationError$.errorCode] is Patch)
                    ? _patchMap[PasswordValidationError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[PasswordValidationError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(PasswordValidationError$.message)
          ? ((_patchMap[PasswordValidationError$.message] is Function)
                    ? _patchMap[PasswordValidationError$.message](this.message)
                    : (_patchMap[PasswordValidationError$.message] is Patch)
                    ? _patchMap[PasswordValidationError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[PasswordValidationError$.message])
                as String
          : this.message,
      validationErrorMessage:
          _patchMap.containsKey(PasswordValidationError$.validationErrorMessage)
          ? ((_patchMap[PasswordValidationError$.validationErrorMessage]
                        is Function)
                    ? _patchMap[PasswordValidationError$
                          .validationErrorMessage](this.validationErrorMessage)
                    : (_patchMap[PasswordValidationError$
                              .validationErrorMessage]
                          is Patch)
                    ? _patchMap[PasswordValidationError$.validationErrorMessage]
                          .applyTo(this.validationErrorMessage)
                    : _patchMap[PasswordValidationError$
                          .validationErrorMessage])
                as String
          : this.validationErrorMessage,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PasswordValidationError &&
        errorCode == other.errorCode &&
        message == other.message &&
        validationErrorMessage == other.validationErrorMessage;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.errorCode,
      this.message,
      this.validationErrorMessage,
    );
  }

  @override
  String toString() {
    return 'PasswordValidationError(' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message}' +
        ', ' +
        'validationErrorMessage: ${validationErrorMessage})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$PasswordValidationErrorToJson(this);
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

extension PasswordValidationErrorPropertyHelpers on PasswordValidationError {
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

  bool get hasValidationErrorMessage {
    return this.validationErrorMessage.isNotEmpty;
  }

  bool get noValidationErrorMessage {
    return this.validationErrorMessage.isEmpty;
  }
}

extension PasswordValidationErrorSerialization on PasswordValidationError {
  Map<String, dynamic> toJson() {
    return _$PasswordValidationErrorToJson(this);
  }
}

enum PasswordValidationError$ { errorCode, message, validationErrorMessage }

class PasswordValidationErrorPatch
    extends PatchBase<PasswordValidationError, PasswordValidationError$> {
  PasswordValidationError applyTo(PasswordValidationError entity) {
    return entity.patchWithPasswordValidationError(this);
  }

  PasswordValidationErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[PasswordValidationError$.errorCode] = value;
    return this;
  }

  PasswordValidationErrorPatch withMessage(String? value) {
    patchMap[PasswordValidationError$.message] = value;
    return this;
  }

  PasswordValidationErrorPatch withValidationErrorMessage(String? value) {
    patchMap[PasswordValidationError$.validationErrorMessage] = value;
    return this;
  }
}

/// Field descriptors for [PasswordValidationError] query construction
abstract final class PasswordValidationErrorFields {
  static const errorCode = Field<PasswordValidationError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<PasswordValidationError, String>(
    'message',
    _$message,
  );

  static const validationErrorMessage = Field<PasswordValidationError, String>(
    'validationErrorMessage',
    _$validationErrorMessage,
  );

  static ErrorCode _$errorCode(PasswordValidationError e) {
    return e.errorCode;
  }

  static String _$message(PasswordValidationError e) {
    return e.message;
  }

  static String _$validationErrorMessage(PasswordValidationError e) {
    return e.validationErrorMessage;
  }
}

extension PasswordValidationErrorCompareE on PasswordValidationError {
  Map<String, dynamic> compareToPasswordValidationError(
    PasswordValidationError other,
  ) {
    final Map<String, dynamic> diff = {};

    if (errorCode != other.errorCode) {
      diff['errorCode'] = () => other.errorCode;
    }

    if (message != other.message) {
      diff['message'] = () => other.message;
    }

    if (validationErrorMessage != other.validationErrorMessage) {
      diff['validationErrorMessage'] = () => other.validationErrorMessage;
    }
    return diff;
  }
}
