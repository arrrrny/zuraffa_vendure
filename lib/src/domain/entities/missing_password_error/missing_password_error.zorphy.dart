// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'missing_password_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class MissingPasswordError {
  MissingPasswordError({
    required ErrorCode this.errorCode,
    required String this.message,
  });

  factory MissingPasswordError.fromJson(Map<String, dynamic> json) =>
      _$MissingPasswordErrorFromJson(json);

  final ErrorCode errorCode;

  final String message;

  MissingPasswordError copyWith({ErrorCode? errorCode, String? message}) {
    return MissingPasswordError(
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  MissingPasswordError copyWithField<T>(
    Field<MissingPasswordError, T> field,
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
          'MissingPasswordError has no settable field with this name',
        );
    }
  }

  MissingPasswordError copyWithMissingPasswordError({
    ErrorCode? errorCode,
    String? message,
  }) {
    return copyWith(errorCode: errorCode, message: message);
  }

  MissingPasswordError patchWithMissingPasswordError([
    MissingPasswordErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? MissingPasswordErrorPatch();
    final _patchMap = _patcher.patchMap;
    return MissingPasswordError(
      errorCode: _patchMap.containsKey(MissingPasswordError$.errorCode)
          ? ((_patchMap[MissingPasswordError$.errorCode] is Function)
                    ? _patchMap[MissingPasswordError$.errorCode](this.errorCode)
                    : (_patchMap[MissingPasswordError$.errorCode] is Patch)
                    ? _patchMap[MissingPasswordError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[MissingPasswordError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(MissingPasswordError$.message)
          ? ((_patchMap[MissingPasswordError$.message] is Function)
                    ? _patchMap[MissingPasswordError$.message](this.message)
                    : (_patchMap[MissingPasswordError$.message] is Patch)
                    ? _patchMap[MissingPasswordError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[MissingPasswordError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MissingPasswordError &&
        errorCode == other.errorCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(this.errorCode, this.message);
  }

  @override
  String toString() {
    return 'MissingPasswordError(' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$MissingPasswordErrorToJson(this);
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

extension MissingPasswordErrorPropertyHelpers on MissingPasswordError {
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

extension MissingPasswordErrorSerialization on MissingPasswordError {
  Map<String, dynamic> toJson() {
    return _$MissingPasswordErrorToJson(this);
  }
}

enum MissingPasswordError$ { errorCode, message }

class MissingPasswordErrorPatch
    extends PatchBase<MissingPasswordError, MissingPasswordError$> {
  MissingPasswordError applyTo(MissingPasswordError entity) {
    return entity.patchWithMissingPasswordError(this);
  }

  MissingPasswordErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[MissingPasswordError$.errorCode] = value;
    return this;
  }

  MissingPasswordErrorPatch withMessage(String? value) {
    patchMap[MissingPasswordError$.message] = value;
    return this;
  }
}

/// Field descriptors for [MissingPasswordError] query construction
abstract final class MissingPasswordErrorFields {
  static const errorCode = Field<MissingPasswordError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<MissingPasswordError, String>(
    'message',
    _$message,
  );

  static ErrorCode _$errorCode(MissingPasswordError e) {
    return e.errorCode;
  }

  static String _$message(MissingPasswordError e) {
    return e.message;
  }
}

extension MissingPasswordErrorCompareE on MissingPasswordError {
  Map<String, dynamic> compareToMissingPasswordError(
    MissingPasswordError other,
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
