// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'coupon_code_invalid_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class CouponCodeInvalidError {
  CouponCodeInvalidError({
    required String this.couponCode,
    required ErrorCode this.errorCode,
    required String this.message,
  });

  factory CouponCodeInvalidError.fromJson(Map<String, dynamic> json) =>
      _$CouponCodeInvalidErrorFromJson(json);

  final String couponCode;

  final ErrorCode errorCode;

  final String message;

  CouponCodeInvalidError copyWith({
    String? couponCode,
    ErrorCode? errorCode,
    String? message,
  }) {
    return CouponCodeInvalidError(
      couponCode: couponCode ?? this.couponCode,
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  CouponCodeInvalidError copyWithField<T>(
    Field<CouponCodeInvalidError, T> field,
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
          'CouponCodeInvalidError has no settable field with this name',
        );
    }
  }

  CouponCodeInvalidError copyWithCouponCodeInvalidError({
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

  CouponCodeInvalidError patchWithCouponCodeInvalidError([
    CouponCodeInvalidErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? CouponCodeInvalidErrorPatch();
    final _patchMap = _patcher.patchMap;
    return CouponCodeInvalidError(
      couponCode: _patchMap.containsKey(CouponCodeInvalidError$.couponCode)
          ? ((_patchMap[CouponCodeInvalidError$.couponCode] is Function)
                    ? _patchMap[CouponCodeInvalidError$.couponCode](
                        this.couponCode,
                      )
                    : (_patchMap[CouponCodeInvalidError$.couponCode] is Patch)
                    ? _patchMap[CouponCodeInvalidError$.couponCode].applyTo(
                        this.couponCode,
                      )
                    : _patchMap[CouponCodeInvalidError$.couponCode])
                as String
          : this.couponCode,
      errorCode: _patchMap.containsKey(CouponCodeInvalidError$.errorCode)
          ? ((_patchMap[CouponCodeInvalidError$.errorCode] is Function)
                    ? _patchMap[CouponCodeInvalidError$.errorCode](
                        this.errorCode,
                      )
                    : (_patchMap[CouponCodeInvalidError$.errorCode] is Patch)
                    ? _patchMap[CouponCodeInvalidError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[CouponCodeInvalidError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(CouponCodeInvalidError$.message)
          ? ((_patchMap[CouponCodeInvalidError$.message] is Function)
                    ? _patchMap[CouponCodeInvalidError$.message](this.message)
                    : (_patchMap[CouponCodeInvalidError$.message] is Patch)
                    ? _patchMap[CouponCodeInvalidError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[CouponCodeInvalidError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CouponCodeInvalidError &&
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
    return 'CouponCodeInvalidError(' +
        'couponCode: ${couponCode}' +
        ', ' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$CouponCodeInvalidErrorToJson(this);
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

extension CouponCodeInvalidErrorPropertyHelpers on CouponCodeInvalidError {
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

extension CouponCodeInvalidErrorSerialization on CouponCodeInvalidError {
  Map<String, dynamic> toJson() {
    return _$CouponCodeInvalidErrorToJson(this);
  }
}

enum CouponCodeInvalidError$ { couponCode, errorCode, message }

class CouponCodeInvalidErrorPatch
    extends PatchBase<CouponCodeInvalidError, CouponCodeInvalidError$> {
  CouponCodeInvalidError applyTo(CouponCodeInvalidError entity) {
    return entity.patchWithCouponCodeInvalidError(this);
  }

  CouponCodeInvalidErrorPatch withCouponCode(String? value) {
    patchMap[CouponCodeInvalidError$.couponCode] = value;
    return this;
  }

  CouponCodeInvalidErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[CouponCodeInvalidError$.errorCode] = value;
    return this;
  }

  CouponCodeInvalidErrorPatch withMessage(String? value) {
    patchMap[CouponCodeInvalidError$.message] = value;
    return this;
  }
}

/// Field descriptors for [CouponCodeInvalidError] query construction
abstract final class CouponCodeInvalidErrorFields {
  static const couponCode = Field<CouponCodeInvalidError, String>(
    'couponCode',
    _$couponCode,
  );

  static const errorCode = Field<CouponCodeInvalidError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<CouponCodeInvalidError, String>(
    'message',
    _$message,
  );

  static String _$couponCode(CouponCodeInvalidError e) {
    return e.couponCode;
  }

  static ErrorCode _$errorCode(CouponCodeInvalidError e) {
    return e.errorCode;
  }

  static String _$message(CouponCodeInvalidError e) {
    return e.message;
  }
}

extension CouponCodeInvalidErrorCompareE on CouponCodeInvalidError {
  Map<String, dynamic> compareToCouponCodeInvalidError(
    CouponCodeInvalidError other,
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
