// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'guest_checkout_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class GuestCheckoutError {
  GuestCheckoutError({
    required ErrorCode this.errorCode,
    required String this.errorDetail,
    required String this.message,
  });

  factory GuestCheckoutError.fromJson(Map<String, dynamic> json) =>
      _$GuestCheckoutErrorFromJson(json);

  final ErrorCode errorCode;

  final String errorDetail;

  final String message;

  GuestCheckoutError copyWith({
    ErrorCode? errorCode,
    String? errorDetail,
    String? message,
  }) {
    return GuestCheckoutError(
      errorCode: errorCode ?? this.errorCode,
      errorDetail: errorDetail ?? this.errorDetail,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  GuestCheckoutError copyWithField<T>(
    Field<GuestCheckoutError, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'errorCode':
        return copyWith(errorCode: value as ErrorCode);
      case 'errorDetail':
        return copyWith(errorDetail: value as String);
      case 'message':
        return copyWith(message: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'GuestCheckoutError has no settable field with this name',
        );
    }
  }

  GuestCheckoutError copyWithGuestCheckoutError({
    ErrorCode? errorCode,
    String? errorDetail,
    String? message,
  }) {
    return copyWith(
      errorCode: errorCode,
      errorDetail: errorDetail,
      message: message,
    );
  }

  GuestCheckoutError patchWithGuestCheckoutError([
    GuestCheckoutErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? GuestCheckoutErrorPatch();
    final _patchMap = _patcher.patchMap;
    return GuestCheckoutError(
      errorCode: _patchMap.containsKey(GuestCheckoutError$.errorCode)
          ? ((_patchMap[GuestCheckoutError$.errorCode] is Function)
                    ? _patchMap[GuestCheckoutError$.errorCode](this.errorCode)
                    : (_patchMap[GuestCheckoutError$.errorCode] is Patch)
                    ? _patchMap[GuestCheckoutError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[GuestCheckoutError$.errorCode])
                as ErrorCode
          : this.errorCode,
      errorDetail: _patchMap.containsKey(GuestCheckoutError$.errorDetail)
          ? ((_patchMap[GuestCheckoutError$.errorDetail] is Function)
                    ? _patchMap[GuestCheckoutError$.errorDetail](
                        this.errorDetail,
                      )
                    : (_patchMap[GuestCheckoutError$.errorDetail] is Patch)
                    ? _patchMap[GuestCheckoutError$.errorDetail].applyTo(
                        this.errorDetail,
                      )
                    : _patchMap[GuestCheckoutError$.errorDetail])
                as String
          : this.errorDetail,
      message: _patchMap.containsKey(GuestCheckoutError$.message)
          ? ((_patchMap[GuestCheckoutError$.message] is Function)
                    ? _patchMap[GuestCheckoutError$.message](this.message)
                    : (_patchMap[GuestCheckoutError$.message] is Patch)
                    ? _patchMap[GuestCheckoutError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[GuestCheckoutError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GuestCheckoutError &&
        errorCode == other.errorCode &&
        errorDetail == other.errorDetail &&
        message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(this.errorCode, this.errorDetail, this.message);
  }

  @override
  String toString() {
    return 'GuestCheckoutError(' +
        'errorCode: ${errorCode}' +
        ', ' +
        'errorDetail: ${errorDetail}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$GuestCheckoutErrorToJson(this);
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

extension GuestCheckoutErrorPropertyHelpers on GuestCheckoutError {
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

  bool get hasErrorDetail {
    return this.errorDetail.isNotEmpty;
  }

  bool get noErrorDetail {
    return this.errorDetail.isEmpty;
  }

  bool get hasMessage {
    return this.message.isNotEmpty;
  }

  bool get noMessage {
    return this.message.isEmpty;
  }
}

extension GuestCheckoutErrorSerialization on GuestCheckoutError {
  Map<String, dynamic> toJson() {
    return _$GuestCheckoutErrorToJson(this);
  }
}

enum GuestCheckoutError$ { errorCode, errorDetail, message }

class GuestCheckoutErrorPatch
    extends PatchBase<GuestCheckoutError, GuestCheckoutError$> {
  GuestCheckoutError applyTo(GuestCheckoutError entity) {
    return entity.patchWithGuestCheckoutError(this);
  }

  GuestCheckoutErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[GuestCheckoutError$.errorCode] = value;
    return this;
  }

  GuestCheckoutErrorPatch withErrorDetail(String? value) {
    patchMap[GuestCheckoutError$.errorDetail] = value;
    return this;
  }

  GuestCheckoutErrorPatch withMessage(String? value) {
    patchMap[GuestCheckoutError$.message] = value;
    return this;
  }
}

/// Field descriptors for [GuestCheckoutError] query construction
abstract final class GuestCheckoutErrorFields {
  static const errorCode = Field<GuestCheckoutError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const errorDetail = Field<GuestCheckoutError, String>(
    'errorDetail',
    _$errorDetail,
  );

  static const message = Field<GuestCheckoutError, String>(
    'message',
    _$message,
  );

  static ErrorCode _$errorCode(GuestCheckoutError e) {
    return e.errorCode;
  }

  static String _$errorDetail(GuestCheckoutError e) {
    return e.errorDetail;
  }

  static String _$message(GuestCheckoutError e) {
    return e.message;
  }
}

extension GuestCheckoutErrorCompareE on GuestCheckoutError {
  Map<String, dynamic> compareToGuestCheckoutError(GuestCheckoutError other) {
    final Map<String, dynamic> diff = {};

    if (errorCode != other.errorCode) {
      diff['errorCode'] = () => other.errorCode;
    }

    if (errorDetail != other.errorDetail) {
      diff['errorDetail'] = () => other.errorDetail;
    }

    if (message != other.message) {
      diff['message'] = () => other.message;
    }
    return diff;
  }
}
