// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'ineligible_payment_method_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class IneligiblePaymentMethodError {
  IneligiblePaymentMethodError({
    String? this.eligibilityCheckerMessage,
    required ErrorCode this.errorCode,
    required String this.message,
  });

  factory IneligiblePaymentMethodError.fromJson(Map<String, dynamic> json) =>
      _$IneligiblePaymentMethodErrorFromJson(json);

  final String? eligibilityCheckerMessage;

  final ErrorCode errorCode;

  final String message;

  IneligiblePaymentMethodError copyWith({
    String? eligibilityCheckerMessage,
    ErrorCode? errorCode,
    String? message,
  }) {
    return IneligiblePaymentMethodError(
      eligibilityCheckerMessage:
          eligibilityCheckerMessage ?? this.eligibilityCheckerMessage,
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  IneligiblePaymentMethodError copyWithField<T>(
    Field<IneligiblePaymentMethodError, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'eligibilityCheckerMessage':
        return copyWith(eligibilityCheckerMessage: value as String?);
      case 'errorCode':
        return copyWith(errorCode: value as ErrorCode);
      case 'message':
        return copyWith(message: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'IneligiblePaymentMethodError has no settable field with this name',
        );
    }
  }

  IneligiblePaymentMethodError copyWithIneligiblePaymentMethodError({
    String? eligibilityCheckerMessage,
    ErrorCode? errorCode,
    String? message,
  }) {
    return copyWith(
      eligibilityCheckerMessage: eligibilityCheckerMessage,
      errorCode: errorCode,
      message: message,
    );
  }

  IneligiblePaymentMethodError patchWithIneligiblePaymentMethodError([
    IneligiblePaymentMethodErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? IneligiblePaymentMethodErrorPatch();
    final _patchMap = _patcher.patchMap;
    return IneligiblePaymentMethodError(
      eligibilityCheckerMessage:
          _patchMap.containsKey(
            IneligiblePaymentMethodError$.eligibilityCheckerMessage,
          )
          ? ((_patchMap[IneligiblePaymentMethodError$.eligibilityCheckerMessage]
                        is Function)
                    ? _patchMap[IneligiblePaymentMethodError$
                          .eligibilityCheckerMessage](
                        this.eligibilityCheckerMessage,
                      )
                    : (_patchMap[IneligiblePaymentMethodError$
                              .eligibilityCheckerMessage]
                          is Patch)
                    ? _patchMap[IneligiblePaymentMethodError$
                              .eligibilityCheckerMessage]
                          .applyTo(this.eligibilityCheckerMessage)
                    : _patchMap[IneligiblePaymentMethodError$
                          .eligibilityCheckerMessage])
                as String?
          : this.eligibilityCheckerMessage,
      errorCode: _patchMap.containsKey(IneligiblePaymentMethodError$.errorCode)
          ? ((_patchMap[IneligiblePaymentMethodError$.errorCode] is Function)
                    ? _patchMap[IneligiblePaymentMethodError$.errorCode](
                        this.errorCode,
                      )
                    : (_patchMap[IneligiblePaymentMethodError$.errorCode]
                          is Patch)
                    ? _patchMap[IneligiblePaymentMethodError$.errorCode]
                          .applyTo(this.errorCode)
                    : _patchMap[IneligiblePaymentMethodError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(IneligiblePaymentMethodError$.message)
          ? ((_patchMap[IneligiblePaymentMethodError$.message] is Function)
                    ? _patchMap[IneligiblePaymentMethodError$.message](
                        this.message,
                      )
                    : (_patchMap[IneligiblePaymentMethodError$.message]
                          is Patch)
                    ? _patchMap[IneligiblePaymentMethodError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[IneligiblePaymentMethodError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IneligiblePaymentMethodError &&
        eligibilityCheckerMessage == other.eligibilityCheckerMessage &&
        errorCode == other.errorCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.eligibilityCheckerMessage,
      this.errorCode,
      this.message,
    );
  }

  @override
  String toString() {
    return 'IneligiblePaymentMethodError(' +
        'eligibilityCheckerMessage: ${eligibilityCheckerMessage}' +
        ', ' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$IneligiblePaymentMethodErrorToJson(
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

extension IneligiblePaymentMethodErrorPropertyHelpers
    on IneligiblePaymentMethodError {
  bool get hasEligibilityCheckerMessage {
    return this.eligibilityCheckerMessage?.isNotEmpty == true;
  }

  bool get noEligibilityCheckerMessage {
    return this.eligibilityCheckerMessage?.isEmpty ?? true;
  }

  String get eligibilityCheckerMessageRequired {
    return this.eligibilityCheckerMessage ??
        (throw StateError(
          'eligibilityCheckerMessage is required but was null',
        ));
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

extension IneligiblePaymentMethodErrorSerialization
    on IneligiblePaymentMethodError {
  Map<String, dynamic> toJson() {
    return _$IneligiblePaymentMethodErrorToJson(this);
  }
}

enum IneligiblePaymentMethodError$ {
  eligibilityCheckerMessage,
  errorCode,
  message,
}

class IneligiblePaymentMethodErrorPatch
    extends
        PatchBase<IneligiblePaymentMethodError, IneligiblePaymentMethodError$> {
  IneligiblePaymentMethodError applyTo(IneligiblePaymentMethodError entity) {
    return entity.patchWithIneligiblePaymentMethodError(this);
  }

  IneligiblePaymentMethodErrorPatch withEligibilityCheckerMessage(
    String? value,
  ) {
    patchMap[IneligiblePaymentMethodError$.eligibilityCheckerMessage] = value;
    return this;
  }

  IneligiblePaymentMethodErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[IneligiblePaymentMethodError$.errorCode] = value;
    return this;
  }

  IneligiblePaymentMethodErrorPatch withMessage(String? value) {
    patchMap[IneligiblePaymentMethodError$.message] = value;
    return this;
  }
}

/// Field descriptors for [IneligiblePaymentMethodError] query construction
abstract final class IneligiblePaymentMethodErrorFields {
  static const eligibilityCheckerMessage =
      Field<IneligiblePaymentMethodError, String?>(
        'eligibilityCheckerMessage',
        _$eligibilityCheckerMessage,
      );

  static const errorCode = Field<IneligiblePaymentMethodError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<IneligiblePaymentMethodError, String>(
    'message',
    _$message,
  );

  static String? _$eligibilityCheckerMessage(IneligiblePaymentMethodError e) {
    return e.eligibilityCheckerMessage;
  }

  static ErrorCode _$errorCode(IneligiblePaymentMethodError e) {
    return e.errorCode;
  }

  static String _$message(IneligiblePaymentMethodError e) {
    return e.message;
  }
}

extension IneligiblePaymentMethodErrorCompareE on IneligiblePaymentMethodError {
  Map<String, dynamic> compareToIneligiblePaymentMethodError(
    IneligiblePaymentMethodError other,
  ) {
    final Map<String, dynamic> diff = {};

    if (eligibilityCheckerMessage != other.eligibilityCheckerMessage) {
      diff['eligibilityCheckerMessage'] = () => other.eligibilityCheckerMessage;
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
