// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'discount.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Discount {
  Discount({
    required String this.adjustmentSource,
    required double this.amount,
    required double this.amountWithTax,
    required String this.description,
    required AdjustmentType this.type,
  });

  factory Discount.fromJson(Map<String, dynamic> json) =>
      _$DiscountFromJson(json);

  final String adjustmentSource;

  final double amount;

  final double amountWithTax;

  final String description;

  final AdjustmentType type;

  Discount copyWith({
    String? adjustmentSource,
    double? amount,
    double? amountWithTax,
    String? description,
    AdjustmentType? type,
  }) {
    return Discount(
      adjustmentSource: adjustmentSource ?? this.adjustmentSource,
      amount: amount ?? this.amount,
      amountWithTax: amountWithTax ?? this.amountWithTax,
      description: description ?? this.description,
      type: type ?? this.type,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Discount copyWithField<T>(Field<Discount, T> field, T value) {
    switch (field.name) {
      case 'adjustmentSource':
        return copyWith(adjustmentSource: value as String);
      case 'amount':
        return copyWith(amount: value as double);
      case 'amountWithTax':
        return copyWith(amountWithTax: value as double);
      case 'description':
        return copyWith(description: value as String);
      case 'type':
        return copyWith(type: value as AdjustmentType);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Discount has no settable field with this name',
        );
    }
  }

  Discount copyWithDiscount({
    String? adjustmentSource,
    double? amount,
    double? amountWithTax,
    String? description,
    AdjustmentType? type,
  }) {
    return copyWith(
      adjustmentSource: adjustmentSource,
      amount: amount,
      amountWithTax: amountWithTax,
      description: description,
      type: type,
    );
  }

  Discount patchWithDiscount([DiscountPatch? patchInput]) {
    final _patcher = patchInput ?? DiscountPatch();
    final _patchMap = _patcher.patchMap;
    return Discount(
      adjustmentSource: _patchMap.containsKey(Discount$.adjustmentSource)
          ? ((_patchMap[Discount$.adjustmentSource] is Function)
                    ? _patchMap[Discount$.adjustmentSource](
                        this.adjustmentSource,
                      )
                    : (_patchMap[Discount$.adjustmentSource] is Patch)
                    ? _patchMap[Discount$.adjustmentSource].applyTo(
                        this.adjustmentSource,
                      )
                    : _patchMap[Discount$.adjustmentSource])
                as String
          : this.adjustmentSource,
      amount: _patchMap.containsKey(Discount$.amount)
          ? ((_patchMap[Discount$.amount] is Function)
                    ? _patchMap[Discount$.amount](this.amount)
                    : (_patchMap[Discount$.amount] is Patch)
                    ? _patchMap[Discount$.amount].applyTo(this.amount)
                    : _patchMap[Discount$.amount])
                as double
          : this.amount,
      amountWithTax: _patchMap.containsKey(Discount$.amountWithTax)
          ? ((_patchMap[Discount$.amountWithTax] is Function)
                    ? _patchMap[Discount$.amountWithTax](this.amountWithTax)
                    : (_patchMap[Discount$.amountWithTax] is Patch)
                    ? _patchMap[Discount$.amountWithTax].applyTo(
                        this.amountWithTax,
                      )
                    : _patchMap[Discount$.amountWithTax])
                as double
          : this.amountWithTax,
      description: _patchMap.containsKey(Discount$.description)
          ? ((_patchMap[Discount$.description] is Function)
                    ? _patchMap[Discount$.description](this.description)
                    : (_patchMap[Discount$.description] is Patch)
                    ? _patchMap[Discount$.description].applyTo(this.description)
                    : _patchMap[Discount$.description])
                as String
          : this.description,
      type: _patchMap.containsKey(Discount$.type)
          ? ((_patchMap[Discount$.type] is Function)
                    ? _patchMap[Discount$.type](this.type)
                    : (_patchMap[Discount$.type] is Patch)
                    ? _patchMap[Discount$.type].applyTo(this.type)
                    : _patchMap[Discount$.type])
                as AdjustmentType
          : this.type,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Discount &&
        adjustmentSource == other.adjustmentSource &&
        amount == other.amount &&
        amountWithTax == other.amountWithTax &&
        description == other.description &&
        type == other.type;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.adjustmentSource,
      this.amount,
      this.amountWithTax,
      this.description,
      this.type,
    );
  }

  @override
  String toString() {
    return 'Discount(' +
        'adjustmentSource: ${adjustmentSource}' +
        ', ' +
        'amount: ${amount}' +
        ', ' +
        'amountWithTax: ${amountWithTax}' +
        ', ' +
        'description: ${description}' +
        ', ' +
        'type: ${type})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$DiscountToJson(this);
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

extension DiscountPropertyHelpers on Discount {
  bool get hasAdjustmentSource {
    return this.adjustmentSource.isNotEmpty;
  }

  bool get noAdjustmentSource {
    return this.adjustmentSource.isEmpty;
  }

  bool get hasDescription {
    return this.description.isNotEmpty;
  }

  bool get noDescription {
    return this.description.isEmpty;
  }

  bool get isTypeDistributedOrderPromotion {
    return this.type == AdjustmentType.distributedOrderPromotion;
  }

  bool get isTypeOther {
    return this.type == AdjustmentType.other;
  }

  bool get isTypePromotion {
    return this.type == AdjustmentType.promotion;
  }
}

extension DiscountSerialization on Discount {
  Map<String, dynamic> toJson() {
    return _$DiscountToJson(this);
  }
}

enum Discount$ { adjustmentSource, amount, amountWithTax, description, type }

class DiscountPatch extends PatchBase<Discount, Discount$> {
  Discount applyTo(Discount entity) {
    return entity.patchWithDiscount(this);
  }

  DiscountPatch withAdjustmentSource(String? value) {
    patchMap[Discount$.adjustmentSource] = value;
    return this;
  }

  DiscountPatch withAmount(double? value) {
    patchMap[Discount$.amount] = value;
    return this;
  }

  DiscountPatch withAmountWithTax(double? value) {
    patchMap[Discount$.amountWithTax] = value;
    return this;
  }

  DiscountPatch withDescription(String? value) {
    patchMap[Discount$.description] = value;
    return this;
  }

  DiscountPatch withType(AdjustmentType? value) {
    patchMap[Discount$.type] = value;
    return this;
  }
}

/// Field descriptors for [Discount] query construction
abstract final class DiscountFields {
  static const adjustmentSource = Field<Discount, String>(
    'adjustmentSource',
    _$adjustmentSource,
  );

  static const amount = Field<Discount, double>('amount', _$amount);

  static const amountWithTax = Field<Discount, double>(
    'amountWithTax',
    _$amountWithTax,
  );

  static const description = Field<Discount, String>(
    'description',
    _$description,
  );

  static const type = Field<Discount, AdjustmentType>('type', _$type);

  static String _$adjustmentSource(Discount e) {
    return e.adjustmentSource;
  }

  static double _$amount(Discount e) {
    return e.amount;
  }

  static double _$amountWithTax(Discount e) {
    return e.amountWithTax;
  }

  static String _$description(Discount e) {
    return e.description;
  }

  static AdjustmentType _$type(Discount e) {
    return e.type;
  }
}

extension DiscountCompareE on Discount {
  Map<String, dynamic> compareToDiscount(Discount other) {
    final Map<String, dynamic> diff = {};

    if (adjustmentSource != other.adjustmentSource) {
      diff['adjustmentSource'] = () => other.adjustmentSource;
    }

    if (amount != other.amount) {
      diff['amount'] = () => other.amount;
    }

    if (amountWithTax != other.amountWithTax) {
      diff['amountWithTax'] = () => other.amountWithTax;
    }

    if (description != other.description) {
      diff['description'] = () => other.description;
    }

    if (type != other.type) {
      diff['type'] = () => other.type;
    }
    return diff;
  }
}
