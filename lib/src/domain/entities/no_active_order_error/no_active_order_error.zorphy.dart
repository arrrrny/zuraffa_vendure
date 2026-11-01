// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'no_active_order_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class NoActiveOrderError {
  NoActiveOrderError({
    required ErrorCode this.errorCode,
    required String this.message,
  });

  factory NoActiveOrderError.fromJson(Map<String, dynamic> json) =>
      _$NoActiveOrderErrorFromJson(json);

  final ErrorCode errorCode;

  final String message;

  NoActiveOrderError copyWith({ErrorCode? errorCode, String? message}) {
    return NoActiveOrderError(
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  NoActiveOrderError copyWithField<T>(
    Field<NoActiveOrderError, T> field,
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
          'NoActiveOrderError has no settable field with this name',
        );
    }
  }

  NoActiveOrderError copyWithNoActiveOrderError({
    ErrorCode? errorCode,
    String? message,
  }) {
    return copyWith(errorCode: errorCode, message: message);
  }

  NoActiveOrderError patchWithNoActiveOrderError([
    NoActiveOrderErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? NoActiveOrderErrorPatch();
    final _patchMap = _patcher.patchMap;
    return NoActiveOrderError(
      errorCode: _patchMap.containsKey(NoActiveOrderError$.errorCode)
          ? ((_patchMap[NoActiveOrderError$.errorCode] is Function)
                    ? _patchMap[NoActiveOrderError$.errorCode](this.errorCode)
                    : (_patchMap[NoActiveOrderError$.errorCode] is Patch)
                    ? _patchMap[NoActiveOrderError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[NoActiveOrderError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(NoActiveOrderError$.message)
          ? ((_patchMap[NoActiveOrderError$.message] is Function)
                    ? _patchMap[NoActiveOrderError$.message](this.message)
                    : (_patchMap[NoActiveOrderError$.message] is Patch)
                    ? _patchMap[NoActiveOrderError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[NoActiveOrderError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NoActiveOrderError &&
        errorCode == other.errorCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(this.errorCode, this.message);
  }

  @override
  String toString() {
    return 'NoActiveOrderError(' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$NoActiveOrderErrorToJson(this);
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

extension NoActiveOrderErrorPropertyHelpers on NoActiveOrderError {
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

extension NoActiveOrderErrorSerialization on NoActiveOrderError {
  Map<String, dynamic> toJson() {
    return _$NoActiveOrderErrorToJson(this);
  }
}

enum NoActiveOrderError$ { errorCode, message }

class NoActiveOrderErrorPatch
    extends PatchBase<NoActiveOrderError, NoActiveOrderError$> {
  NoActiveOrderError applyTo(NoActiveOrderError entity) {
    return entity.patchWithNoActiveOrderError(this);
  }

  NoActiveOrderErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[NoActiveOrderError$.errorCode] = value;
    return this;
  }

  NoActiveOrderErrorPatch withMessage(String? value) {
    patchMap[NoActiveOrderError$.message] = value;
    return this;
  }
}

/// Field descriptors for [NoActiveOrderError] query construction
abstract final class NoActiveOrderErrorFields {
  static const errorCode = Field<NoActiveOrderError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<NoActiveOrderError, String>(
    'message',
    _$message,
  );

  static ErrorCode _$errorCode(NoActiveOrderError e) {
    return e.errorCode;
  }

  static String _$message(NoActiveOrderError e) {
    return e.message;
  }
}

extension NoActiveOrderErrorCompareE on NoActiveOrderError {
  Map<String, dynamic> compareToNoActiveOrderError(NoActiveOrderError other) {
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
