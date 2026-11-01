// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'shipping_method_quote.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ShippingMethodQuote {
  ShippingMethodQuote({
    required String this.code,
    Map<String, dynamic>? this.customFields,
    required String this.description,
    required String this.id,
    Map<String, dynamic>? this.metadata,
    required String this.name,
    required double this.price,
    required double this.priceWithTax,
  });

  factory ShippingMethodQuote.fromJson(Map<String, dynamic> json) =>
      _$ShippingMethodQuoteFromJson(json);

  final String code;

  final Map<String, dynamic>? customFields;

  final String description;

  final String id;

  final Map<String, dynamic>? metadata;

  final String name;

  final double price;

  final double priceWithTax;

  ShippingMethodQuote copyWith({
    String? code,
    Map<String, dynamic>? customFields,
    String? description,
    String? id,
    Map<String, dynamic>? metadata,
    String? name,
    double? price,
    double? priceWithTax,
  }) {
    return ShippingMethodQuote(
      code: code ?? this.code,
      customFields: customFields ?? this.customFields,
      description: description ?? this.description,
      id: id ?? this.id,
      metadata: metadata ?? this.metadata,
      name: name ?? this.name,
      price: price ?? this.price,
      priceWithTax: priceWithTax ?? this.priceWithTax,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ShippingMethodQuote copyWithField<T>(
    Field<ShippingMethodQuote, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'code':
        return copyWith(code: value as String);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'description':
        return copyWith(description: value as String);
      case 'id':
        return copyWith(id: value as String);
      case 'metadata':
        return copyWith(metadata: value as Map<String, dynamic>?);
      case 'name':
        return copyWith(name: value as String);
      case 'price':
        return copyWith(price: value as double);
      case 'priceWithTax':
        return copyWith(priceWithTax: value as double);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ShippingMethodQuote has no settable field with this name',
        );
    }
  }

  ShippingMethodQuote copyWithShippingMethodQuote({
    String? code,
    Map<String, dynamic>? customFields,
    String? description,
    String? id,
    Map<String, dynamic>? metadata,
    String? name,
    double? price,
    double? priceWithTax,
  }) {
    return copyWith(
      code: code,
      customFields: customFields,
      description: description,
      id: id,
      metadata: metadata,
      name: name,
      price: price,
      priceWithTax: priceWithTax,
    );
  }

  ShippingMethodQuote patchWithShippingMethodQuote([
    ShippingMethodQuotePatch? patchInput,
  ]) {
    final _patcher = patchInput ?? ShippingMethodQuotePatch();
    final _patchMap = _patcher.patchMap;
    return ShippingMethodQuote(
      code: _patchMap.containsKey(ShippingMethodQuote$.code)
          ? ((_patchMap[ShippingMethodQuote$.code] is Function)
                    ? _patchMap[ShippingMethodQuote$.code](this.code)
                    : (_patchMap[ShippingMethodQuote$.code] is Patch)
                    ? _patchMap[ShippingMethodQuote$.code].applyTo(this.code)
                    : _patchMap[ShippingMethodQuote$.code])
                as String
          : this.code,
      customFields: _patchMap.containsKey(ShippingMethodQuote$.customFields)
          ? ((_patchMap[ShippingMethodQuote$.customFields] is Function)
                    ? _patchMap[ShippingMethodQuote$.customFields](
                        this.customFields,
                      )
                    : (_patchMap[ShippingMethodQuote$.customFields] is Patch)
                    ? _patchMap[ShippingMethodQuote$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[ShippingMethodQuote$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      description: _patchMap.containsKey(ShippingMethodQuote$.description)
          ? ((_patchMap[ShippingMethodQuote$.description] is Function)
                    ? _patchMap[ShippingMethodQuote$.description](
                        this.description,
                      )
                    : (_patchMap[ShippingMethodQuote$.description] is Patch)
                    ? _patchMap[ShippingMethodQuote$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[ShippingMethodQuote$.description])
                as String
          : this.description,
      id: _patchMap.containsKey(ShippingMethodQuote$.id)
          ? ((_patchMap[ShippingMethodQuote$.id] is Function)
                    ? _patchMap[ShippingMethodQuote$.id](this.id)
                    : (_patchMap[ShippingMethodQuote$.id] is Patch)
                    ? _patchMap[ShippingMethodQuote$.id].applyTo(this.id)
                    : _patchMap[ShippingMethodQuote$.id])
                as String
          : this.id,
      metadata: _patchMap.containsKey(ShippingMethodQuote$.metadata)
          ? ((_patchMap[ShippingMethodQuote$.metadata] is Function)
                    ? _patchMap[ShippingMethodQuote$.metadata](this.metadata)
                    : (_patchMap[ShippingMethodQuote$.metadata] is Patch)
                    ? _patchMap[ShippingMethodQuote$.metadata].applyTo(
                        this.metadata,
                      )
                    : _patchMap[ShippingMethodQuote$.metadata])
                as Map<String, dynamic>?
          : this.metadata,
      name: _patchMap.containsKey(ShippingMethodQuote$.name_)
          ? ((_patchMap[ShippingMethodQuote$.name_] is Function)
                    ? _patchMap[ShippingMethodQuote$.name_](this.name)
                    : (_patchMap[ShippingMethodQuote$.name_] is Patch)
                    ? _patchMap[ShippingMethodQuote$.name_].applyTo(this.name)
                    : _patchMap[ShippingMethodQuote$.name_])
                as String
          : this.name,
      price: _patchMap.containsKey(ShippingMethodQuote$.price)
          ? ((_patchMap[ShippingMethodQuote$.price] is Function)
                    ? _patchMap[ShippingMethodQuote$.price](this.price)
                    : (_patchMap[ShippingMethodQuote$.price] is Patch)
                    ? _patchMap[ShippingMethodQuote$.price].applyTo(this.price)
                    : _patchMap[ShippingMethodQuote$.price])
                as double
          : this.price,
      priceWithTax: _patchMap.containsKey(ShippingMethodQuote$.priceWithTax)
          ? ((_patchMap[ShippingMethodQuote$.priceWithTax] is Function)
                    ? _patchMap[ShippingMethodQuote$.priceWithTax](
                        this.priceWithTax,
                      )
                    : (_patchMap[ShippingMethodQuote$.priceWithTax] is Patch)
                    ? _patchMap[ShippingMethodQuote$.priceWithTax].applyTo(
                        this.priceWithTax,
                      )
                    : _patchMap[ShippingMethodQuote$.priceWithTax])
                as double
          : this.priceWithTax,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ShippingMethodQuote &&
        code == other.code &&
        customFields == other.customFields &&
        description == other.description &&
        id == other.id &&
        metadata == other.metadata &&
        name == other.name &&
        price == other.price &&
        priceWithTax == other.priceWithTax;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.code,
      this.customFields,
      this.description,
      this.id,
      this.metadata,
      this.name,
      this.price,
      this.priceWithTax,
    );
  }

  @override
  String toString() {
    return 'ShippingMethodQuote(' +
        'code: ${code}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'description: ${description}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'metadata: ${metadata}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'price: ${price}' +
        ', ' +
        'priceWithTax: ${priceWithTax})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ShippingMethodQuoteToJson(this);
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

extension ShippingMethodQuotePropertyHelpers on ShippingMethodQuote {
  bool get hasCode {
    return this.code.isNotEmpty;
  }

  bool get noCode {
    return this.code.isEmpty;
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

  Map<String, dynamic> get metadataRequired {
    return this.metadata ??
        (throw StateError('metadata is required but was null'));
  }

  bool get hasMetadata {
    return this.metadata?.isNotEmpty ?? false;
  }

  bool get noMetadata {
    return this.metadata?.isEmpty ?? true;
  }

  bool get hasName {
    return this.name.isNotEmpty;
  }

  bool get noName {
    return this.name.isEmpty;
  }
}

extension ShippingMethodQuoteSerialization on ShippingMethodQuote {
  Map<String, dynamic> toJson() {
    return _$ShippingMethodQuoteToJson(this);
  }
}

enum ShippingMethodQuote$ {
  code,
  customFields,
  description,
  id,
  metadata,
  name_,
  price,
  priceWithTax,
}

class ShippingMethodQuotePatch
    extends PatchBase<ShippingMethodQuote, ShippingMethodQuote$> {
  ShippingMethodQuote applyTo(ShippingMethodQuote entity) {
    return entity.patchWithShippingMethodQuote(this);
  }

  ShippingMethodQuotePatch withCode(String? value) {
    patchMap[ShippingMethodQuote$.code] = value;
    return this;
  }

  ShippingMethodQuotePatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[ShippingMethodQuote$.customFields] = value;
    return this;
  }

  ShippingMethodQuotePatch withDescription(String? value) {
    patchMap[ShippingMethodQuote$.description] = value;
    return this;
  }

  ShippingMethodQuotePatch withId(String? value) {
    patchMap[ShippingMethodQuote$.id] = value;
    return this;
  }

  ShippingMethodQuotePatch withMetadata(Map<String, dynamic>? value) {
    patchMap[ShippingMethodQuote$.metadata] = value;
    return this;
  }

  ShippingMethodQuotePatch withName(String? value) {
    patchMap[ShippingMethodQuote$.name_] = value;
    return this;
  }

  ShippingMethodQuotePatch withPrice(double? value) {
    patchMap[ShippingMethodQuote$.price] = value;
    return this;
  }

  ShippingMethodQuotePatch withPriceWithTax(double? value) {
    patchMap[ShippingMethodQuote$.priceWithTax] = value;
    return this;
  }
}

/// Field descriptors for [ShippingMethodQuote] query construction
abstract final class ShippingMethodQuoteFields {
  static const code = Field<ShippingMethodQuote, String>('code', _$code);

  static const customFields = Field<ShippingMethodQuote, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const description = Field<ShippingMethodQuote, String>(
    'description',
    _$description,
  );

  static const id = Field<ShippingMethodQuote, String>('id', _$id);

  static const metadata = Field<ShippingMethodQuote, Map<String, dynamic>?>(
    'metadata',
    _$metadata,
  );

  static const name = Field<ShippingMethodQuote, String>('name', _$name);

  static const price = Field<ShippingMethodQuote, double>('price', _$price);

  static const priceWithTax = Field<ShippingMethodQuote, double>(
    'priceWithTax',
    _$priceWithTax,
  );

  static String _$code(ShippingMethodQuote e) {
    return e.code;
  }

  static Map<String, dynamic>? _$customFields(ShippingMethodQuote e) {
    return e.customFields;
  }

  static String _$description(ShippingMethodQuote e) {
    return e.description;
  }

  static String _$id(ShippingMethodQuote e) {
    return e.id;
  }

  static Map<String, dynamic>? _$metadata(ShippingMethodQuote e) {
    return e.metadata;
  }

  static String _$name(ShippingMethodQuote e) {
    return e.name;
  }

  static double _$price(ShippingMethodQuote e) {
    return e.price;
  }

  static double _$priceWithTax(ShippingMethodQuote e) {
    return e.priceWithTax;
  }
}

extension ShippingMethodQuoteCompareE on ShippingMethodQuote {
  Map<String, dynamic> compareToShippingMethodQuote(ShippingMethodQuote other) {
    final Map<String, dynamic> diff = {};

    if (code != other.code) {
      diff['code'] = () => other.code;
    }

    if (customFields != other.customFields) {
      diff['customFields'] = () => other.customFields;
    }

    if (description != other.description) {
      diff['description'] = () => other.description;
    }

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (metadata != other.metadata) {
      diff['metadata'] = () => other.metadata;
    }

    if (name != other.name) {
      diff['name'] = () => other.name;
    }

    if (price != other.price) {
      diff['price'] = () => other.price;
    }

    if (priceWithTax != other.priceWithTax) {
      diff['priceWithTax'] = () => other.priceWithTax;
    }
    return diff;
  }
}
