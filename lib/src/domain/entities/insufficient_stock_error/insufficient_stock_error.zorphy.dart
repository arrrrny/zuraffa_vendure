// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'insufficient_stock_error.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class InsufficientStockError {
  InsufficientStockError({
    required ErrorCode this.errorCode,
    required String this.message,
    required Order this.order,
    required int this.quantityAvailable,
  });

  factory InsufficientStockError.fromJson(Map<String, dynamic> json) =>
      _$InsufficientStockErrorFromJson(json);

  final ErrorCode errorCode;

  final String message;

  final Order order;

  final int quantityAvailable;

  InsufficientStockError copyWith({
    ErrorCode? errorCode,
    String? message,
    Order? order,
    int? quantityAvailable,
  }) {
    return InsufficientStockError(
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
      order: order ?? this.order,
      quantityAvailable: quantityAvailable ?? this.quantityAvailable,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  InsufficientStockError copyWithField<T>(
    Field<InsufficientStockError, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'errorCode':
        return copyWith(errorCode: value as ErrorCode);
      case 'message':
        return copyWith(message: value as String);
      case 'order':
        return copyWith(order: value as Order);
      case 'quantityAvailable':
        return copyWith(quantityAvailable: value as int);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'InsufficientStockError has no settable field with this name',
        );
    }
  }

  InsufficientStockError copyWithInsufficientStockError({
    ErrorCode? errorCode,
    String? message,
    Order? order,
    int? quantityAvailable,
  }) {
    return copyWith(
      errorCode: errorCode,
      message: message,
      order: order,
      quantityAvailable: quantityAvailable,
    );
  }

  InsufficientStockError patchWithInsufficientStockError([
    InsufficientStockErrorPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? InsufficientStockErrorPatch();
    final _patchMap = _patcher.patchMap;
    return InsufficientStockError(
      errorCode: _patchMap.containsKey(InsufficientStockError$.errorCode)
          ? ((_patchMap[InsufficientStockError$.errorCode] is Function)
                    ? _patchMap[InsufficientStockError$.errorCode](
                        this.errorCode,
                      )
                    : (_patchMap[InsufficientStockError$.errorCode] is Patch)
                    ? _patchMap[InsufficientStockError$.errorCode].applyTo(
                        this.errorCode,
                      )
                    : _patchMap[InsufficientStockError$.errorCode])
                as ErrorCode
          : this.errorCode,
      message: _patchMap.containsKey(InsufficientStockError$.message)
          ? ((_patchMap[InsufficientStockError$.message] is Function)
                    ? _patchMap[InsufficientStockError$.message](this.message)
                    : (_patchMap[InsufficientStockError$.message] is Patch)
                    ? _patchMap[InsufficientStockError$.message].applyTo(
                        this.message,
                      )
                    : _patchMap[InsufficientStockError$.message])
                as String
          : this.message,
      order: _patchMap.containsKey(InsufficientStockError$.order)
          ? ((_patchMap[InsufficientStockError$.order] is Function)
                    ? _patchMap[InsufficientStockError$.order](this.order)
                    : (_patchMap[InsufficientStockError$.order] is Patch)
                    ? _patchMap[InsufficientStockError$.order].applyTo(
                        this.order,
                      )
                    : _patchMap[InsufficientStockError$.order])
                as Order
          : this.order,
      quantityAvailable:
          _patchMap.containsKey(InsufficientStockError$.quantityAvailable)
          ? ((_patchMap[InsufficientStockError$.quantityAvailable] is Function)
                    ? _patchMap[InsufficientStockError$.quantityAvailable](
                        this.quantityAvailable,
                      )
                    : (_patchMap[InsufficientStockError$.quantityAvailable]
                          is Patch)
                    ? _patchMap[InsufficientStockError$.quantityAvailable]
                          .applyTo(this.quantityAvailable)
                    : _patchMap[InsufficientStockError$.quantityAvailable])
                as int
          : this.quantityAvailable,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is InsufficientStockError &&
        errorCode == other.errorCode &&
        message == other.message &&
        order == other.order &&
        quantityAvailable == other.quantityAvailable;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.errorCode,
      this.message,
      this.order,
      this.quantityAvailable,
    );
  }

  @override
  String toString() {
    return 'InsufficientStockError(' +
        'errorCode: ${errorCode}' +
        ', ' +
        'message: ${message}' +
        ', ' +
        'order: ${order}' +
        ', ' +
        'quantityAvailable: ${quantityAvailable})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$InsufficientStockErrorToJson(this);
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

extension InsufficientStockErrorPropertyHelpers on InsufficientStockError {
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

extension InsufficientStockErrorSerialization on InsufficientStockError {
  Map<String, dynamic> toJson() {
    return _$InsufficientStockErrorToJson(this);
  }
}

enum InsufficientStockError$ { errorCode, message, order, quantityAvailable }

class InsufficientStockErrorPatch
    extends PatchBase<InsufficientStockError, InsufficientStockError$> {
  InsufficientStockError applyTo(InsufficientStockError entity) {
    return entity.patchWithInsufficientStockError(this);
  }

  InsufficientStockErrorPatch withErrorCode(ErrorCode? value) {
    patchMap[InsufficientStockError$.errorCode] = value;
    return this;
  }

  InsufficientStockErrorPatch withMessage(String? value) {
    patchMap[InsufficientStockError$.message] = value;
    return this;
  }

  InsufficientStockErrorPatch withOrder(Order? value) {
    patchMap[InsufficientStockError$.order] = value;
    return this;
  }

  InsufficientStockErrorPatch withOrderPatch(OrderPatch patch) {
    patchMap[InsufficientStockError$.order] = patch;
    return this;
  }

  InsufficientStockErrorPatch withOrderPatchFunc(
    OrderPatch Function(OrderPatch) patch,
  ) {
    patchMap[InsufficientStockError$.order] = (dynamic current) {
      var currentPatch = OrderPatch();
      return patch(currentPatch).applyTo(current as Order);
    };
    return this;
  }

  InsufficientStockErrorPatch withQuantityAvailable(int? value) {
    patchMap[InsufficientStockError$.quantityAvailable] = value;
    return this;
  }
}

/// Field descriptors for [InsufficientStockError] query construction
abstract final class InsufficientStockErrorFields {
  static const errorCode = Field<InsufficientStockError, ErrorCode>(
    'errorCode',
    _$errorCode,
  );

  static const message = Field<InsufficientStockError, String>(
    'message',
    _$message,
  );

  static const order = Field<InsufficientStockError, Order>('order', _$order);

  static const quantityAvailable = Field<InsufficientStockError, int>(
    'quantityAvailable',
    _$quantityAvailable,
  );

  static ErrorCode _$errorCode(InsufficientStockError e) {
    return e.errorCode;
  }

  static String _$message(InsufficientStockError e) {
    return e.message;
  }

  static Order _$order(InsufficientStockError e) {
    return e.order;
  }

  static int _$quantityAvailable(InsufficientStockError e) {
    return e.quantityAvailable;
  }
}

extension InsufficientStockErrorCompareE on InsufficientStockError {
  Map<String, dynamic> compareToInsufficientStockError(
    InsufficientStockError other,
  ) {
    final Map<String, dynamic> diff = {};

    if (errorCode != other.errorCode) {
      diff['errorCode'] = () => other.errorCode;
    }

    if (message != other.message) {
      diff['message'] = () => other.message;
    }

    if (order != other.order) {
      diff['order'] = () => other.order;
    }

    if (quantityAvailable != other.quantityAvailable) {
      diff['quantityAvailable'] = () => other.quantityAvailable;
    }
    return diff;
  }
}
