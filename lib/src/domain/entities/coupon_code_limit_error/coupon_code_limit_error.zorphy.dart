// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'coupon_code_limit_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class CouponCodeLimitError {
  CouponCodeLimitError({
    required String this.couponCode,
    required ErrorCode this.errorCode,
    required int this.limit,
    required String this.message,
  });

  factory CouponCodeLimitError.fromJson(Map<String, dynamic> json) =>
      _$CouponCodeLimitErrorFromJson(json);

  final String couponCode;

  final ErrorCode errorCode;

  final int limit;

  final String message;

  CouponCodeLimitError copyWith({
    String? couponCode,
    ErrorCode? errorCode,
    int? limit,
    String? message,
  }) {
    return CouponCodeLimitError(
      couponCode: couponCode ?? this.couponCode,
      errorCode: errorCode ?? this.errorCode,
      limit: limit ?? this.limit,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  CouponCodeLimitError copyWithField<T>(
    Field<CouponCodeLimitError, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'couponCode':
        return copyWith(couponCode: value as String);
      case 'errorCode':
        return copyWith(errorCode: value as ErrorCode);
      case 'limit':
        return copyWith(limit: value as int);
      case 'message':
        return copyWith(message: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'CouponCodeLimitError has no settable field with this name',
        );
    }
  }

  CouponCodeLimitError copyWithCouponCodeLimitError({
    String? couponCode,
    ErrorCode? errorCode,
    int? limit,
    String? message,
  }) {
    return copyWith(
      couponCode: couponCode,
      errorCode: errorCode,
      limit: limit,
      message: message,
    );
  }

  CouponCodeLimitError patchWithCouponCodeLimitError([
    CouponCodeLimitErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? CouponCodeLimitErrorPatch();
    final _patchMap = _patcher.patchMap;
    return CouponCodeLimitError(
      couponCode: _patchMap.containsKey(CouponCodeLimitError$.couponCode)
          ? ((_patchMap[CouponCodeLimitError$.couponCode] is Function)
                    ? _patchMap[CouponCodeLimitError$.couponCode](
                        this.couponCode,
                      )
                    : (_patchMap[CouponCodeLimitError$.couponCode] is Patch)
                    ? _patchMap[CouponCodeLimitError$.couponCode].applyTo(
                        this.couponCode,
                      )
                    : _patchMap[CouponCodeLimitError$.couponCode])
                as String
          : this.couponCode,
      errorCode: _patchMap.containsKey(CouponCodeLimitError$.errorCode)
          ? ((_patchMap[CouponCodeLimitError$.errorCode] is Function)
                    ? _patchMap[CouponCodeLimitError$.errorCode](this.errorCode)
                    : (_patchMap[CouponCodeLimitError$.errorCode] is Patch)
                    ? _patchMap[CouponCodeLimitError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[CouponCodeLimitError$.errorCode])
                as ErrorCode
          : this.errorCode,
      limit: _patchMap.containsKey(CouponCodeLimitError$.limit)
          ? ((_patchMap[CouponCodeLimitError$.limit] is Function)
                    ? _patchMap[CouponCodeLimitError$.limit](this.limit)
                    : (_patchMap[CouponCodeLimitError$.limit] is Patch)
                    ? _patchMap[CouponCodeLimitError$.limit].applyTo(this.limit)
                    : _patchMap[CouponCodeLimitError$.limit])
                as int
          : this.limit,
      message: _patchMap.containsKey(CouponCodeLimitError$.message)
          ? ((_patchMap[CouponCodeLimitError$.message] is Function)
                    ? _patchMap[CouponCodeLimitError$.message](this.message)
                    : (_patchMap[CouponCodeLimitError$.message] is Patch)
                    ? _patchMap[CouponCodeLimitError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[CouponCodeLimitError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CouponCodeLimitError &&
        couponCode == other.couponCode &&
        errorCode == other.errorCode &&
        limit == other.limit &&
        message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.couponCode,
      this.errorCode,
      this.limit,
      this.message,
    );
  }

  @override
  String toString() {
    return 'CouponCodeLimitError(' +
        'couponCode: ${couponCode}' +
        ', ' +
        'errorCode: ${errorCode}' +
        ', ' +
        'limit: ${limit}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$CouponCodeLimitErrorToJson(this);
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

extension CouponCodeLimitErrorPropertyHelpers on CouponCodeLimitError {
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

extension CouponCodeLimitErrorSerialization on CouponCodeLimitError {
  Map<String, dynamic> toJson() {
    return _$CouponCodeLimitErrorToJson(this);
  }
}

enum CouponCodeLimitError$ { couponCode, errorCode, limit, message }

class CouponCodeLimitErrorPatch
    extends PatchBase<CouponCodeLimitError, CouponCodeLimitError$> {
  CouponCodeLimitError applyTo(CouponCodeLimitError entity) {
    return entity.patchWithCouponCodeLimitError(this);
  }

  CouponCodeLimitErrorPatch withCouponCode(String? value) {
    patchMap[CouponCodeLimitError$.couponCode] = value;
    return this;
  }

  CouponCodeLimitErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[CouponCodeLimitError$.errorCode] = value;
    return this;
  }

  CouponCodeLimitErrorPatch withLimit(int? value) {
    patchMap[CouponCodeLimitError$.limit] = value;
    return this;
  }

  CouponCodeLimitErrorPatch withMessage(String? value) {
    patchMap[CouponCodeLimitError$.message] = value;
    return this;
  }
}

/// Field descriptors for [CouponCodeLimitError] query construction
abstract final class CouponCodeLimitErrorFields {
  static const couponCode = Field<CouponCodeLimitError, String>(
    'couponCode',
    _$couponCode,
  );

  static const errorCode = Field<CouponCodeLimitError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const limit = Field<CouponCodeLimitError, int>('limit', _$limit);

  static const message = Field<CouponCodeLimitError, String>(
    'message',
    _$message,
  );

  static String _$couponCode(CouponCodeLimitError e) {
    return e.couponCode;
  }

  static ErrorCode _$errorCode(CouponCodeLimitError e) {
    return e.errorCode;
  }

  static int _$limit(CouponCodeLimitError e) {
    return e.limit;
  }

  static String _$message(CouponCodeLimitError e) {
    return e.message;
  }
}

extension CouponCodeLimitErrorCompareE on CouponCodeLimitError {
  Map<String, dynamic> compareToCouponCodeLimitError(
    CouponCodeLimitError other,
  ) {
    final Map<String, dynamic> diff = {};

    if (couponCode != other.couponCode) {
      diff['couponCode'] = () => other.couponCode;
    }

    if (errorCode != other.errorCode) {
      diff['errorCode'] = () => other.errorCode;
    }

    if (limit != other.limit) {
      diff['limit'] = () => other.limit;
    }

    if (message != other.message) {
      diff['message'] = () => other.message;
    }
    return diff;
  }
}
