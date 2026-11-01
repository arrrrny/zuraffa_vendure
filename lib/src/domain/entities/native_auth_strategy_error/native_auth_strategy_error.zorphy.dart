// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'native_auth_strategy_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class NativeAuthStrategyError {
  NativeAuthStrategyError({
    required ErrorCode this.errorCode,
    required String this.message,
  });

  factory NativeAuthStrategyError.fromJson(Map<String, dynamic> json) =>
      _$NativeAuthStrategyErrorFromJson(json);

  final ErrorCode errorCode;

  final String message;

  NativeAuthStrategyError copyWith({ErrorCode? errorCode, String? message}) {
    return NativeAuthStrategyError(
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  NativeAuthStrategyError copyWithField<T>(
    Field<NativeAuthStrategyError, T> field,
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
          'NativeAuthStrategyError has no settable field with this name',
        );
    }
  }

  NativeAuthStrategyError copyWithNativeAuthStrategyError({
    ErrorCode? errorCode,
    String? message,
  }) {
    return copyWith(errorCode: errorCode, message: message);
  }

  NativeAuthStrategyError patchWithNativeAuthStrategyError([
    NativeAuthStrategyErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? NativeAuthStrategyErrorPatch();
    final _patchMap = _patcher.patchMap;
    return NativeAuthStrategyError(
      errorCode: _patchMap.containsKey(NativeAuthStrategyError$.errorCode)
          ? ((_patchMap[NativeAuthStrategyError$.errorCode] is Function)
                    ? _patchMap[NativeAuthStrategyError$.errorCode](
                        this.errorCode,
                      )
                    : (_patchMap[NativeAuthStrategyError$.errorCode] is Patch)
                    ? _patchMap[NativeAuthStrategyError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[NativeAuthStrategyError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(NativeAuthStrategyError$.message)
          ? ((_patchMap[NativeAuthStrategyError$.message] is Function)
                    ? _patchMap[NativeAuthStrategyError$.message](this.message)
                    : (_patchMap[NativeAuthStrategyError$.message] is Patch)
                    ? _patchMap[NativeAuthStrategyError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[NativeAuthStrategyError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NativeAuthStrategyError &&
        errorCode == other.errorCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(this.errorCode, this.message);
  }

  @override
  String toString() {
    return 'NativeAuthStrategyError(' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$NativeAuthStrategyErrorToJson(this);
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

extension NativeAuthStrategyErrorPropertyHelpers on NativeAuthStrategyError {
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

extension NativeAuthStrategyErrorSerialization on NativeAuthStrategyError {
  Map<String, dynamic> toJson() {
    return _$NativeAuthStrategyErrorToJson(this);
  }
}

enum NativeAuthStrategyError$ { errorCode, message }

class NativeAuthStrategyErrorPatch
    extends PatchBase<NativeAuthStrategyError, NativeAuthStrategyError$> {
  NativeAuthStrategyError applyTo(NativeAuthStrategyError entity) {
    return entity.patchWithNativeAuthStrategyError(this);
  }

  NativeAuthStrategyErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[NativeAuthStrategyError$.errorCode] = value;
    return this;
  }

  NativeAuthStrategyErrorPatch withMessage(String? value) {
    patchMap[NativeAuthStrategyError$.message] = value;
    return this;
  }
}

/// Field descriptors for [NativeAuthStrategyError] query construction
abstract final class NativeAuthStrategyErrorFields {
  static const errorCode = Field<NativeAuthStrategyError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<NativeAuthStrategyError, String>(
    'message',
    _$message,
  );

  static ErrorCode _$errorCode(NativeAuthStrategyError e) {
    return e.errorCode;
  }

  static String _$message(NativeAuthStrategyError e) {
    return e.message;
  }
}

extension NativeAuthStrategyErrorCompareE on NativeAuthStrategyError {
  Map<String, dynamic> compareToNativeAuthStrategyError(
    NativeAuthStrategyError other,
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
