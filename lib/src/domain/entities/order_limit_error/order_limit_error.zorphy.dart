// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'order_limit_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class OrderLimitError {
  OrderLimitError({
    required ErrorCode this.errorCode,
    required int this.maxItems,
    required String this.message,
  });

  factory OrderLimitError.fromJson(Map<String, dynamic> json) =>
      _$OrderLimitErrorFromJson(json);

  final ErrorCode errorCode;

  final int maxItems;

  final String message;

  OrderLimitError copyWith({
    ErrorCode? errorCode,
    int? maxItems,
    String? message,
  }) {
    return OrderLimitError(
      errorCode: errorCode ?? this.errorCode,
      maxItems: maxItems ?? this.maxItems,
      message: message ?? this.message,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  OrderLimitError copyWithField<T>(Field<OrderLimitError, T> field, T value) {
    switch (field.name) {
      case 'errorCode':
        return copyWith(errorCode: value as ErrorCode);
      case 'maxItems':
        return copyWith(maxItems: value as int);
      case 'message':
        return copyWith(message: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'OrderLimitError has no settable field with this name',
        );
    }
  }

  OrderLimitError copyWithOrderLimitError({
    ErrorCode? errorCode,
    int? maxItems,
    String? message,
  }) {
    return copyWith(errorCode: errorCode, maxItems: maxItems, message: message);
  }

  OrderLimitError patchWithOrderLimitError([OrderLimitErrorPatch? patchInput]) {
    final _patcher = patchInput ?? OrderLimitErrorPatch();
    final _patchMap = _patcher.patchMap;
    return OrderLimitError(
      errorCode: _patchMap.containsKey(OrderLimitError$.errorCode)
          ? ((_patchMap[OrderLimitError$.errorCode] is Function)
                    ? _patchMap[OrderLimitError$.errorCode](this.errorCode)
                    : (_patchMap[OrderLimitError$.errorCode] is Patch)
                    ? _patchMap[OrderLimitError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[OrderLimitError$.errorCode])
                as ErrorCode
          : this.errorCode,
      maxItems: _patchMap.containsKey(OrderLimitError$.maxItems)
          ? ((_patchMap[OrderLimitError$.maxItems] is Function)
                    ? _patchMap[OrderLimitError$.maxItems](this.maxItems)
                    : (_patchMap[OrderLimitError$.maxItems] is Patch)
                    ? _patchMap[OrderLimitError$.maxItems].applyTo(
                        this.maxItems,
                      )
                    : _patchMap[OrderLimitError$.maxItems])
                as int
          : this.maxItems,
      message: _patchMap.containsKey(OrderLimitError$.message)
          ? ((_patchMap[OrderLimitError$.message] is Function)
                    ? _patchMap[OrderLimitError$.message](this.message)
                    : (_patchMap[OrderLimitError$.message] is Patch)
                    ? _patchMap[OrderLimitError$.message].applyTo(this.message)
                    : _patchMap[OrderLimitError$.message])
                as String
          : this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrderLimitError &&
        errorCode == other.errorCode &&
        maxItems == other.maxItems &&
        message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(this.errorCode, this.maxItems, this.message);
  }

  @override
  String toString() {
    return 'OrderLimitError(' +
        'errorCode: ${errorCode}' +
        ', ' +
        'maxItems: ${maxItems}' +
        ', ' +
        'message: ${message})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$OrderLimitErrorToJson(this);
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

extension OrderLimitErrorPropertyHelpers on OrderLimitError {
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

extension OrderLimitErrorSerialization on OrderLimitError {
  Map<String, dynamic> toJson() {
    return _$OrderLimitErrorToJson(this);
  }
}

enum OrderLimitError$ { errorCode, maxItems, message }

class OrderLimitErrorPatch
    extends PatchBase<OrderLimitError, OrderLimitError$> {
  OrderLimitError applyTo(OrderLimitError entity) {
    return entity.patchWithOrderLimitError(this);
  }

  OrderLimitErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[OrderLimitError$.errorCode] = value;
    return this;
  }

  OrderLimitErrorPatch withMaxItems(int? value) {
    patchMap[OrderLimitError$.maxItems] = value;
    return this;
  }

  OrderLimitErrorPatch withMessage(String? value) {
    patchMap[OrderLimitError$.message] = value;
    return this;
  }
}

/// Field descriptors for [OrderLimitError] query construction
abstract final class OrderLimitErrorFields {
  static const errorCode = Field<OrderLimitError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const maxItems = Field<OrderLimitError, int>('maxItems', _$maxItems);

  static const message = Field<OrderLimitError, String>('message', _$message);

  static ErrorCode _$errorCode(OrderLimitError e) {
    return e.errorCode;
  }

  static int _$maxItems(OrderLimitError e) {
    return e.maxItems;
  }

  static String _$message(OrderLimitError e) {
    return e.message;
  }
}

extension OrderLimitErrorCompareE on OrderLimitError {
  Map<String, dynamic> compareToOrderLimitError(OrderLimitError other) {
    final Map<String, dynamic> diff = {};

    if (errorCode != other.errorCode) {
      diff['errorCode'] = () => other.errorCode;
    }

    if (maxItems != other.maxItems) {
      diff['maxItems'] = () => other.maxItems;
    }

    if (message != other.message) {
      diff['message'] = () => other.message;
    }
    return diff;
  }
}
