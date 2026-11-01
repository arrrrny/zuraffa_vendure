// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'surcharge.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Surcharge {
  Surcharge({
    required DateTime this.createdAt,
    required String this.description,
    required String this.id,
    required double this.price,
    required double this.priceWithTax,
    String? this.sku,
    required List<TaxLine> this.taxLines,
    required double this.taxRate,
    required DateTime this.updatedAt,
  });

  factory Surcharge.fromJson(Map<String, dynamic> json) =>
      _$SurchargeFromJson(json);

  final DateTime createdAt;

  final String description;

  final String id;

  final double price;

  final double priceWithTax;

  final String? sku;

  final List<TaxLine> taxLines;

  final double taxRate;

  final DateTime updatedAt;

  Surcharge copyWith({
    DateTime? createdAt,
    String? description,
    String? id,
    double? price,
    double? priceWithTax,
    String? sku,
    List<TaxLine>? taxLines,
    double? taxRate,
    DateTime? updatedAt,
  }) {
    return Surcharge(
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      id: id ?? this.id,
      price: price ?? this.price,
      priceWithTax: priceWithTax ?? this.priceWithTax,
      sku: sku ?? this.sku,
      taxLines: taxLines ?? this.taxLines,
      taxRate: taxRate ?? this.taxRate,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Surcharge copyWithField<T>(Field<Surcharge, T> field, T value) {
    switch (field.name) {
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'description':
        return copyWith(description: value as String);
      case 'id':
        return copyWith(id: value as String);
      case 'price':
        return copyWith(price: value as double);
      case 'priceWithTax':
        return copyWith(priceWithTax: value as double);
      case 'sku':
        return copyWith(sku: value as String?);
      case 'taxLines':
        return copyWith(taxLines: value as List<TaxLine>);
      case 'taxRate':
        return copyWith(taxRate: value as double);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Surcharge has no settable field with this name',
        );
    }
  }

  Surcharge copyWithSurcharge({
    DateTime? createdAt,
    String? description,
    String? id,
    double? price,
    double? priceWithTax,
    String? sku,
    List<TaxLine>? taxLines,
    double? taxRate,
    DateTime? updatedAt,
  }) {
    return copyWith(
      createdAt: createdAt,
      description: description,
      id: id,
      price: price,
      priceWithTax: priceWithTax,
      sku: sku,
      taxLines: taxLines,
      taxRate: taxRate,
      updatedAt: updatedAt,
    );
  }

  Surcharge patchWithSurcharge([SurchargePatch? patchInput]) {
    final _patcher = patchInput ?? SurchargePatch();
    final _patchMap = _patcher.patchMap;
    return Surcharge(
      createdAt: _patchMap.containsKey(Surcharge$.createdAt)
          ? ((_patchMap[Surcharge$.createdAt] is Function)
                    ? _patchMap[Surcharge$.createdAt](this.createdAt)
                    : (_patchMap[Surcharge$.createdAt] is Patch)
                    ? _patchMap[Surcharge$.createdAt].applyTo(this.createdAt)
                    : _patchMap[Surcharge$.createdAt])
                as DateTime
          : this.createdAt,
      description: _patchMap.containsKey(Surcharge$.description)
          ? ((_patchMap[Surcharge$.description] is Function)
                    ? _patchMap[Surcharge$.description](this.description)
                    : (_patchMap[Surcharge$.description] is Patch)
                    ? _patchMap[Surcharge$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[Surcharge$.description])
                as String
          : this.description,
      id: _patchMap.containsKey(Surcharge$.id)
          ? ((_patchMap[Surcharge$.id] is Function)
                    ? _patchMap[Surcharge$.id](this.id)
                    : (_patchMap[Surcharge$.id] is Patch)
                    ? _patchMap[Surcharge$.id].applyTo(this.id)
                    : _patchMap[Surcharge$.id])
                as String
          : this.id,
      price: _patchMap.containsKey(Surcharge$.price)
          ? ((_patchMap[Surcharge$.price] is Function)
                    ? _patchMap[Surcharge$.price](this.price)
                    : (_patchMap[Surcharge$.price] is Patch)
                    ? _patchMap[Surcharge$.price].applyTo(this.price)
                    : _patchMap[Surcharge$.price])
                as double
          : this.price,
      priceWithTax: _patchMap.containsKey(Surcharge$.priceWithTax)
          ? ((_patchMap[Surcharge$.priceWithTax] is Function)
                    ? _patchMap[Surcharge$.priceWithTax](this.priceWithTax)
                    : (_patchMap[Surcharge$.priceWithTax] is Patch)
                    ? _patchMap[Surcharge$.priceWithTax].applyTo(
                        this.priceWithTax,
                      )
                    : _patchMap[Surcharge$.priceWithTax])
                as double
          : this.priceWithTax,
      sku: _patchMap.containsKey(Surcharge$.sku)
          ? ((_patchMap[Surcharge$.sku] is Function)
                    ? _patchMap[Surcharge$.sku](this.sku)
                    : (_patchMap[Surcharge$.sku] is Patch)
                    ? _patchMap[Surcharge$.sku].applyTo(this.sku)
                    : _patchMap[Surcharge$.sku])
                as String?
          : this.sku,
      taxLines: _patchMap.containsKey(Surcharge$.taxLines)
          ? ((_patchMap[Surcharge$.taxLines] is Function)
                    ? _patchMap[Surcharge$.taxLines](this.taxLines)
                    : (_patchMap[Surcharge$.taxLines] is Patch)
                    ? _patchMap[Surcharge$.taxLines].applyTo(this.taxLines)
                    : _patchMap[Surcharge$.taxLines])
                as List<TaxLine>
          : this.taxLines,
      taxRate: _patchMap.containsKey(Surcharge$.taxRate)
          ? ((_patchMap[Surcharge$.taxRate] is Function)
                    ? _patchMap[Surcharge$.taxRate](this.taxRate)
                    : (_patchMap[Surcharge$.taxRate] is Patch)
                    ? _patchMap[Surcharge$.taxRate].applyTo(this.taxRate)
                    : _patchMap[Surcharge$.taxRate])
                as double
          : this.taxRate,
      updatedAt: _patchMap.containsKey(Surcharge$.updatedAt)
          ? ((_patchMap[Surcharge$.updatedAt] is Function)
                    ? _patchMap[Surcharge$.updatedAt](this.updatedAt)
                    : (_patchMap[Surcharge$.updatedAt] is Patch)
                    ? _patchMap[Surcharge$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[Surcharge$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Surcharge &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        price == other.price &&
        priceWithTax == other.priceWithTax &&
        sku == other.sku &&
        taxLines == other.taxLines &&
        taxRate == other.taxRate &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.createdAt,
      this.description,
      this.id,
      this.price,
      this.priceWithTax,
      this.sku,
      this.taxLines,
      this.taxRate,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'Surcharge(' +
        'createdAt: ${createdAt}' +
        ', ' +
        'description: ${description}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'price: ${price}' +
        ', ' +
        'priceWithTax: ${priceWithTax}' +
        ', ' +
        'sku: ${sku}' +
        ', ' +
        'taxLines: ${taxLines}' +
        ', ' +
        'taxRate: ${taxRate}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$SurchargeToJson(this);
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

extension SurchargePropertyHelpers on Surcharge {
  bool get hasDescription {
    return this.description.isNotEmpty;
  }

  bool get noDescription {
    return this.description.isEmpty;
  }

  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get hasSku {
    return this.sku?.isNotEmpty == true;
  }

  bool get noSku {
    return this.sku?.isEmpty ?? true;
  }

  String get skuRequired {
    return this.sku ?? (throw StateError('sku is required but was null'));
  }

  bool get hasTaxLines {
    return this.taxLines.isNotEmpty;
  }

  bool get noTaxLines {
    return this.taxLines.isEmpty;
  }
}

extension SurchargeSerialization on Surcharge {
  Map<String, dynamic> toJson() {
    return _$SurchargeToJson(this);
  }
}

enum Surcharge$ {
  createdAt,
  description,
  id,
  price,
  priceWithTax,
  sku,
  taxLines,
  taxRate,
  updatedAt,
}

class SurchargePatch extends PatchBase<Surcharge, Surcharge$> {
  Surcharge applyTo(Surcharge entity) {
    return entity.patchWithSurcharge(this);
  }

  SurchargePatch withCreatedAt(DateTime? value) {
    patchMap[Surcharge$.createdAt] = value;
    return this;
  }

  SurchargePatch withDescription(String? value) {
    patchMap[Surcharge$.description] = value;
    return this;
  }

  SurchargePatch withId(String? value) {
    patchMap[Surcharge$.id] = value;
    return this;
  }

  SurchargePatch withPrice(double? value) {
    patchMap[Surcharge$.price] = value;
    return this;
  }

  SurchargePatch withPriceWithTax(double? value) {
    patchMap[Surcharge$.priceWithTax] = value;
    return this;
  }

  SurchargePatch withSku(String? value) {
    patchMap[Surcharge$.sku] = value;
    return this;
  }

  SurchargePatch withTaxLines(List<TaxLine>? value) {
    patchMap[Surcharge$.taxLines] = value;
    return this;
  }

  SurchargePatch updateTaxLinesAt(
    int index,
    TaxLinePatch Function(TaxLinePatch) patch,
  ) {
    patchMap[Surcharge$.taxLines] = (List<dynamic> list) {
      var updatedList = List<TaxLine>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(TaxLinePatch())
            .applyTo(updatedList[index] as TaxLine);
      }
      return updatedList;
    };
    return this;
  }

  SurchargePatch withTaxRate(double? value) {
    patchMap[Surcharge$.taxRate] = value;
    return this;
  }

  SurchargePatch withUpdatedAt(DateTime? value) {
    patchMap[Surcharge$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [Surcharge] query construction
abstract final class SurchargeFields {
  static const createdAt = Field<Surcharge, DateTime>('createdAt', _$createdAt);

  static const description = Field<Surcharge, String>(
    'description',
    _$description,
  );

  static const id = Field<Surcharge, String>('id', _$id);

  static const price = Field<Surcharge, double>('price', _$price);

  static const priceWithTax = Field<Surcharge, double>(
    'priceWithTax',
    _$priceWithTax,
  );

  static const sku = Field<Surcharge, String?>('sku', _$sku);

  static const taxLines = Field<Surcharge, List<TaxLine>>(
    'taxLines',
    _$taxLines,
  );

  static const taxRate = Field<Surcharge, double>('taxRate', _$taxRate);

  static const updatedAt = Field<Surcharge, DateTime>('updatedAt', _$updatedAt);

  static DateTime _$createdAt(Surcharge e) {
    return e.createdAt;
  }

  static String _$description(Surcharge e) {
    return e.description;
  }

  static String _$id(Surcharge e) {
    return e.id;
  }

  static double _$price(Surcharge e) {
    return e.price;
  }

  static double _$priceWithTax(Surcharge e) {
    return e.priceWithTax;
  }

  static String? _$sku(Surcharge e) {
    return e.sku;
  }

  static List<TaxLine> _$taxLines(Surcharge e) {
    return e.taxLines;
  }

  static double _$taxRate(Surcharge e) {
    return e.taxRate;
  }

  static DateTime _$updatedAt(Surcharge e) {
    return e.updatedAt;
  }
}

extension SurchargeCompareE on Surcharge {
  Map<String, dynamic> compareToSurcharge(Surcharge other) {
    final Map<String, dynamic> diff = {};

    if (createdAt != other.createdAt) {
      diff['createdAt'] = () => other.createdAt;
    }

    if (description != other.description) {
      diff['description'] = () => other.description;
    }

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (price != other.price) {
      diff['price'] = () => other.price;
    }

    if (priceWithTax != other.priceWithTax) {
      diff['priceWithTax'] = () => other.priceWithTax;
    }

    if (sku != other.sku) {
      diff['sku'] = () => other.sku;
    }

    if (taxLines != other.taxLines) {
      diff['taxLines'] = () => other.taxLines;
    }

    if (taxRate != other.taxRate) {
      diff['taxRate'] = () => other.taxRate;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
