// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'order.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Order {
  Order({
    required bool this.active,
    OrderAddress? this.billingAddress,
    required String this.code,
    required List<String> this.couponCodes,
    required DateTime this.createdAt,
    required CurrencyCode this.currencyCode,
    Map<String, dynamic>? this.customFields,
    Customer? this.customer,
    required List<Discount> this.discounts,
    List<Fulfillment>? this.fulfillments,
    required HistoryEntryList this.history,
    required String this.id,
    required List<OrderLine> this.lines,
    DateTime? this.orderPlacedAt,
    List<Payment>? this.payments,
    required List<Promotion> this.promotions,
    required double this.shipping,
    OrderAddress? this.shippingAddress,
    required List<ShippingLine> this.shippingLines,
    required double this.shippingWithTax,
    required String this.state,
    required double this.subTotal,
    required double this.subTotalWithTax,
    required List<Surcharge> this.surcharges,
    required List<OrderTaxSummary> this.taxSummary,
    required double this.total,
    required int this.totalQuantity,
    required double this.totalWithTax,
    required OrderType this.type,
    required DateTime this.updatedAt,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  final bool active;

  final OrderAddress? billingAddress;

  final String code;

  final List<String> couponCodes;

  final DateTime createdAt;

  final CurrencyCode currencyCode;

  final Map<String, dynamic>? customFields;

  final Customer? customer;

  final List<Discount> discounts;

  final List<Fulfillment>? fulfillments;

  final HistoryEntryList history;

  final String id;

  final List<OrderLine> lines;

  final DateTime? orderPlacedAt;

  final List<Payment>? payments;

  final List<Promotion> promotions;

  final double shipping;

  final OrderAddress? shippingAddress;

  final List<ShippingLine> shippingLines;

  final double shippingWithTax;

  final String state;

  final double subTotal;

  final double subTotalWithTax;

  final List<Surcharge> surcharges;

  final List<OrderTaxSummary> taxSummary;

  final double total;

  final int totalQuantity;

  final double totalWithTax;

  final OrderType type;

  final DateTime updatedAt;

  Order copyWith({
    bool? active,
    OrderAddress? billingAddress,
    String? code,
    List<String>? couponCodes,
    DateTime? createdAt,
    CurrencyCode? currencyCode,
    Map<String, dynamic>? customFields,
    Customer? customer,
    List<Discount>? discounts,
    List<Fulfillment>? fulfillments,
    HistoryEntryList? history,
    String? id,
    List<OrderLine>? lines,
    DateTime? orderPlacedAt,
    List<Payment>? payments,
    List<Promotion>? promotions,
    double? shipping,
    OrderAddress? shippingAddress,
    List<ShippingLine>? shippingLines,
    double? shippingWithTax,
    String? state,
    double? subTotal,
    double? subTotalWithTax,
    List<Surcharge>? surcharges,
    List<OrderTaxSummary>? taxSummary,
    double? total,
    int? totalQuantity,
    double? totalWithTax,
    OrderType? type,
    DateTime? updatedAt,
  }) {
    return Order(
      active: active ?? this.active,
      billingAddress: billingAddress ?? this.billingAddress,
      code: code ?? this.code,
      couponCodes: couponCodes ?? this.couponCodes,
      createdAt: createdAt ?? this.createdAt,
      currencyCode: currencyCode ?? this.currencyCode,
      customFields: customFields ?? this.customFields,
      customer: customer ?? this.customer,
      discounts: discounts ?? this.discounts,
      fulfillments: fulfillments ?? this.fulfillments,
      history: history ?? this.history,
      id: id ?? this.id,
      lines: lines ?? this.lines,
      orderPlacedAt: orderPlacedAt ?? this.orderPlacedAt,
      payments: payments ?? this.payments,
      promotions: promotions ?? this.promotions,
      shipping: shipping ?? this.shipping,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      shippingLines: shippingLines ?? this.shippingLines,
      shippingWithTax: shippingWithTax ?? this.shippingWithTax,
      state: state ?? this.state,
      subTotal: subTotal ?? this.subTotal,
      subTotalWithTax: subTotalWithTax ?? this.subTotalWithTax,
      surcharges: surcharges ?? this.surcharges,
      taxSummary: taxSummary ?? this.taxSummary,
      total: total ?? this.total,
      totalQuantity: totalQuantity ?? this.totalQuantity,
      totalWithTax: totalWithTax ?? this.totalWithTax,
      type: type ?? this.type,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Order copyWithField<T>(Field<Order, T> field, T value) {
    switch (field.name) {
      case 'active':
        return copyWith(active: value as bool);
      case 'billingAddress':
        return copyWith(billingAddress: value as OrderAddress?);
      case 'code':
        return copyWith(code: value as String);
      case 'couponCodes':
        return copyWith(couponCodes: value as List<String>);
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'currencyCode':
        return copyWith(currencyCode: value as CurrencyCode);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'customer':
        return copyWith(customer: value as Customer?);
      case 'discounts':
        return copyWith(discounts: value as List<Discount>);
      case 'fulfillments':
        return copyWith(fulfillments: value as List<Fulfillment>?);
      case 'history':
        return copyWith(history: value as HistoryEntryList);
      case 'id':
        return copyWith(id: value as String);
      case 'lines':
        return copyWith(lines: value as List<OrderLine>);
      case 'orderPlacedAt':
        return copyWith(orderPlacedAt: value as DateTime?);
      case 'payments':
        return copyWith(payments: value as List<Payment>?);
      case 'promotions':
        return copyWith(promotions: value as List<Promotion>);
      case 'shipping':
        return copyWith(shipping: value as double);
      case 'shippingAddress':
        return copyWith(shippingAddress: value as OrderAddress?);
      case 'shippingLines':
        return copyWith(shippingLines: value as List<ShippingLine>);
      case 'shippingWithTax':
        return copyWith(shippingWithTax: value as double);
      case 'state':
        return copyWith(state: value as String);
      case 'subTotal':
        return copyWith(subTotal: value as double);
      case 'subTotalWithTax':
        return copyWith(subTotalWithTax: value as double);
      case 'surcharges':
        return copyWith(surcharges: value as List<Surcharge>);
      case 'taxSummary':
        return copyWith(taxSummary: value as List<OrderTaxSummary>);
      case 'total':
        return copyWith(total: value as double);
      case 'totalQuantity':
        return copyWith(totalQuantity: value as int);
      case 'totalWithTax':
        return copyWith(totalWithTax: value as double);
      case 'type':
        return copyWith(type: value as OrderType);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Order has no settable field with this name',
        );
    }
  }

  Order copyWithOrder({
    bool? active,
    OrderAddress? billingAddress,
    String? code,
    List<String>? couponCodes,
    DateTime? createdAt,
    CurrencyCode? currencyCode,
    Map<String, dynamic>? customFields,
    Customer? customer,
    List<Discount>? discounts,
    List<Fulfillment>? fulfillments,
    HistoryEntryList? history,
    String? id,
    List<OrderLine>? lines,
    DateTime? orderPlacedAt,
    List<Payment>? payments,
    List<Promotion>? promotions,
    double? shipping,
    OrderAddress? shippingAddress,
    List<ShippingLine>? shippingLines,
    double? shippingWithTax,
    String? state,
    double? subTotal,
    double? subTotalWithTax,
    List<Surcharge>? surcharges,
    List<OrderTaxSummary>? taxSummary,
    double? total,
    int? totalQuantity,
    double? totalWithTax,
    OrderType? type,
    DateTime? updatedAt,
  }) {
    return copyWith(
      active: active,
      billingAddress: billingAddress,
      code: code,
      couponCodes: couponCodes,
      createdAt: createdAt,
      currencyCode: currencyCode,
      customFields: customFields,
      customer: customer,
      discounts: discounts,
      fulfillments: fulfillments,
      history: history,
      id: id,
      lines: lines,
      orderPlacedAt: orderPlacedAt,
      payments: payments,
      promotions: promotions,
      shipping: shipping,
      shippingAddress: shippingAddress,
      shippingLines: shippingLines,
      shippingWithTax: shippingWithTax,
      state: state,
      subTotal: subTotal,
      subTotalWithTax: subTotalWithTax,
      surcharges: surcharges,
      taxSummary: taxSummary,
      total: total,
      totalQuantity: totalQuantity,
      totalWithTax: totalWithTax,
      type: type,
      updatedAt: updatedAt,
    );
  }

  Order patchWithOrder([OrderPatch? patchInput]) {
    final _patcher = patchInput ?? OrderPatch();
    final _patchMap = _patcher.patchMap;
    return Order(
      active: _patchMap.containsKey(Order$.active)
          ? ((_patchMap[Order$.active] is Function)
                    ? _patchMap[Order$.active](this.active)
                    : (_patchMap[Order$.active] is Patch)
                    ? _patchMap[Order$.active].applyTo(this.active)
                    : _patchMap[Order$.active])
                as bool
          : this.active,
      billingAddress: _patchMap.containsKey(Order$.billingAddress)
          ? ((_patchMap[Order$.billingAddress] is Function)
                    ? _patchMap[Order$.billingAddress](this.billingAddress)
                    : (_patchMap[Order$.billingAddress] is Patch)
                    ? _patchMap[Order$.billingAddress].applyTo(
                        this.billingAddress,
                      )
                    : _patchMap[Order$.billingAddress])
                as OrderAddress?
          : this.billingAddress,
      code: _patchMap.containsKey(Order$.code)
          ? ((_patchMap[Order$.code] is Function)
                    ? _patchMap[Order$.code](this.code)
                    : (_patchMap[Order$.code] is Patch)
                    ? _patchMap[Order$.code].applyTo(this.code)
                    : _patchMap[Order$.code])
                as String
          : this.code,
      couponCodes: _patchMap.containsKey(Order$.couponCodes)
          ? ((_patchMap[Order$.couponCodes] is Function)
                    ? _patchMap[Order$.couponCodes](this.couponCodes)
                    : (_patchMap[Order$.couponCodes] is Patch)
                    ? _patchMap[Order$.couponCodes].applyTo(this.couponCodes)
                    : _patchMap[Order$.couponCodes])
                as List<String>
          : this.couponCodes,
      createdAt: _patchMap.containsKey(Order$.createdAt)
          ? ((_patchMap[Order$.createdAt] is Function)
                    ? _patchMap[Order$.createdAt](this.createdAt)
                    : (_patchMap[Order$.createdAt] is Patch)
                    ? _patchMap[Order$.createdAt].applyTo(this.createdAt)
                    : _patchMap[Order$.createdAt])
                as DateTime
          : this.createdAt,
      currencyCode: _patchMap.containsKey(Order$.currencyCode)
          ? ((_patchMap[Order$.currencyCode] is Function)
                    ? _patchMap[Order$.currencyCode](this.currencyCode)
                    : (_patchMap[Order$.currencyCode] is Patch)
                    ? _patchMap[Order$.currencyCode].applyTo(this.currencyCode)
                    : _patchMap[Order$.currencyCode])
                as CurrencyCode
          : this.currencyCode,
      customFields: _patchMap.containsKey(Order$.customFields)
          ? ((_patchMap[Order$.customFields] is Function)
                    ? _patchMap[Order$.customFields](this.customFields)
                    : (_patchMap[Order$.customFields] is Patch)
                    ? _patchMap[Order$.customFields].applyTo(this.customFields)
                    : _patchMap[Order$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      customer: _patchMap.containsKey(Order$.customer)
          ? ((_patchMap[Order$.customer] is Function)
                    ? _patchMap[Order$.customer](this.customer)
                    : (_patchMap[Order$.customer] is Patch)
                    ? _patchMap[Order$.customer].applyTo(this.customer)
                    : _patchMap[Order$.customer])
                as Customer?
          : this.customer,
      discounts: _patchMap.containsKey(Order$.discounts)
          ? ((_patchMap[Order$.discounts] is Function)
                    ? _patchMap[Order$.discounts](this.discounts)
                    : (_patchMap[Order$.discounts] is Patch)
                    ? _patchMap[Order$.discounts].applyTo(this.discounts)
                    : _patchMap[Order$.discounts])
                as List<Discount>
          : this.discounts,
      fulfillments: _patchMap.containsKey(Order$.fulfillments)
          ? ((_patchMap[Order$.fulfillments] is Function)
                    ? _patchMap[Order$.fulfillments](this.fulfillments)
                    : (_patchMap[Order$.fulfillments] is Patch)
                    ? _patchMap[Order$.fulfillments].applyTo(this.fulfillments)
                    : _patchMap[Order$.fulfillments])
                as List<Fulfillment>?
          : this.fulfillments,
      history: _patchMap.containsKey(Order$.history)
          ? ((_patchMap[Order$.history] is Function)
                    ? _patchMap[Order$.history](this.history)
                    : (_patchMap[Order$.history] is Patch)
                    ? _patchMap[Order$.history].applyTo(this.history)
                    : _patchMap[Order$.history])
                as HistoryEntryList
          : this.history,
      id: _patchMap.containsKey(Order$.id)
          ? ((_patchMap[Order$.id] is Function)
                    ? _patchMap[Order$.id](this.id)
                    : (_patchMap[Order$.id] is Patch)
                    ? _patchMap[Order$.id].applyTo(this.id)
                    : _patchMap[Order$.id])
                as String
          : this.id,
      lines: _patchMap.containsKey(Order$.lines)
          ? ((_patchMap[Order$.lines] is Function)
                    ? _patchMap[Order$.lines](this.lines)
                    : (_patchMap[Order$.lines] is Patch)
                    ? _patchMap[Order$.lines].applyTo(this.lines)
                    : _patchMap[Order$.lines])
                as List<OrderLine>
          : this.lines,
      orderPlacedAt: _patchMap.containsKey(Order$.orderPlacedAt)
          ? ((_patchMap[Order$.orderPlacedAt] is Function)
                    ? _patchMap[Order$.orderPlacedAt](this.orderPlacedAt)
                    : (_patchMap[Order$.orderPlacedAt] is Patch)
                    ? _patchMap[Order$.orderPlacedAt].applyTo(
                        this.orderPlacedAt,
                      )
                    : _patchMap[Order$.orderPlacedAt])
                as DateTime?
          : this.orderPlacedAt,
      payments: _patchMap.containsKey(Order$.payments)
          ? ((_patchMap[Order$.payments] is Function)
                    ? _patchMap[Order$.payments](this.payments)
                    : (_patchMap[Order$.payments] is Patch)
                    ? _patchMap[Order$.payments].applyTo(this.payments)
                    : _patchMap[Order$.payments])
                as List<Payment>?
          : this.payments,
      promotions: _patchMap.containsKey(Order$.promotions)
          ? ((_patchMap[Order$.promotions] is Function)
                    ? _patchMap[Order$.promotions](this.promotions)
                    : (_patchMap[Order$.promotions] is Patch)
                    ? _patchMap[Order$.promotions].applyTo(this.promotions)
                    : _patchMap[Order$.promotions])
                as List<Promotion>
          : this.promotions,
      shipping: _patchMap.containsKey(Order$.shipping)
          ? ((_patchMap[Order$.shipping] is Function)
                    ? _patchMap[Order$.shipping](this.shipping)
                    : (_patchMap[Order$.shipping] is Patch)
                    ? _patchMap[Order$.shipping].applyTo(this.shipping)
                    : _patchMap[Order$.shipping])
                as double
          : this.shipping,
      shippingAddress: _patchMap.containsKey(Order$.shippingAddress)
          ? ((_patchMap[Order$.shippingAddress] is Function)
                    ? _patchMap[Order$.shippingAddress](this.shippingAddress)
                    : (_patchMap[Order$.shippingAddress] is Patch)
                    ? _patchMap[Order$.shippingAddress].applyTo(
                        this.shippingAddress,
                      )
                    : _patchMap[Order$.shippingAddress])
                as OrderAddress?
          : this.shippingAddress,
      shippingLines: _patchMap.containsKey(Order$.shippingLines)
          ? ((_patchMap[Order$.shippingLines] is Function)
                    ? _patchMap[Order$.shippingLines](this.shippingLines)
                    : (_patchMap[Order$.shippingLines] is Patch)
                    ? _patchMap[Order$.shippingLines].applyTo(
                        this.shippingLines,
                      )
                    : _patchMap[Order$.shippingLines])
                as List<ShippingLine>
          : this.shippingLines,
      shippingWithTax: _patchMap.containsKey(Order$.shippingWithTax)
          ? ((_patchMap[Order$.shippingWithTax] is Function)
                    ? _patchMap[Order$.shippingWithTax](this.shippingWithTax)
                    : (_patchMap[Order$.shippingWithTax] is Patch)
                    ? _patchMap[Order$.shippingWithTax].applyTo(
                        this.shippingWithTax,
                      )
                    : _patchMap[Order$.shippingWithTax])
                as double
          : this.shippingWithTax,
      state: _patchMap.containsKey(Order$.state)
          ? ((_patchMap[Order$.state] is Function)
                    ? _patchMap[Order$.state](this.state)
                    : (_patchMap[Order$.state] is Patch)
                    ? _patchMap[Order$.state].applyTo(this.state)
                    : _patchMap[Order$.state])
                as String
          : this.state,
      subTotal: _patchMap.containsKey(Order$.subTotal)
          ? ((_patchMap[Order$.subTotal] is Function)
                    ? _patchMap[Order$.subTotal](this.subTotal)
                    : (_patchMap[Order$.subTotal] is Patch)
                    ? _patchMap[Order$.subTotal].applyTo(this.subTotal)
                    : _patchMap[Order$.subTotal])
                as double
          : this.subTotal,
      subTotalWithTax: _patchMap.containsKey(Order$.subTotalWithTax)
          ? ((_patchMap[Order$.subTotalWithTax] is Function)
                    ? _patchMap[Order$.subTotalWithTax](this.subTotalWithTax)
                    : (_patchMap[Order$.subTotalWithTax] is Patch)
                    ? _patchMap[Order$.subTotalWithTax].applyTo(
                        this.subTotalWithTax,
                      )
                    : _patchMap[Order$.subTotalWithTax])
                as double
          : this.subTotalWithTax,
      surcharges: _patchMap.containsKey(Order$.surcharges)
          ? ((_patchMap[Order$.surcharges] is Function)
                    ? _patchMap[Order$.surcharges](this.surcharges)
                    : (_patchMap[Order$.surcharges] is Patch)
                    ? _patchMap[Order$.surcharges].applyTo(this.surcharges)
                    : _patchMap[Order$.surcharges])
                as List<Surcharge>
          : this.surcharges,
      taxSummary: _patchMap.containsKey(Order$.taxSummary)
          ? ((_patchMap[Order$.taxSummary] is Function)
                    ? _patchMap[Order$.taxSummary](this.taxSummary)
                    : (_patchMap[Order$.taxSummary] is Patch)
                    ? _patchMap[Order$.taxSummary].applyTo(this.taxSummary)
                    : _patchMap[Order$.taxSummary])
                as List<OrderTaxSummary>
          : this.taxSummary,
      total: _patchMap.containsKey(Order$.total)
          ? ((_patchMap[Order$.total] is Function)
                    ? _patchMap[Order$.total](this.total)
                    : (_patchMap[Order$.total] is Patch)
                    ? _patchMap[Order$.total].applyTo(this.total)
                    : _patchMap[Order$.total])
                as double
          : this.total,
      totalQuantity: _patchMap.containsKey(Order$.totalQuantity)
          ? ((_patchMap[Order$.totalQuantity] is Function)
                    ? _patchMap[Order$.totalQuantity](this.totalQuantity)
                    : (_patchMap[Order$.totalQuantity] is Patch)
                    ? _patchMap[Order$.totalQuantity].applyTo(
                        this.totalQuantity,
                      )
                    : _patchMap[Order$.totalQuantity])
                as int
          : this.totalQuantity,
      totalWithTax: _patchMap.containsKey(Order$.totalWithTax)
          ? ((_patchMap[Order$.totalWithTax] is Function)
                    ? _patchMap[Order$.totalWithTax](this.totalWithTax)
                    : (_patchMap[Order$.totalWithTax] is Patch)
                    ? _patchMap[Order$.totalWithTax].applyTo(this.totalWithTax)
                    : _patchMap[Order$.totalWithTax])
                as double
          : this.totalWithTax,
      type: _patchMap.containsKey(Order$.type)
          ? ((_patchMap[Order$.type] is Function)
                    ? _patchMap[Order$.type](this.type)
                    : (_patchMap[Order$.type] is Patch)
                    ? _patchMap[Order$.type].applyTo(this.type)
                    : _patchMap[Order$.type])
                as OrderType
          : this.type,
      updatedAt: _patchMap.containsKey(Order$.updatedAt)
          ? ((_patchMap[Order$.updatedAt] is Function)
                    ? _patchMap[Order$.updatedAt](this.updatedAt)
                    : (_patchMap[Order$.updatedAt] is Patch)
                    ? _patchMap[Order$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[Order$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Order &&
        active == other.active &&
        billingAddress == other.billingAddress &&
        code == other.code &&
        couponCodes == other.couponCodes &&
        createdAt == other.createdAt &&
        currencyCode == other.currencyCode &&
        customFields == other.customFields &&
        customer == other.customer &&
        discounts == other.discounts &&
        fulfillments == other.fulfillments &&
        history == other.history &&
        id == other.id &&
        lines == other.lines &&
        orderPlacedAt == other.orderPlacedAt &&
        payments == other.payments &&
        promotions == other.promotions &&
        shipping == other.shipping &&
        shippingAddress == other.shippingAddress &&
        shippingLines == other.shippingLines &&
        shippingWithTax == other.shippingWithTax &&
        state == other.state &&
        subTotal == other.subTotal &&
        subTotalWithTax == other.subTotalWithTax &&
        surcharges == other.surcharges &&
        taxSummary == other.taxSummary &&
        total == other.total &&
        totalQuantity == other.totalQuantity &&
        totalWithTax == other.totalWithTax &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
          this.active,
          this.billingAddress,
          this.code,
          this.couponCodes,
          this.createdAt,
          this.currencyCode,
          this.customFields,
          this.customer,
          this.discounts,
          this.fulfillments,
          this.history,
          this.id,
          this.lines,
          this.orderPlacedAt,
          this.payments,
          this.promotions,
          this.shipping,
          this.shippingAddress,
          this.shippingLines,
          this.shippingWithTax,
        ) ^
        Object.hash(
          this.state,
          this.subTotal,
          this.subTotalWithTax,
          this.surcharges,
          this.taxSummary,
          this.total,
          this.totalQuantity,
          this.totalWithTax,
          this.type,
          this.updatedAt,
        );
  }

  @override
  String toString() {
    return 'Order(' +
        'active: ${active}' +
        ', ' +
        'billingAddress: ${billingAddress}' +
        ', ' +
        'code: ${code}' +
        ', ' +
        'couponCodes: ${couponCodes}' +
        ', ' +
        'createdAt: ${createdAt}' +
        ', ' +
        'currencyCode: ${currencyCode}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'customer: ${customer}' +
        ', ' +
        'discounts: ${discounts}' +
        ', ' +
        'fulfillments: ${fulfillments}' +
        ', ' +
        'history: ${history}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'lines: ${lines}' +
        ', ' +
        'orderPlacedAt: ${orderPlacedAt}' +
        ', ' +
        'payments: ${payments}' +
        ', ' +
        'promotions: ${promotions}' +
        ', ' +
        'shipping: ${shipping}' +
        ', ' +
        'shippingAddress: ${shippingAddress}' +
        ', ' +
        'shippingLines: ${shippingLines}' +
        ', ' +
        'shippingWithTax: ${shippingWithTax}' +
        ', ' +
        'state: ${state}' +
        ', ' +
        'subTotal: ${subTotal}' +
        ', ' +
        'subTotalWithTax: ${subTotalWithTax}' +
        ', ' +
        'surcharges: ${surcharges}' +
        ', ' +
        'taxSummary: ${taxSummary}' +
        ', ' +
        'total: ${total}' +
        ', ' +
        'totalQuantity: ${totalQuantity}' +
        ', ' +
        'totalWithTax: ${totalWithTax}' +
        ', ' +
        'type: ${type}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$OrderToJson(this);
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

extension OrderPropertyHelpers on Order {
  bool get hasBillingAddress {
    return this.billingAddress != null;
  }

  bool get noBillingAddress {
    return this.billingAddress == null;
  }

  OrderAddress get billingAddressRequired {
    return this.billingAddress ??
        (throw StateError('billingAddress is required but was null'));
  }

  bool get hasCode {
    return this.code.isNotEmpty;
  }

  bool get noCode {
    return this.code.isEmpty;
  }

  bool get hasCouponCodes {
    return this.couponCodes.isNotEmpty;
  }

  bool get noCouponCodes {
    return this.couponCodes.isEmpty;
  }

  bool get isCurrencyCodeAed {
    return this.currencyCode == CurrencyCode.aed;
  }

  bool get isCurrencyCodeAfn {
    return this.currencyCode == CurrencyCode.afn;
  }

  bool get isCurrencyCodeAll {
    return this.currencyCode == CurrencyCode.all;
  }

  bool get isCurrencyCodeAmd {
    return this.currencyCode == CurrencyCode.amd;
  }

  bool get isCurrencyCodeAng {
    return this.currencyCode == CurrencyCode.ang;
  }

  bool get isCurrencyCodeAoa {
    return this.currencyCode == CurrencyCode.aoa;
  }

  bool get isCurrencyCodeArs {
    return this.currencyCode == CurrencyCode.ars;
  }

  bool get isCurrencyCodeAud {
    return this.currencyCode == CurrencyCode.aud;
  }

  bool get isCurrencyCodeAwg {
    return this.currencyCode == CurrencyCode.awg;
  }

  bool get isCurrencyCodeAzn {
    return this.currencyCode == CurrencyCode.azn;
  }

  bool get isCurrencyCodeBam {
    return this.currencyCode == CurrencyCode.bam;
  }

  bool get isCurrencyCodeBbd {
    return this.currencyCode == CurrencyCode.bbd;
  }

  bool get isCurrencyCodeBdt {
    return this.currencyCode == CurrencyCode.bdt;
  }

  bool get isCurrencyCodeBgn {
    return this.currencyCode == CurrencyCode.bgn;
  }

  bool get isCurrencyCodeBhd {
    return this.currencyCode == CurrencyCode.bhd;
  }

  bool get isCurrencyCodeBif {
    return this.currencyCode == CurrencyCode.bif;
  }

  bool get isCurrencyCodeBmd {
    return this.currencyCode == CurrencyCode.bmd;
  }

  bool get isCurrencyCodeBnd {
    return this.currencyCode == CurrencyCode.bnd;
  }

  bool get isCurrencyCodeBob {
    return this.currencyCode == CurrencyCode.bob;
  }

  bool get isCurrencyCodeBrl {
    return this.currencyCode == CurrencyCode.brl;
  }

  bool get isCurrencyCodeBsd {
    return this.currencyCode == CurrencyCode.bsd;
  }

  bool get isCurrencyCodeBtn {
    return this.currencyCode == CurrencyCode.btn;
  }

  bool get isCurrencyCodeBwp {
    return this.currencyCode == CurrencyCode.bwp;
  }

  bool get isCurrencyCodeByn {
    return this.currencyCode == CurrencyCode.byn;
  }

  bool get isCurrencyCodeBzd {
    return this.currencyCode == CurrencyCode.bzd;
  }

  bool get isCurrencyCodeCad {
    return this.currencyCode == CurrencyCode.cad;
  }

  bool get isCurrencyCodeCdf {
    return this.currencyCode == CurrencyCode.cdf;
  }

  bool get isCurrencyCodeChf {
    return this.currencyCode == CurrencyCode.chf;
  }

  bool get isCurrencyCodeClp {
    return this.currencyCode == CurrencyCode.clp;
  }

  bool get isCurrencyCodeCny {
    return this.currencyCode == CurrencyCode.cny;
  }

  bool get isCurrencyCodeCop {
    return this.currencyCode == CurrencyCode.cop;
  }

  bool get isCurrencyCodeCrc {
    return this.currencyCode == CurrencyCode.crc;
  }

  bool get isCurrencyCodeCuc {
    return this.currencyCode == CurrencyCode.cuc;
  }

  bool get isCurrencyCodeCup {
    return this.currencyCode == CurrencyCode.cup;
  }

  bool get isCurrencyCodeCve {
    return this.currencyCode == CurrencyCode.cve;
  }

  bool get isCurrencyCodeCzk {
    return this.currencyCode == CurrencyCode.czk;
  }

  bool get isCurrencyCodeDjf {
    return this.currencyCode == CurrencyCode.djf;
  }

  bool get isCurrencyCodeDkk {
    return this.currencyCode == CurrencyCode.dkk;
  }

  bool get isCurrencyCodeDop {
    return this.currencyCode == CurrencyCode.dop;
  }

  bool get isCurrencyCodeDzd {
    return this.currencyCode == CurrencyCode.dzd;
  }

  bool get isCurrencyCodeEgp {
    return this.currencyCode == CurrencyCode.egp;
  }

  bool get isCurrencyCodeErn {
    return this.currencyCode == CurrencyCode.ern;
  }

  bool get isCurrencyCodeEtb {
    return this.currencyCode == CurrencyCode.etb;
  }

  bool get isCurrencyCodeEur {
    return this.currencyCode == CurrencyCode.eur;
  }

  bool get isCurrencyCodeFjd {
    return this.currencyCode == CurrencyCode.fjd;
  }

  bool get isCurrencyCodeFkp {
    return this.currencyCode == CurrencyCode.fkp;
  }

  bool get isCurrencyCodeGbp {
    return this.currencyCode == CurrencyCode.gbp;
  }

  bool get isCurrencyCodeGel {
    return this.currencyCode == CurrencyCode.gel;
  }

  bool get isCurrencyCodeGhs {
    return this.currencyCode == CurrencyCode.ghs;
  }

  bool get isCurrencyCodeGip {
    return this.currencyCode == CurrencyCode.gip;
  }

  bool get isCurrencyCodeGmd {
    return this.currencyCode == CurrencyCode.gmd;
  }

  bool get isCurrencyCodeGnf {
    return this.currencyCode == CurrencyCode.gnf;
  }

  bool get isCurrencyCodeGtq {
    return this.currencyCode == CurrencyCode.gtq;
  }

  bool get isCurrencyCodeGyd {
    return this.currencyCode == CurrencyCode.gyd;
  }

  bool get isCurrencyCodeHkd {
    return this.currencyCode == CurrencyCode.hkd;
  }

  bool get isCurrencyCodeHnl {
    return this.currencyCode == CurrencyCode.hnl;
  }

  bool get isCurrencyCodeHrk {
    return this.currencyCode == CurrencyCode.hrk;
  }

  bool get isCurrencyCodeHtg {
    return this.currencyCode == CurrencyCode.htg;
  }

  bool get isCurrencyCodeHuf {
    return this.currencyCode == CurrencyCode.huf;
  }

  bool get isCurrencyCodeIdr {
    return this.currencyCode == CurrencyCode.idr;
  }

  bool get isCurrencyCodeIls {
    return this.currencyCode == CurrencyCode.ils;
  }

  bool get isCurrencyCodeInr {
    return this.currencyCode == CurrencyCode.inr;
  }

  bool get isCurrencyCodeIqd {
    return this.currencyCode == CurrencyCode.iqd;
  }

  bool get isCurrencyCodeIrr {
    return this.currencyCode == CurrencyCode.irr;
  }

  bool get isCurrencyCodeIsk {
    return this.currencyCode == CurrencyCode.isk;
  }

  bool get isCurrencyCodeJmd {
    return this.currencyCode == CurrencyCode.jmd;
  }

  bool get isCurrencyCodeJod {
    return this.currencyCode == CurrencyCode.jod;
  }

  bool get isCurrencyCodeJpy {
    return this.currencyCode == CurrencyCode.jpy;
  }

  bool get isCurrencyCodeKes {
    return this.currencyCode == CurrencyCode.kes;
  }

  bool get isCurrencyCodeKgs {
    return this.currencyCode == CurrencyCode.kgs;
  }

  bool get isCurrencyCodeKhr {
    return this.currencyCode == CurrencyCode.khr;
  }

  bool get isCurrencyCodeKmf {
    return this.currencyCode == CurrencyCode.kmf;
  }

  bool get isCurrencyCodeKpw {
    return this.currencyCode == CurrencyCode.kpw;
  }

  bool get isCurrencyCodeKrw {
    return this.currencyCode == CurrencyCode.krw;
  }

  bool get isCurrencyCodeKwd {
    return this.currencyCode == CurrencyCode.kwd;
  }

  bool get isCurrencyCodeKyd {
    return this.currencyCode == CurrencyCode.kyd;
  }

  bool get isCurrencyCodeKzt {
    return this.currencyCode == CurrencyCode.kzt;
  }

  bool get isCurrencyCodeLak {
    return this.currencyCode == CurrencyCode.lak;
  }

  bool get isCurrencyCodeLbp {
    return this.currencyCode == CurrencyCode.lbp;
  }

  bool get isCurrencyCodeLkr {
    return this.currencyCode == CurrencyCode.lkr;
  }

  bool get isCurrencyCodeLrd {
    return this.currencyCode == CurrencyCode.lrd;
  }

  bool get isCurrencyCodeLsl {
    return this.currencyCode == CurrencyCode.lsl;
  }

  bool get isCurrencyCodeLyd {
    return this.currencyCode == CurrencyCode.lyd;
  }

  bool get isCurrencyCodeMad {
    return this.currencyCode == CurrencyCode.mad;
  }

  bool get isCurrencyCodeMdl {
    return this.currencyCode == CurrencyCode.mdl;
  }

  bool get isCurrencyCodeMga {
    return this.currencyCode == CurrencyCode.mga;
  }

  bool get isCurrencyCodeMkd {
    return this.currencyCode == CurrencyCode.mkd;
  }

  bool get isCurrencyCodeMmk {
    return this.currencyCode == CurrencyCode.mmk;
  }

  bool get isCurrencyCodeMnt {
    return this.currencyCode == CurrencyCode.mnt;
  }

  bool get isCurrencyCodeMop {
    return this.currencyCode == CurrencyCode.mop;
  }

  bool get isCurrencyCodeMru {
    return this.currencyCode == CurrencyCode.mru;
  }

  bool get isCurrencyCodeMur {
    return this.currencyCode == CurrencyCode.mur;
  }

  bool get isCurrencyCodeMvr {
    return this.currencyCode == CurrencyCode.mvr;
  }

  bool get isCurrencyCodeMwk {
    return this.currencyCode == CurrencyCode.mwk;
  }

  bool get isCurrencyCodeMxn {
    return this.currencyCode == CurrencyCode.mxn;
  }

  bool get isCurrencyCodeMyr {
    return this.currencyCode == CurrencyCode.myr;
  }

  bool get isCurrencyCodeMzn {
    return this.currencyCode == CurrencyCode.mzn;
  }

  bool get isCurrencyCodeNad {
    return this.currencyCode == CurrencyCode.nad;
  }

  bool get isCurrencyCodeNgn {
    return this.currencyCode == CurrencyCode.ngn;
  }

  bool get isCurrencyCodeNio {
    return this.currencyCode == CurrencyCode.nio;
  }

  bool get isCurrencyCodeNok {
    return this.currencyCode == CurrencyCode.nok;
  }

  bool get isCurrencyCodeNpr {
    return this.currencyCode == CurrencyCode.npr;
  }

  bool get isCurrencyCodeNzd {
    return this.currencyCode == CurrencyCode.nzd;
  }

  bool get isCurrencyCodeOmr {
    return this.currencyCode == CurrencyCode.omr;
  }

  bool get isCurrencyCodePab {
    return this.currencyCode == CurrencyCode.pab;
  }

  bool get isCurrencyCodePen {
    return this.currencyCode == CurrencyCode.pen;
  }

  bool get isCurrencyCodePgk {
    return this.currencyCode == CurrencyCode.pgk;
  }

  bool get isCurrencyCodePhp {
    return this.currencyCode == CurrencyCode.php;
  }

  bool get isCurrencyCodePkr {
    return this.currencyCode == CurrencyCode.pkr;
  }

  bool get isCurrencyCodePln {
    return this.currencyCode == CurrencyCode.pln;
  }

  bool get isCurrencyCodePyg {
    return this.currencyCode == CurrencyCode.pyg;
  }

  bool get isCurrencyCodeQar {
    return this.currencyCode == CurrencyCode.qar;
  }

  bool get isCurrencyCodeRon {
    return this.currencyCode == CurrencyCode.ron;
  }

  bool get isCurrencyCodeRsd {
    return this.currencyCode == CurrencyCode.rsd;
  }

  bool get isCurrencyCodeRub {
    return this.currencyCode == CurrencyCode.rub;
  }

  bool get isCurrencyCodeRwf {
    return this.currencyCode == CurrencyCode.rwf;
  }

  bool get isCurrencyCodeSar {
    return this.currencyCode == CurrencyCode.sar;
  }

  bool get isCurrencyCodeSbd {
    return this.currencyCode == CurrencyCode.sbd;
  }

  bool get isCurrencyCodeScr {
    return this.currencyCode == CurrencyCode.scr;
  }

  bool get isCurrencyCodeSdg {
    return this.currencyCode == CurrencyCode.sdg;
  }

  bool get isCurrencyCodeSek {
    return this.currencyCode == CurrencyCode.sek;
  }

  bool get isCurrencyCodeSgd {
    return this.currencyCode == CurrencyCode.sgd;
  }

  bool get isCurrencyCodeShp {
    return this.currencyCode == CurrencyCode.shp;
  }

  bool get isCurrencyCodeSll {
    return this.currencyCode == CurrencyCode.sll;
  }

  bool get isCurrencyCodeSos {
    return this.currencyCode == CurrencyCode.sos;
  }

  bool get isCurrencyCodeSrd {
    return this.currencyCode == CurrencyCode.srd;
  }

  bool get isCurrencyCodeSsp {
    return this.currencyCode == CurrencyCode.ssp;
  }

  bool get isCurrencyCodeStn {
    return this.currencyCode == CurrencyCode.stn;
  }

  bool get isCurrencyCodeSvc {
    return this.currencyCode == CurrencyCode.svc;
  }

  bool get isCurrencyCodeSyp {
    return this.currencyCode == CurrencyCode.syp;
  }

  bool get isCurrencyCodeSzl {
    return this.currencyCode == CurrencyCode.szl;
  }

  bool get isCurrencyCodeThb {
    return this.currencyCode == CurrencyCode.thb;
  }

  bool get isCurrencyCodeTjs {
    return this.currencyCode == CurrencyCode.tjs;
  }

  bool get isCurrencyCodeTmt {
    return this.currencyCode == CurrencyCode.tmt;
  }

  bool get isCurrencyCodeTnd {
    return this.currencyCode == CurrencyCode.tnd;
  }

  bool get isCurrencyCodeTop {
    return this.currencyCode == CurrencyCode.top;
  }

  bool get isCurrencyCodeTry_ {
    return this.currencyCode == CurrencyCode.try_;
  }

  bool get isCurrencyCodeTtd {
    return this.currencyCode == CurrencyCode.ttd;
  }

  bool get isCurrencyCodeTwd {
    return this.currencyCode == CurrencyCode.twd;
  }

  bool get isCurrencyCodeTzs {
    return this.currencyCode == CurrencyCode.tzs;
  }

  bool get isCurrencyCodeUah {
    return this.currencyCode == CurrencyCode.uah;
  }

  bool get isCurrencyCodeUgx {
    return this.currencyCode == CurrencyCode.ugx;
  }

  bool get isCurrencyCodeUsd {
    return this.currencyCode == CurrencyCode.usd;
  }

  bool get isCurrencyCodeUyu {
    return this.currencyCode == CurrencyCode.uyu;
  }

  bool get isCurrencyCodeUzs {
    return this.currencyCode == CurrencyCode.uzs;
  }

  bool get isCurrencyCodeVes {
    return this.currencyCode == CurrencyCode.ves;
  }

  bool get isCurrencyCodeVnd {
    return this.currencyCode == CurrencyCode.vnd;
  }

  bool get isCurrencyCodeVuv {
    return this.currencyCode == CurrencyCode.vuv;
  }

  bool get isCurrencyCodeWst {
    return this.currencyCode == CurrencyCode.wst;
  }

  bool get isCurrencyCodeXaf {
    return this.currencyCode == CurrencyCode.xaf;
  }

  bool get isCurrencyCodeXcd {
    return this.currencyCode == CurrencyCode.xcd;
  }

  bool get isCurrencyCodeXof {
    return this.currencyCode == CurrencyCode.xof;
  }

  bool get isCurrencyCodeXpf {
    return this.currencyCode == CurrencyCode.xpf;
  }

  bool get isCurrencyCodeYer {
    return this.currencyCode == CurrencyCode.yer;
  }

  bool get isCurrencyCodeZar {
    return this.currencyCode == CurrencyCode.zar;
  }

  bool get isCurrencyCodeZmw {
    return this.currencyCode == CurrencyCode.zmw;
  }

  bool get isCurrencyCodeZwl {
    return this.currencyCode == CurrencyCode.zwl;
  }

  Map<String, dynamic> get customFieldsRequired {
    return this.customFields ??
        (throw StateError('customFields is required but was null'));
  }

  bool get hasCustomFields {
    return this.customFields?.isNotEmpty ?? false;
  }

  bool get noCustomFields {
    return this.customFields?.isEmpty ?? true;
  }

  bool get hasCustomer {
    return this.customer != null;
  }

  bool get noCustomer {
    return this.customer == null;
  }

  Customer get customerRequired {
    return this.customer ??
        (throw StateError('customer is required but was null'));
  }

  bool get hasDiscounts {
    return this.discounts.isNotEmpty;
  }

  bool get noDiscounts {
    return this.discounts.isEmpty;
  }

  List<Fulfillment> get fulfillmentsRequired {
    return this.fulfillments ??
        (throw StateError('fulfillments is required but was null'));
  }

  bool get hasFulfillments {
    return this.fulfillments?.isNotEmpty ?? false;
  }

  bool get noFulfillments {
    return this.fulfillments?.isEmpty ?? true;
  }

  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get hasLines {
    return this.lines.isNotEmpty;
  }

  bool get noLines {
    return this.lines.isEmpty;
  }

  bool get hasOrderPlacedAt {
    return this.orderPlacedAt != null;
  }

  bool get noOrderPlacedAt {
    return this.orderPlacedAt == null;
  }

  DateTime get orderPlacedAtRequired {
    return this.orderPlacedAt ??
        (throw StateError('orderPlacedAt is required but was null'));
  }

  List<Payment> get paymentsRequired {
    return this.payments ??
        (throw StateError('payments is required but was null'));
  }

  bool get hasPayments {
    return this.payments?.isNotEmpty ?? false;
  }

  bool get noPayments {
    return this.payments?.isEmpty ?? true;
  }

  bool get hasPromotions {
    return this.promotions.isNotEmpty;
  }

  bool get noPromotions {
    return this.promotions.isEmpty;
  }

  bool get hasShippingAddress {
    return this.shippingAddress != null;
  }

  bool get noShippingAddress {
    return this.shippingAddress == null;
  }

  OrderAddress get shippingAddressRequired {
    return this.shippingAddress ??
        (throw StateError('shippingAddress is required but was null'));
  }

  bool get hasShippingLines {
    return this.shippingLines.isNotEmpty;
  }

  bool get noShippingLines {
    return this.shippingLines.isEmpty;
  }

  bool get hasState {
    return this.state.isNotEmpty;
  }

  bool get noState {
    return this.state.isEmpty;
  }

  bool get hasSurcharges {
    return this.surcharges.isNotEmpty;
  }

  bool get noSurcharges {
    return this.surcharges.isEmpty;
  }

  bool get hasTaxSummary {
    return this.taxSummary.isNotEmpty;
  }

  bool get noTaxSummary {
    return this.taxSummary.isEmpty;
  }

  bool get isTypeAggregate {
    return this.type == OrderType.aggregate;
  }

  bool get isTypeRegular {
    return this.type == OrderType.regular;
  }

  bool get isTypeSeller {
    return this.type == OrderType.seller;
  }
}

extension OrderSerialization on Order {
  Map<String, dynamic> toJson() {
    return _$OrderToJson(this);
  }
}

enum Order$ {
  active,
  billingAddress,
  code,
  couponCodes,
  createdAt,
  currencyCode,
  customFields,
  customer,
  discounts,
  fulfillments,
  history,
  id,
  lines,
  orderPlacedAt,
  payments,
  promotions,
  shipping,
  shippingAddress,
  shippingLines,
  shippingWithTax,
  state,
  subTotal,
  subTotalWithTax,
  surcharges,
  taxSummary,
  total,
  totalQuantity,
  totalWithTax,
  type,
  updatedAt,
}

class OrderPatch extends PatchBase<Order, Order$> {
  Order applyTo(Order entity) {
    return entity.patchWithOrder(this);
  }

  OrderPatch withActive(bool? value) {
    patchMap[Order$.active] = value;
    return this;
  }

  OrderPatch withBillingAddress(OrderAddress? value) {
    patchMap[Order$.billingAddress] = value;
    return this;
  }

  OrderPatch withBillingAddressPatch(OrderAddressPatch patch) {
    patchMap[Order$.billingAddress] = patch;
    return this;
  }

  OrderPatch withBillingAddressPatchFunc(
    OrderAddressPatch Function(OrderAddressPatch) patch,
  ) {
    patchMap[Order$.billingAddress] = (dynamic current) {
      var currentPatch = OrderAddressPatch();
      return patch(currentPatch).applyTo(current as OrderAddress);
    };
    return this;
  }

  OrderPatch withCode(String? value) {
    patchMap[Order$.code] = value;
    return this;
  }

  OrderPatch withCouponCodes(List<String>? value) {
    patchMap[Order$.couponCodes] = value;
    return this;
  }

  OrderPatch withCreatedAt(DateTime? value) {
    patchMap[Order$.createdAt] = value;
    return this;
  }

  OrderPatch withCurrencyCode(CurrencyCode? value) {
    patchMap[Order$.currencyCode] = value;
    return this;
  }

  OrderPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[Order$.customFields] = value;
    return this;
  }

  OrderPatch withCustomer(Customer? value) {
    patchMap[Order$.customer] = value;
    return this;
  }

  OrderPatch withCustomerPatch(CustomerPatch patch) {
    patchMap[Order$.customer] = patch;
    return this;
  }

  OrderPatch withCustomerPatchFunc(
    CustomerPatch Function(CustomerPatch) patch,
  ) {
    patchMap[Order$.customer] = (dynamic current) {
      var currentPatch = CustomerPatch();
      return patch(currentPatch).applyTo(current as Customer);
    };
    return this;
  }

  OrderPatch withDiscounts(List<Discount>? value) {
    patchMap[Order$.discounts] = value;
    return this;
  }

  OrderPatch updateDiscountsAt(
    int index,
    DiscountPatch Function(DiscountPatch) patch,
  ) {
    patchMap[Order$.discounts] = (List<dynamic> list) {
      var updatedList = List<Discount>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(DiscountPatch())
            .applyTo(updatedList[index] as Discount);
      }
      return updatedList;
    };
    return this;
  }

  OrderPatch withFulfillments(List<Fulfillment>? value) {
    patchMap[Order$.fulfillments] = value;
    return this;
  }

  OrderPatch updateFulfillmentsAt(
    int index,
    FulfillmentPatch Function(FulfillmentPatch) patch,
  ) {
    patchMap[Order$.fulfillments] = (List<dynamic> list) {
      var updatedList = List<Fulfillment>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(FulfillmentPatch())
            .applyTo(updatedList[index] as Fulfillment);
      }
      return updatedList;
    };
    return this;
  }

  OrderPatch withHistory(HistoryEntryList? value) {
    patchMap[Order$.history] = value;
    return this;
  }

  OrderPatch withHistoryPatch(HistoryEntryListPatch patch) {
    patchMap[Order$.history] = patch;
    return this;
  }

  OrderPatch withHistoryPatchFunc(
    HistoryEntryListPatch Function(HistoryEntryListPatch) patch,
  ) {
    patchMap[Order$.history] = (dynamic current) {
      var currentPatch = HistoryEntryListPatch();
      return patch(currentPatch).applyTo(current as HistoryEntryList);
    };
    return this;
  }

  OrderPatch withId(String? value) {
    patchMap[Order$.id] = value;
    return this;
  }

  OrderPatch withLines(List<OrderLine>? value) {
    patchMap[Order$.lines] = value;
    return this;
  }

  OrderPatch updateLinesAt(
    int index,
    OrderLinePatch Function(OrderLinePatch) patch,
  ) {
    patchMap[Order$.lines] = (List<dynamic> list) {
      var updatedList = List<OrderLine>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(OrderLinePatch())
            .applyTo(updatedList[index] as OrderLine);
      }
      return updatedList;
    };
    return this;
  }

  OrderPatch withOrderPlacedAt(DateTime? value) {
    patchMap[Order$.orderPlacedAt] = value;
    return this;
  }

  OrderPatch withPayments(List<Payment>? value) {
    patchMap[Order$.payments] = value;
    return this;
  }

  OrderPatch updatePaymentsAt(
    int index,
    PaymentPatch Function(PaymentPatch) patch,
  ) {
    patchMap[Order$.payments] = (List<dynamic> list) {
      var updatedList = List<Payment>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(PaymentPatch())
            .applyTo(updatedList[index] as Payment);
      }
      return updatedList;
    };
    return this;
  }

  OrderPatch withPromotions(List<Promotion>? value) {
    patchMap[Order$.promotions] = value;
    return this;
  }

  OrderPatch updatePromotionsAt(
    int index,
    PromotionPatch Function(PromotionPatch) patch,
  ) {
    patchMap[Order$.promotions] = (List<dynamic> list) {
      var updatedList = List<Promotion>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(PromotionPatch())
            .applyTo(updatedList[index] as Promotion);
      }
      return updatedList;
    };
    return this;
  }

  OrderPatch withShipping(double? value) {
    patchMap[Order$.shipping] = value;
    return this;
  }

  OrderPatch withShippingAddress(OrderAddress? value) {
    patchMap[Order$.shippingAddress] = value;
    return this;
  }

  OrderPatch withShippingAddressPatch(OrderAddressPatch patch) {
    patchMap[Order$.shippingAddress] = patch;
    return this;
  }

  OrderPatch withShippingAddressPatchFunc(
    OrderAddressPatch Function(OrderAddressPatch) patch,
  ) {
    patchMap[Order$.shippingAddress] = (dynamic current) {
      var currentPatch = OrderAddressPatch();
      return patch(currentPatch).applyTo(current as OrderAddress);
    };
    return this;
  }

  OrderPatch withShippingLines(List<ShippingLine>? value) {
    patchMap[Order$.shippingLines] = value;
    return this;
  }

  OrderPatch updateShippingLinesAt(
    int index,
    ShippingLinePatch Function(ShippingLinePatch) patch,
  ) {
    patchMap[Order$.shippingLines] = (List<dynamic> list) {
      var updatedList = List<ShippingLine>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ShippingLinePatch())
            .applyTo(updatedList[index] as ShippingLine);
      }
      return updatedList;
    };
    return this;
  }

  OrderPatch withShippingWithTax(double? value) {
    patchMap[Order$.shippingWithTax] = value;
    return this;
  }

  OrderPatch withState(String? value) {
    patchMap[Order$.state] = value;
    return this;
  }

  OrderPatch withSubTotal(double? value) {
    patchMap[Order$.subTotal] = value;
    return this;
  }

  OrderPatch withSubTotalWithTax(double? value) {
    patchMap[Order$.subTotalWithTax] = value;
    return this;
  }

  OrderPatch withSurcharges(List<Surcharge>? value) {
    patchMap[Order$.surcharges] = value;
    return this;
  }

  OrderPatch updateSurchargesAt(
    int index,
    SurchargePatch Function(SurchargePatch) patch,
  ) {
    patchMap[Order$.surcharges] = (List<dynamic> list) {
      var updatedList = List<Surcharge>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(SurchargePatch())
            .applyTo(updatedList[index] as Surcharge);
      }
      return updatedList;
    };
    return this;
  }

  OrderPatch withTaxSummary(List<OrderTaxSummary>? value) {
    patchMap[Order$.taxSummary] = value;
    return this;
  }

  OrderPatch updateTaxSummaryAt(
    int index,
    OrderTaxSummaryPatch Function(OrderTaxSummaryPatch) patch,
  ) {
    patchMap[Order$.taxSummary] = (List<dynamic> list) {
      var updatedList = List<OrderTaxSummary>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(OrderTaxSummaryPatch())
            .applyTo(updatedList[index] as OrderTaxSummary);
      }
      return updatedList;
    };
    return this;
  }

  OrderPatch withTotal(double? value) {
    patchMap[Order$.total] = value;
    return this;
  }

  OrderPatch withTotalQuantity(int? value) {
    patchMap[Order$.totalQuantity] = value;
    return this;
  }

  OrderPatch withTotalWithTax(double? value) {
    patchMap[Order$.totalWithTax] = value;
    return this;
  }

  OrderPatch withType(OrderType? value) {
    patchMap[Order$.type] = value;
    return this;
  }

  OrderPatch withUpdatedAt(DateTime? value) {
    patchMap[Order$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [Order] query construction
abstract final class OrderFields {
  static const active = Field<Order, bool>('active', _$active);

  static const billingAddress = Field<Order, OrderAddress?>(
    'billingAddress',
    _$billingAddress,
  );

  static const code = Field<Order, String>('code', _$code);

  static const couponCodes = Field<Order, List<String>>(
    'couponCodes',
    _$couponCodes,
  );

  static const createdAt = Field<Order, DateTime>('createdAt', _$createdAt);

  static const currencyCode = Field<Order, CurrencyCode>(
    'currencyCode',
    _$currencyCode,
  );

  static const customFields = Field<Order, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const customer = Field<Order, Customer?>('customer', _$customer);

  static const discounts = Field<Order, List<Discount>>(
    'discounts',
    _$discounts,
  );

  static const fulfillments = Field<Order, List<Fulfillment>?>(
    'fulfillments',
    _$fulfillments,
  );

  static const history = Field<Order, HistoryEntryList>('history', _$history);

  static const id = Field<Order, String>('id', _$id);

  static const lines = Field<Order, List<OrderLine>>('lines', _$lines);

  static const orderPlacedAt = Field<Order, DateTime?>(
    'orderPlacedAt',
    _$orderPlacedAt,
  );

  static const payments = Field<Order, List<Payment>?>('payments', _$payments);

  static const promotions = Field<Order, List<Promotion>>(
    'promotions',
    _$promotions,
  );

  static const shipping = Field<Order, double>('shipping', _$shipping);

  static const shippingAddress = Field<Order, OrderAddress?>(
    'shippingAddress',
    _$shippingAddress,
  );

  static const shippingLines = Field<Order, List<ShippingLine>>(
    'shippingLines',
    _$shippingLines,
  );

  static const shippingWithTax = Field<Order, double>(
    'shippingWithTax',
    _$shippingWithTax,
  );

  static const state = Field<Order, String>('state', _$state);

  static const subTotal = Field<Order, double>('subTotal', _$subTotal);

  static const subTotalWithTax = Field<Order, double>(
    'subTotalWithTax',
    _$subTotalWithTax,
  );

  static const surcharges = Field<Order, List<Surcharge>>(
    'surcharges',
    _$surcharges,
  );

  static const taxSummary = Field<Order, List<OrderTaxSummary>>(
    'taxSummary',
    _$taxSummary,
  );

  static const total = Field<Order, double>('total', _$total);

  static const totalQuantity = Field<Order, int>(
    'totalQuantity',
    _$totalQuantity,
  );

  static const totalWithTax = Field<Order, double>(
    'totalWithTax',
    _$totalWithTax,
  );

  static const type = Field<Order, OrderType>('type', _$type);

  static const updatedAt = Field<Order, DateTime>('updatedAt', _$updatedAt);

  static bool _$active(Order e) {
    return e.active;
  }

  static OrderAddress? _$billingAddress(Order e) {
    return e.billingAddress;
  }

  static String _$code(Order e) {
    return e.code;
  }

  static List<String> _$couponCodes(Order e) {
    return e.couponCodes;
  }

  static DateTime _$createdAt(Order e) {
    return e.createdAt;
  }

  static CurrencyCode _$currencyCode(Order e) {
    return e.currencyCode;
  }

  static Map<String, dynamic>? _$customFields(Order e) {
    return e.customFields;
  }

  static Customer? _$customer(Order e) {
    return e.customer;
  }

  static List<Discount> _$discounts(Order e) {
    return e.discounts;
  }

  static List<Fulfillment>? _$fulfillments(Order e) {
    return e.fulfillments;
  }

  static HistoryEntryList _$history(Order e) {
    return e.history;
  }

  static String _$id(Order e) {
    return e.id;
  }

  static List<OrderLine> _$lines(Order e) {
    return e.lines;
  }

  static DateTime? _$orderPlacedAt(Order e) {
    return e.orderPlacedAt;
  }

  static List<Payment>? _$payments(Order e) {
    return e.payments;
  }

  static List<Promotion> _$promotions(Order e) {
    return e.promotions;
  }

  static double _$shipping(Order e) {
    return e.shipping;
  }

  static OrderAddress? _$shippingAddress(Order e) {
    return e.shippingAddress;
  }

  static List<ShippingLine> _$shippingLines(Order e) {
    return e.shippingLines;
  }

  static double _$shippingWithTax(Order e) {
    return e.shippingWithTax;
  }

  static String _$state(Order e) {
    return e.state;
  }

  static double _$subTotal(Order e) {
    return e.subTotal;
  }

  static double _$subTotalWithTax(Order e) {
    return e.subTotalWithTax;
  }

  static List<Surcharge> _$surcharges(Order e) {
    return e.surcharges;
  }

  static List<OrderTaxSummary> _$taxSummary(Order e) {
    return e.taxSummary;
  }

  static double _$total(Order e) {
    return e.total;
  }

  static int _$totalQuantity(Order e) {
    return e.totalQuantity;
  }

  static double _$totalWithTax(Order e) {
    return e.totalWithTax;
  }

  static OrderType _$type(Order e) {
    return e.type;
  }

  static DateTime _$updatedAt(Order e) {
    return e.updatedAt;
  }
}

extension OrderCompareE on Order {
  Map<String, dynamic> compareToOrder(Order other) {
    final Map<String, dynamic> diff = {};

    if (active != other.active) {
      diff['active'] = () => other.active;
    }

    if (billingAddress != other.billingAddress) {
      diff['billingAddress'] = () => other.billingAddress;
    }

    if (code != other.code) {
      diff['code'] = () => other.code;
    }

    if (couponCodes != other.couponCodes) {
      diff['couponCodes'] = () => other.couponCodes;
    }

    if (createdAt != other.createdAt) {
      diff['createdAt'] = () => other.createdAt;
    }

    if (currencyCode != other.currencyCode) {
      diff['currencyCode'] = () => other.currencyCode;
    }

    if (customFields != other.customFields) {
      diff['customFields'] = () => other.customFields;
    }

    if (customer != other.customer) {
      diff['customer'] = () => other.customer;
    }

    if (discounts != other.discounts) {
      diff['discounts'] = () => other.discounts;
    }

    if (fulfillments != other.fulfillments) {
      diff['fulfillments'] = () => other.fulfillments;
    }

    if (history != other.history) {
      diff['history'] = () => other.history;
    }

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (lines != other.lines) {
      diff['lines'] = () => other.lines;
    }

    if (orderPlacedAt != other.orderPlacedAt) {
      diff['orderPlacedAt'] = () => other.orderPlacedAt;
    }

    if (payments != other.payments) {
      diff['payments'] = () => other.payments;
    }

    if (promotions != other.promotions) {
      diff['promotions'] = () => other.promotions;
    }

    if (shipping != other.shipping) {
      diff['shipping'] = () => other.shipping;
    }

    if (shippingAddress != other.shippingAddress) {
      diff['shippingAddress'] = () => other.shippingAddress;
    }

    if (shippingLines != other.shippingLines) {
      diff['shippingLines'] = () => other.shippingLines;
    }

    if (shippingWithTax != other.shippingWithTax) {
      diff['shippingWithTax'] = () => other.shippingWithTax;
    }

    if (state != other.state) {
      diff['state'] = () => other.state;
    }

    if (subTotal != other.subTotal) {
      diff['subTotal'] = () => other.subTotal;
    }

    if (subTotalWithTax != other.subTotalWithTax) {
      diff['subTotalWithTax'] = () => other.subTotalWithTax;
    }

    if (surcharges != other.surcharges) {
      diff['surcharges'] = () => other.surcharges;
    }

    if (taxSummary != other.taxSummary) {
      diff['taxSummary'] = () => other.taxSummary;
    }

    if (total != other.total) {
      diff['total'] = () => other.total;
    }

    if (totalQuantity != other.totalQuantity) {
      diff['totalQuantity'] = () => other.totalQuantity;
    }

    if (totalWithTax != other.totalWithTax) {
      diff['totalWithTax'] = () => other.totalWithTax;
    }

    if (type != other.type) {
      diff['type'] = () => other.type;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
