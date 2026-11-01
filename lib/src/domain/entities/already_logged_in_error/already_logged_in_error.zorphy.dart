// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'already_logged_in_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class AlreadyLoggedInError {
  AlreadyLoggedInError({
    required ErrorCode this.errorCode,
    required String this.message,
  });

  factory AlreadyLoggedInError.fromJson(Map<String, dynamic> json) =>
      _$AlreadyLoggedInErrorFromJson(json);

  final ErrorCode errorCode;

  final String message;

  AlreadyLoggedInError copyWith({ErrorCode? errorCode, String? message}) {
    return AlreadyLoggedInError(
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  AlreadyLoggedInError copyWithField<T>(
    Field<AlreadyLoggedInError, T> field,
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
          'AlreadyLoggedInError has no settable field with this name',
        );
    }
  }

  AlreadyLoggedInError copyWithAlreadyLoggedInError({
    ErrorCode? errorCode,
    String? message,
  }) {
    return copyWith(errorCode: errorCode, message: message);
  }

  AlreadyLoggedInError patchWithAlreadyLoggedInError([
    AlreadyLoggedInErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? AlreadyLoggedInErrorPatch();
    final _patchMap = _patcher.patchMap;
    return AlreadyLoggedInError(
      errorCode: _patchMap.containsKey(AlreadyLoggedInError$.errorCode)
          ? ((_patchMap[AlreadyLoggedInError$.errorCode] is Function)
                    ? _patchMap[AlreadyLoggedInError$.errorCode](this.errorCode)
                    : (_patchMap[AlreadyLoggedInError$.errorCode] is Patch)
                    ? _patchMap[AlreadyLoggedInError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[AlreadyLoggedInError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(AlreadyLoggedInError$.message)
          ? ((_patchMap[AlreadyLoggedInError$.message] is Function)
                    ? _patchMap[AlreadyLoggedInError$.message](this.message)
                    : (_patchMap[AlreadyLoggedInError$.message] is Patch)
                    ? _patchMap[AlreadyLoggedInError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[AlreadyLoggedInError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AlreadyLoggedInError &&
        errorCode == other.errorCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(this.errorCode, this.message);
  }

  @override
  String toString() {
    return 'AlreadyLoggedInError(' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$AlreadyLoggedInErrorToJson(this);
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

extension AlreadyLoggedInErrorPropertyHelpers on AlreadyLoggedInError {
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

extension AlreadyLoggedInErrorSerialization on AlreadyLoggedInError {
  Map<String, dynamic> toJson() {
    return _$AlreadyLoggedInErrorToJson(this);
  }
}

enum AlreadyLoggedInError$ { errorCode, message }

class AlreadyLoggedInErrorPatch
    extends PatchBase<AlreadyLoggedInError, AlreadyLoggedInError$> {
  AlreadyLoggedInError applyTo(AlreadyLoggedInError entity) {
    return entity.patchWithAlreadyLoggedInError(this);
  }

  AlreadyLoggedInErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[AlreadyLoggedInError$.errorCode] = value;
    return this;
  }

  AlreadyLoggedInErrorPatch withMessage(String? value) {
    patchMap[AlreadyLoggedInError$.message] = value;
    return this;
  }
}

/// Field descriptors for [AlreadyLoggedInError] query construction
abstract final class AlreadyLoggedInErrorFields {
  static const errorCode = Field<AlreadyLoggedInError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<AlreadyLoggedInError, String>(
    'message',
    _$message,
  );

  static ErrorCode _$errorCode(AlreadyLoggedInError e) {
    return e.errorCode;
  }

  static String _$message(AlreadyLoggedInError e) {
    return e.message;
  }
}

extension AlreadyLoggedInErrorCompareE on AlreadyLoggedInError {
  Map<String, dynamic> compareToAlreadyLoggedInError(
    AlreadyLoggedInError other,
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
