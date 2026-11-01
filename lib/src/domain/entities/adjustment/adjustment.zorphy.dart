// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'adjustment.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Adjustment {
  Adjustment({
    required String this.adjustmentSource,
    required double this.amount,
    Map<String, dynamic>? this.data,
    required String this.description,
    required AdjustmentType this.type,
  });

  factory Adjustment.fromJson(Map<String, dynamic> json) =>
      _$AdjustmentFromJson(json);

  final String adjustmentSource;

  final double amount;

  final Map<String, dynamic>? data;

  final String description;

  final AdjustmentType type;

  Adjustment copyWith({
    String? adjustmentSource,
    double? amount,
    Map<String, dynamic>? data,
    String? description,
    AdjustmentType? type,
  }) {
    return Adjustment(
      adjustmentSource: adjustmentSource ?? this.adjustmentSource,
      amount: amount ?? this.amount,
      data: data ?? this.data,
      description: description ?? this.description,
      type: type ?? this.type,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Adjustment copyWithField<T>(Field<Adjustment, T> field, T value) {
    switch (field.name) {
      case 'adjustmentSource':
        return copyWith(adjustmentSource: value as String);
      case 'amount':
        return copyWith(amount: value as double);
      case 'data':
        return copyWith(data: value as Map<String, dynamic>?);
      case 'description':
        return copyWith(description: value as String);
      case 'type':
        return copyWith(type: value as AdjustmentType);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Adjustment has no settable field with this name',
        );
    }
  }

  Adjustment copyWithAdjustment({
    String? adjustmentSource,
    double? amount,
    Map<String, dynamic>? data,
    String? description,
    AdjustmentType? type,
  }) {
    return copyWith(
      adjustmentSource: adjustmentSource,
      amount: amount,
      data: data,
      description: description,
      type: type,
    );
  }

  Adjustment patchWithAdjustment([AdjustmentPatch? patchInput]) {
    final _patcher = patchInput ?? AdjustmentPatch();
    final _patchMap = _patcher.patchMap;
    return Adjustment(
      adjustmentSource: _patchMap.containsKey(Adjustment$.adjustmentSource)
          ? ((_patchMap[Adjustment$.adjustmentSource] is Function)
                    ? _patchMap[Adjustment$.adjustmentSource](
                        this.adjustmentSource,
                      )
                    : (_patchMap[Adjustment$.adjustmentSource] is Patch)
                    ? _patchMap[Adjustment$.adjustmentSource].applyTo(
                        this.adjustmentSource,
                      )
                    : _patchMap[Adjustment$.adjustmentSource])
                as String
          : this.adjustmentSource,
      amount: _patchMap.containsKey(Adjustment$.amount)
          ? ((_patchMap[Adjustment$.amount] is Function)
                    ? _patchMap[Adjustment$.amount](this.amount)
                    : (_patchMap[Adjustment$.amount] is Patch)
                    ? _patchMap[Adjustment$.amount].applyTo(this.amount)
                    : _patchMap[Adjustment$.amount])
                as double
          : this.amount,
      data: _patchMap.containsKey(Adjustment$.data)
          ? ((_patchMap[Adjustment$.data] is Function)
                    ? _patchMap[Adjustment$.data](this.data)
                    : (_patchMap[Adjustment$.data] is Patch)
                    ? _patchMap[Adjustment$.data].applyTo(this.data)
                    : _patchMap[Adjustment$.data])
                as Map<String, dynamic>?
          : this.data,
      description: _patchMap.containsKey(Adjustment$.description)
          ? ((_patchMap[Adjustment$.description] is Function)
                    ? _patchMap[Adjustment$.description](this.description)
                    : (_patchMap[Adjustment$.description] is Patch)
                    ? _patchMap[Adjustment$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[Adjustment$.description])
                as String
          : this.description,
      type: _patchMap.containsKey(Adjustment$.type)
          ? ((_patchMap[Adjustment$.type] is Function)
                    ? _patchMap[Adjustment$.type](this.type)
                    : (_patchMap[Adjustment$.type] is Patch)
                    ? _patchMap[Adjustment$.type].applyTo(this.type)
                    : _patchMap[Adjustment$.type])
                as AdjustmentType
          : this.type,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Adjustment &&
        adjustmentSource == other.adjustmentSource &&
        amount == other.amount &&
        data == other.data &&
        description == other.description &&
        type == other.type;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.adjustmentSource,
      this.amount,
      this.data,
      this.description,
      this.type,
    );
  }

  @override
  String toString() {
    return 'Adjustment(' +
        'adjustmentSource: ${adjustmentSource}' +
        ', ' +
        'amount: ${amount}' +
        ', ' +
        'data: ${data}' +
        ', ' +
        'description: ${description}' +
        ', ' +
        'type: ${type})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$AdjustmentToJson(this);
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

extension AdjustmentPropertyHelpers on Adjustment {
  bool get hasAdjustmentSource {
    return this.adjustmentSource.isNotEmpty;
  }

  bool get noAdjustmentSource {
    return this.adjustmentSource.isEmpty;
  }

  Map<String, dynamic> get dataRequired {
    return this.data ?? (throw StateError('data is required but was null'));
  }

  bool get hasData {
    return this.data?.isNotEmpty ?? false;
  }

  bool get noData {
    return this.data?.isEmpty ?? true;
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

extension AdjustmentSerialization on Adjustment {
  Map<String, dynamic> toJson() {
    return _$AdjustmentToJson(this);
  }
}

enum Adjustment$ { adjustmentSource, amount, data, description, type }

class AdjustmentPatch extends PatchBase<Adjustment, Adjustment$> {
  Adjustment applyTo(Adjustment entity) {
    return entity.patchWithAdjustment(this);
  }

  AdjustmentPatch withAdjustmentSource(String? value) {
    patchMap[Adjustment$.adjustmentSource] = value;
    return this;
  }

  AdjustmentPatch withAmount(double? value) {
    patchMap[Adjustment$.amount] = value;
    return this;
  }

  AdjustmentPatch withData(Map<String, dynamic>? value) {
    patchMap[Adjustment$.data] = value;
    return this;
  }

  AdjustmentPatch withDescription(String? value) {
    patchMap[Adjustment$.description] = value;
    return this;
  }

  AdjustmentPatch withType(AdjustmentType? value) {
    patchMap[Adjustment$.type] = value;
    return this;
  }
}

/// Field descriptors for [Adjustment] query construction
abstract final class AdjustmentFields {
  static const adjustmentSource = Field<Adjustment, String>(
    'adjustmentSource',
    _$adjustmentSource,
  );

  static const amount = Field<Adjustment, double>('amount', _$amount);

  static const data = Field<Adjustment, Map<String, dynamic>?>('data', _$data);

  static const description = Field<Adjustment, String>(
    'description',
    _$description,
  );

  static const type = Field<Adjustment, AdjustmentType>('type', _$type);

  static String _$adjustmentSource(Adjustment e) {
    return e.adjustmentSource;
  }

  static double _$amount(Adjustment e) {
    return e.amount;
  }

  static Map<String, dynamic>? _$data(Adjustment e) {
    return e.data;
  }

  static String _$description(Adjustment e) {
    return e.description;
  }

  static AdjustmentType _$type(Adjustment e) {
    return e.type;
  }
}

extension AdjustmentCompareE on Adjustment {
  Map<String, dynamic> compareToAdjustment(Adjustment other) {
    final Map<String, dynamic> diff = {};

    if (adjustmentSource != other.adjustmentSource) {
      diff['adjustmentSource'] = () => other.adjustmentSource;
    }

    if (amount != other.amount) {
      diff['amount'] = () => other.amount;
    }

    if (data != other.data) {
      diff['data'] = () => other.data;
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
