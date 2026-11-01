// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'product_variant_list.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ProductVariantList {
  ProductVariantList({
    required List<ProductVariant> this.items,
    required int this.totalItems,
  });

  factory ProductVariantList.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantListFromJson(json);

  final List<ProductVariant> items;

  final int totalItems;

  ProductVariantList copyWith({List<ProductVariant>? items, int? totalItems}) {
    return ProductVariantList(
      items: items ?? this.items,
      totalItems: totalItems ?? this.totalItems,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ProductVariantList copyWithField<T>(
    Field<ProductVariantList, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'items':
        return copyWith(items: value as List<ProductVariant>);
      case 'totalItems':
        return copyWith(totalItems: value as int);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ProductVariantList has no settable field with this name',
        );
    }
  }

  ProductVariantList copyWithProductVariantList({
    List<ProductVariant>? items,
    int? totalItems,
  }) {
    return copyWith(items: items, totalItems: totalItems);
  }

  ProductVariantList patchWithProductVariantList([
    ProductVariantListPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? ProductVariantListPatch();
    final _patchMap = _patcher.patchMap;
    return ProductVariantList(
      items: _patchMap.containsKey(ProductVariantList$.items)
          ? ((_patchMap[ProductVariantList$.items] is Function)
                    ? _patchMap[ProductVariantList$.items](this.items)
                    : (_patchMap[ProductVariantList$.items] is Patch)
                    ? _patchMap[ProductVariantList$.items].applyTo(this.items)
                    : _patchMap[ProductVariantList$.items])
                as List<ProductVariant>
          : this.items,
      totalItems: _patchMap.containsKey(ProductVariantList$.totalItems)
          ? ((_patchMap[ProductVariantList$.totalItems] is Function)
                    ? _patchMap[ProductVariantList$.totalItems](this.totalItems)
                    : (_patchMap[ProductVariantList$.totalItems] is Patch)
                    ? _patchMap[ProductVariantList$.totalItems].applyTo(
                        this.totalItems,
                      )
                    : _patchMap[ProductVariantList$.totalItems])
                as int
          : this.totalItems,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProductVariantList &&
        items == other.items &&
        totalItems == other.totalItems;
  }

  @override
  int get hashCode {
    return Object.hash(this.items, this.totalItems);
  }

  @override
  String toString() {
    return 'ProductVariantList(' +
        'items: ${items}' +
        ', ' +
        'totalItems: ${totalItems})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ProductVariantListToJson(this);
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

extension ProductVariantListPropertyHelpers on ProductVariantList {
  bool get hasItems {
    return this.items.isNotEmpty;
  }

  bool get noItems {
    return this.items.isEmpty;
  }
}

extension ProductVariantListSerialization on ProductVariantList {
  Map<String, dynamic> toJson() {
    return _$ProductVariantListToJson(this);
  }
}

enum ProductVariantList$ { items, totalItems }

class ProductVariantListPatch
    extends PatchBase<ProductVariantList, ProductVariantList$> {
  ProductVariantList applyTo(ProductVariantList entity) {
    return entity.patchWithProductVariantList(this);
  }

  ProductVariantListPatch withItems(List<ProductVariant>? value) {
    patchMap[ProductVariantList$.items] = value;
    return this;
  }

  ProductVariantListPatch updateItemsAt(
    int index,
    ProductVariantPatch Function(ProductVariantPatch) patch,
  ) {
    patchMap[ProductVariantList$.items] = (List<dynamic> list) {
      var updatedList = List<ProductVariant>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ProductVariantPatch())
            .applyTo(updatedList[index] as ProductVariant);
      }
      return updatedList;
    };
    return this;
  }

  ProductVariantListPatch withTotalItems(int? value) {
    patchMap[ProductVariantList$.totalItems] = value;
    return this;
  }
}

/// Field descriptors for [ProductVariantList] query construction
abstract final class ProductVariantListFields {
  static const items = Field<ProductVariantList, List<ProductVariant>>(
    'items',
    _$items,
  );

  static const totalItems = Field<ProductVariantList, int>(
    'totalItems',
    _$totalItems,
  );

  static List<ProductVariant> _$items(ProductVariantList e) {
    return e.items;
  }

  static int _$totalItems(ProductVariantList e) {
    return e.totalItems;
  }
}

extension ProductVariantListCompareE on ProductVariantList {
  Map<String, dynamic> compareToProductVariantList(ProductVariantList other) {
    final Map<String, dynamic> diff = {};

    if (items != other.items) {
      diff['items'] = () => other.items;
    }

    if (totalItems != other.totalItems) {
      diff['totalItems'] = () => other.totalItems;
    }
    return diff;
  }
}
