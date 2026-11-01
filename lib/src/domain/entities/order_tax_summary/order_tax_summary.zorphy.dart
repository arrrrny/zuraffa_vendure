// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'order_tax_summary.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class OrderTaxSummary {
  OrderTaxSummary({
    required String this.description,
    required double this.taxBase,
    required double this.taxRate,
    required double this.taxTotal,
  });

  factory OrderTaxSummary.fromJson(Map<String, dynamic> json) =>
      _$OrderTaxSummaryFromJson(json);

  final String description;

  final double taxBase;

  final double taxRate;

  final double taxTotal;

  OrderTaxSummary copyWith({
    String? description,
    double? taxBase,
    double? taxRate,
    double? taxTotal,
  }) {
    return OrderTaxSummary(
      description: description ?? this.description,
      taxBase: taxBase ?? this.taxBase,
      taxRate: taxRate ?? this.taxRate,
      taxTotal: taxTotal ?? this.taxTotal,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  OrderTaxSummary copyWithField<T>(Field<OrderTaxSummary, T> field, T value) {
    switch (field.name) {
      case 'description':
        return copyWith(description: value as String);
      case 'taxBase':
        return copyWith(taxBase: value as double);
      case 'taxRate':
        return copyWith(taxRate: value as double);
      case 'taxTotal':
        return copyWith(taxTotal: value as double);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'OrderTaxSummary has no settable field with this name',
        );
    }
  }

  OrderTaxSummary copyWithOrderTaxSummary({
    String? description,
    double? taxBase,
    double? taxRate,
    double? taxTotal,
  }) {
    return copyWith(
      description: description,
      taxBase: taxBase,
      taxRate: taxRate,
      taxTotal: taxTotal,
    );
  }

  OrderTaxSummary patchWithOrderTaxSummary([OrderTaxSummaryPatch? patchInput]) {
    final _patcher = patchInput ?? OrderTaxSummaryPatch();
    final _patchMap = _patcher.patchMap;
    return OrderTaxSummary(
      description: _patchMap.containsKey(OrderTaxSummary$.description)
          ? ((_patchMap[OrderTaxSummary$.description] is Function)
                    ? _patchMap[OrderTaxSummary$.description](this.description)
                    : (_patchMap[OrderTaxSummary$.description] is Patch)
                    ? _patchMap[OrderTaxSummary$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[OrderTaxSummary$.description])
                as String
          : this.description,
      taxBase: _patchMap.containsKey(OrderTaxSummary$.taxBase)
          ? ((_patchMap[OrderTaxSummary$.taxBase] is Function)
                    ? _patchMap[OrderTaxSummary$.taxBase](this.taxBase)
                    : (_patchMap[OrderTaxSummary$.taxBase] is Patch)
                    ? _patchMap[OrderTaxSummary$.taxBase].applyTo(this.taxBase)
                    : _patchMap[OrderTaxSummary$.taxBase])
                as double
          : this.taxBase,
      taxRate: _patchMap.containsKey(OrderTaxSummary$.taxRate)
          ? ((_patchMap[OrderTaxSummary$.taxRate] is Function)
                    ? _patchMap[OrderTaxSummary$.taxRate](this.taxRate)
                    : (_patchMap[OrderTaxSummary$.taxRate] is Patch)
                    ? _patchMap[OrderTaxSummary$.taxRate].applyTo(this.taxRate)
                    : _patchMap[OrderTaxSummary$.taxRate])
                as double
          : this.taxRate,
      taxTotal: _patchMap.containsKey(OrderTaxSummary$.taxTotal)
          ? ((_patchMap[OrderTaxSummary$.taxTotal] is Function)
                    ? _patchMap[OrderTaxSummary$.taxTotal](this.taxTotal)
                    : (_patchMap[OrderTaxSummary$.taxTotal] is Patch)
                    ? _patchMap[OrderTaxSummary$.taxTotal].applyTo(
                        this.taxTotal,
                      )
                    : _patchMap[OrderTaxSummary$.taxTotal])
                as double
          : this.taxTotal,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrderTaxSummary &&
        description == other.description &&
        taxBase == other.taxBase &&
        taxRate == other.taxRate &&
        taxTotal == other.taxTotal;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.description,
      this.taxBase,
      this.taxRate,
      this.taxTotal,
    );
  }

  @override
  String toString() {
    return 'OrderTaxSummary(' +
        'description: ${description}' +
        ', ' +
        'taxBase: ${taxBase}' +
        ', ' +
        'taxRate: ${taxRate}' +
        ', ' +
        'taxTotal: ${taxTotal})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$OrderTaxSummaryToJson(this);
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

extension OrderTaxSummaryPropertyHelpers on OrderTaxSummary {
  bool get hasDescription {
    return this.description.isNotEmpty;
  }

  bool get noDescription {
    return this.description.isEmpty;
  }
}

extension OrderTaxSummarySerialization on OrderTaxSummary {
  Map<String, dynamic> toJson() {
    return _$OrderTaxSummaryToJson(this);
  }
}

enum OrderTaxSummary$ { description, taxBase, taxRate, taxTotal }

class OrderTaxSummaryPatch
    extends PatchBase<OrderTaxSummary, OrderTaxSummary$> {
  OrderTaxSummary applyTo(OrderTaxSummary entity) {
    return entity.patchWithOrderTaxSummary(this);
  }

  OrderTaxSummaryPatch withDescription(String? value) {
    patchMap[OrderTaxSummary$.description] = value;
    return this;
  }

  OrderTaxSummaryPatch withTaxBase(double? value) {
    patchMap[OrderTaxSummary$.taxBase] = value;
    return this;
  }

  OrderTaxSummaryPatch withTaxRate(double? value) {
    patchMap[OrderTaxSummary$.taxRate] = value;
    return this;
  }

  OrderTaxSummaryPatch withTaxTotal(double? value) {
    patchMap[OrderTaxSummary$.taxTotal] = value;
    return this;
  }
}

/// Field descriptors for [OrderTaxSummary] query construction
abstract final class OrderTaxSummaryFields {
  static const description = Field<OrderTaxSummary, String>(
    'description',
    _$description,
  );

  static const taxBase = Field<OrderTaxSummary, double>('taxBase', _$taxBase);

  static const taxRate = Field<OrderTaxSummary, double>('taxRate', _$taxRate);

  static const taxTotal = Field<OrderTaxSummary, double>(
    'taxTotal',
    _$taxTotal,
  );

  static String _$description(OrderTaxSummary e) {
    return e.description;
  }

  static double _$taxBase(OrderTaxSummary e) {
    return e.taxBase;
  }

  static double _$taxRate(OrderTaxSummary e) {
    return e.taxRate;
  }

  static double _$taxTotal(OrderTaxSummary e) {
    return e.taxTotal;
  }
}

extension OrderTaxSummaryCompareE on OrderTaxSummary {
  Map<String, dynamic> compareToOrderTaxSummary(OrderTaxSummary other) {
    final Map<String, dynamic> diff = {};

    if (description != other.description) {
      diff['description'] = () => other.description;
    }

    if (taxBase != other.taxBase) {
      diff['taxBase'] = () => other.taxBase;
    }

    if (taxRate != other.taxRate) {
      diff['taxRate'] = () => other.taxRate;
    }

    if (taxTotal != other.taxTotal) {
      diff['taxTotal'] = () => other.taxTotal;
    }
    return diff;
  }
}
