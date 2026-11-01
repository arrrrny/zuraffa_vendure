// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'password_reset_token_expired_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class PasswordResetTokenExpiredError {
  PasswordResetTokenExpiredError({
    required ErrorCode this.errorCode,
    required String this.message,
  });

  factory PasswordResetTokenExpiredError.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetTokenExpiredErrorFromJson(json);

  final ErrorCode errorCode;

  final String message;

  PasswordResetTokenExpiredError copyWith({
    ErrorCode? errorCode,
    String? message,
  }) {
    return PasswordResetTokenExpiredError(
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  PasswordResetTokenExpiredError copyWithField<T>(
    Field<PasswordResetTokenExpiredError, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'errorCode':
        return copyWith(errorCode: value as ErrorCode);
      case 'message':
        return copyWith(message: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'PasswordResetTokenExpiredError has no settable field with this name',
        );
    }
  }

  PasswordResetTokenExpiredError copyWithPasswordResetTokenExpiredError({
    ErrorCode? errorCode,
    String? message,
  }) {
    return copyWith(errorCode: errorCode, message: message);
  }

  PasswordResetTokenExpiredError patchWithPasswordResetTokenExpiredError([
    PasswordResetTokenExpiredErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? PasswordResetTokenExpiredErrorPatch();
    final _patchMap = _patcher.patchMap;
    return PasswordResetTokenExpiredError(
      errorCode:
          _patchMap.containsKey(PasswordResetTokenExpiredError$.errorCode)
          ? ((_patchMap[PasswordResetTokenExpiredError$.errorCode] is Function)
                    ? _patchMap[PasswordResetTokenExpiredError$.errorCode](
                        this.errorCode,
                      )
                    : (_patchMap[PasswordResetTokenExpiredError$.errorCode]
                          is Patch)
                    ? _patchMap[PasswordResetTokenExpiredError$.errorCode]
                          .applyTo(this.errorCode)
                    : _patchMap[PasswordResetTokenExpiredError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(PasswordResetTokenExpiredError$.message)
          ? ((_patchMap[PasswordResetTokenExpiredError$.message] is Function)
                    ? _patchMap[PasswordResetTokenExpiredError$.message](
                        this.message,
                      )
                    : (_patchMap[PasswordResetTokenExpiredError$.message]
                          is Patch)
                    ? _patchMap[PasswordResetTokenExpiredError$.message]
                          .applyTo(this.message)
                    : _patchMap[PasswordResetTokenExpiredError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PasswordResetTokenExpiredError &&
        errorCode == other.errorCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(this.errorCode, this.message);
  }

  @override
  String toString() {
    return 'PasswordResetTokenExpiredError(' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$PasswordResetTokenExpiredErrorToJson(
      this,
    );
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

extension PasswordResetTokenExpiredErrorPropertyHelpers
    on PasswordResetTokenExpiredError {
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

extension PasswordResetTokenExpiredErrorSerialization
    on PasswordResetTokenExpiredError {
  Map<String, dynamic> toJson() {
    return _$PasswordResetTokenExpiredErrorToJson(this);
  }
}

enum PasswordResetTokenExpiredError$ { errorCode, message }

class PasswordResetTokenExpiredErrorPatch
    extends
        PatchBase<
          PasswordResetTokenExpiredError,
          PasswordResetTokenExpiredError$
        > {
  PasswordResetTokenExpiredError applyTo(
    PasswordResetTokenExpiredError entity,
  ) {
    return entity.patchWithPasswordResetTokenExpiredError(this);
  }

  PasswordResetTokenExpiredErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[PasswordResetTokenExpiredError$.errorCode] = value;
    return this;
  }

  PasswordResetTokenExpiredErrorPatch withMessage(String? value) {
    patchMap[PasswordResetTokenExpiredError$.message] = value;
    return this;
  }
}

/// Field descriptors for [PasswordResetTokenExpiredError] query construction
abstract final class PasswordResetTokenExpiredErrorFields {
  static const errorCode = Field<PasswordResetTokenExpiredError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<PasswordResetTokenExpiredError, String>(
    'message',
    _$message,
  );

  static ErrorCode _$errorCode(PasswordResetTokenExpiredError e) {
    return e.errorCode;
  }

  static String _$message(PasswordResetTokenExpiredError e) {
    return e.message;
  }
}

extension PasswordResetTokenExpiredErrorCompareE
    on PasswordResetTokenExpiredError {
  Map<String, dynamic> compareToPasswordResetTokenExpiredError(
    PasswordResetTokenExpiredError other,
  ) {
    final Map<String, dynamic> diff = {};

    if (errorCode != other.errorCode) {
      diff['errorCode'] = () => other.errorCode;
    }

    if (message != other.message) {
      diff['message'] = () => other.message;
    }
    return diff;
  }
}
