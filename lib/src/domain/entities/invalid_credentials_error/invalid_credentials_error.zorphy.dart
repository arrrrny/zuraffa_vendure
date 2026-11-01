// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'invalid_credentials_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class InvalidCredentialsError {
  InvalidCredentialsError({
    required String this.authenticationError,
    required ErrorCode this.errorCode,
    required String this.message,
  });

  factory InvalidCredentialsError.fromJson(Map<String, dynamic> json) =>
      _$InvalidCredentialsErrorFromJson(json);

  final String authenticationError;

  final ErrorCode errorCode;

  final String message;

  InvalidCredentialsError copyWith({
    String? authenticationError,
    ErrorCode? errorCode,
    String? message,
  }) {
    return InvalidCredentialsError(
      authenticationError: authenticationError ?? this.authenticationError,
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  InvalidCredentialsError copyWithField<T>(
    Field<InvalidCredentialsError, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'authenticationError':
        return copyWith(authenticationError: value as String);
      case 'errorCode':
        return copyWith(errorCode: value as ErrorCode);
      case 'message':
        return copyWith(message: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'InvalidCredentialsError has no settable field with this name',
        );
    }
  }

  InvalidCredentialsError copyWithInvalidCredentialsError({
    String? authenticationError,
    ErrorCode? errorCode,
    String? message,
  }) {
    return copyWith(
      authenticationError: authenticationError,
      errorCode: errorCode,
      message: message,
    );
  }

  InvalidCredentialsError patchWithInvalidCredentialsError([
    InvalidCredentialsErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? InvalidCredentialsErrorPatch();
    final _patchMap = _patcher.patchMap;
    return InvalidCredentialsError(
      authenticationError:
          _patchMap.containsKey(InvalidCredentialsError$.authenticationError)
          ? ((_patchMap[InvalidCredentialsError$.authenticationError]
                        is Function)
                    ? _patchMap[InvalidCredentialsError$.authenticationError](
                        this.authenticationError,
                      )
                    : (_patchMap[InvalidCredentialsError$.authenticationError]
                          is Patch)
                    ? _patchMap[InvalidCredentialsError$.authenticationError]
                          .applyTo(this.authenticationError)
                    : _patchMap[InvalidCredentialsError$.authenticationError])
                as String
          : this.authenticationError,
      errorCode: _patchMap.containsKey(InvalidCredentialsError$.errorCode)
          ? ((_patchMap[InvalidCredentialsError$.errorCode] is Function)
                    ? _patchMap[InvalidCredentialsError$.errorCode](
                        this.errorCode,
                      )
                    : (_patchMap[InvalidCredentialsError$.errorCode] is Patch)
                    ? _patchMap[InvalidCredentialsError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[InvalidCredentialsError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(InvalidCredentialsError$.message)
          ? ((_patchMap[InvalidCredentialsError$.message] is Function)
                    ? _patchMap[InvalidCredentialsError$.message](this.message)
                    : (_patchMap[InvalidCredentialsError$.message] is Patch)
                    ? _patchMap[InvalidCredentialsError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[InvalidCredentialsError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is InvalidCredentialsError &&
        authenticationError == other.authenticationError &&
        errorCode == other.errorCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(this.authenticationError, this.errorCode, this.message);
  }

  @override
  String toString() {
    return 'InvalidCredentialsError(' +
        'authenticationError: ${authenticationError}' +
        ', ' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$InvalidCredentialsErrorToJson(this);
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

extension InvalidCredentialsErrorPropertyHelpers on InvalidCredentialsError {
  bool get hasAuthenticationError {
    return this.authenticationError.isNotEmpty;
  }

  bool get noAuthenticationError {
    return this.authenticationError.isEmpty;
  }

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
}

extension InvalidCredentialsErrorSerialization on InvalidCredentialsError {
  Map<String, dynamic> toJson() {
    return _$InvalidCredentialsErrorToJson(this);
  }
}

enum InvalidCredentialsError$ { authenticationError, errorCode, message }

class InvalidCredentialsErrorPatch
    extends PatchBase<InvalidCredentialsError, InvalidCredentialsError$> {
  InvalidCredentialsError applyTo(InvalidCredentialsError entity) {
    return entity.patchWithInvalidCredentialsError(this);
  }

  InvalidCredentialsErrorPatch withAuthenticationError(String? value) {
    patchMap[InvalidCredentialsError$.authenticationError] = value;
    return this;
  }

  InvalidCredentialsErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[InvalidCredentialsError$.errorCode] = value;
    return this;
  }

  InvalidCredentialsErrorPatch withMessage(String? value) {
    patchMap[InvalidCredentialsError$.message] = value;
    return this;
  }
}

/// Field descriptors for [InvalidCredentialsError] query construction
abstract final class InvalidCredentialsErrorFields {
  static const authenticationError = Field<InvalidCredentialsError, String>(
    'authenticationError',
    _$authenticationError,
  );

  static const errorCode = Field<InvalidCredentialsError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<InvalidCredentialsError, String>(
    'message',
    _$message,
  );

  static String _$authenticationError(InvalidCredentialsError e) {
    return e.authenticationError;
  }

  static ErrorCode _$errorCode(InvalidCredentialsError e) {
    return e.errorCode;
  }

  static String _$message(InvalidCredentialsError e) {
    return e.message;
  }
}

extension InvalidCredentialsErrorCompareE on InvalidCredentialsError {
  Map<String, dynamic> compareToInvalidCredentialsError(
    InvalidCredentialsError other,
  ) {
    final Map<String, dynamic> diff = {};

    if (authenticationError != other.authenticationError) {
      diff['authenticationError'] = () => other.authenticationError;
    }

    if (errorCode != other.errorCode) {
      diff['errorCode'] = () => other.errorCode;
    }

    if (message != other.message) {
      diff['message'] = () => other.message;
    }
    return diff;
  }
}
