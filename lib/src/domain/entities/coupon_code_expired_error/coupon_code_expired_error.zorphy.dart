// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'coupon_code_expired_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class CouponCodeExpiredError {
  CouponCodeExpiredError({
    required String this.couponCode,
    required ErrorCode this.errorCode,
    required String this.message,
  });

  factory CouponCodeExpiredError.fromJson(Map<String, dynamic> json) =>
      _$CouponCodeExpiredErrorFromJson(json);

  final String couponCode;

  final ErrorCode errorCode;

  final String message;

  CouponCodeExpiredError copyWith({
    String? couponCode,
    ErrorCode? errorCode,
    String? message,
  }) {
    return CouponCodeExpiredError(
      couponCode: couponCode ?? this.couponCode,
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  CouponCodeExpiredError copyWithField<T>(
    Field<CouponCodeExpiredError, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'couponCode':
        return copyWith(couponCode: value as String);
      case 'errorCode':
        return copyWith(errorCode: value as ErrorCode);
      case 'message':
        return copyWith(message: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'CouponCodeExpiredError has no settable field with this name',
        );
    }
  }

  CouponCodeExpiredError copyWithCouponCodeExpiredError({
    String? couponCode,
    ErrorCode? errorCode,
    String? message,
  }) {
    return copyWith(
      couponCode: couponCode,
      errorCode: errorCode,
      message: message,
    );
  }

  CouponCodeExpiredError patchWithCouponCodeExpiredError([
    CouponCodeExpiredErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? CouponCodeExpiredErrorPatch();
    final _patchMap = _patcher.patchMap;
    return CouponCodeExpiredError(
      couponCode: _patchMap.containsKey(CouponCodeExpiredError$.couponCode)
          ? ((_patchMap[CouponCodeExpiredError$.couponCode] is Function)
                    ? _patchMap[CouponCodeExpiredError$.couponCode](
                        this.couponCode,
                      )
                    : (_patchMap[CouponCodeExpiredError$.couponCode] is Patch)
                    ? _patchMap[CouponCodeExpiredError$.couponCode].applyTo(
                        this.couponCode,
                      )
                    : _patchMap[CouponCodeExpiredError$.couponCode])
                as String
          : this.couponCode,
      errorCode: _patchMap.containsKey(CouponCodeExpiredError$.errorCode)
          ? ((_patchMap[CouponCodeExpiredError$.errorCode] is Function)
                    ? _patchMap[CouponCodeExpiredError$.errorCode](
                        this.errorCode,
                      )
                    : (_patchMap[CouponCodeExpiredError$.errorCode] is Patch)
                    ? _patchMap[CouponCodeExpiredError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[CouponCodeExpiredError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(CouponCodeExpiredError$.message)
          ? ((_patchMap[CouponCodeExpiredError$.message] is Function)
                    ? _patchMap[CouponCodeExpiredError$.message](this.message)
                    : (_patchMap[CouponCodeExpiredError$.message] is Patch)
                    ? _patchMap[CouponCodeExpiredError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[CouponCodeExpiredError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CouponCodeExpiredError &&
        couponCode == other.couponCode &&
        errorCode == other.errorCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(this.couponCode, this.errorCode, this.message);
  }

  @override
  String toString() {
    return 'CouponCodeExpiredError(' +
        'couponCode: ${couponCode}' +
        ', ' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$CouponCodeExpiredErrorToJson(this);
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

extension CouponCodeExpiredErrorPropertyHelpers on CouponCodeExpiredError {
  bool get hasCouponCode {
    return this.couponCode.isNotEmpty;
  }

  bool get noCouponCode {
    return this.couponCode.isEmpty;
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

extension CouponCodeExpiredErrorSerialization on CouponCodeExpiredError {
  Map<String, dynamic> toJson() {
    return _$CouponCodeExpiredErrorToJson(this);
  }
}

enum CouponCodeExpiredError$ { couponCode, errorCode, message }

class CouponCodeExpiredErrorPatch
    extends PatchBase<CouponCodeExpiredError, CouponCodeExpiredError$> {
  CouponCodeExpiredError applyTo(CouponCodeExpiredError entity) {
    return entity.patchWithCouponCodeExpiredError(this);
  }

  CouponCodeExpiredErrorPatch withCouponCode(String? value) {
    patchMap[CouponCodeExpiredError$.couponCode] = value;
    return this;
  }

  CouponCodeExpiredErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[CouponCodeExpiredError$.errorCode] = value;
    return this;
  }

  CouponCodeExpiredErrorPatch withMessage(String? value) {
    patchMap[CouponCodeExpiredError$.message] = value;
    return this;
  }
}

/// Field descriptors for [CouponCodeExpiredError] query construction
abstract final class CouponCodeExpiredErrorFields {
  static const couponCode = Field<CouponCodeExpiredError, String>(
    'couponCode',
    _$couponCode,
  );

  static const errorCode = Field<CouponCodeExpiredError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<CouponCodeExpiredError, String>(
    'message',
    _$message,
  );

  static String _$couponCode(CouponCodeExpiredError e) {
    return e.couponCode;
  }

  static ErrorCode _$errorCode(CouponCodeExpiredError e) {
    return e.errorCode;
  }

  static String _$message(CouponCodeExpiredError e) {
    return e.message;
  }
}

extension CouponCodeExpiredErrorCompareE on CouponCodeExpiredError {
  Map<String, dynamic> compareToCouponCodeExpiredError(
    CouponCodeExpiredError other,
  ) {
    final Map<String, dynamic> diff = {};

    if (couponCode != other.couponCode) {
      diff['couponCode'] = () => other.couponCode;
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
