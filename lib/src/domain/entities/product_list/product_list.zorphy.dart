// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'product_list.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ProductList {
  ProductList({
    required List<Product> this.items,
    required int this.totalItems,
  });

  factory ProductList.fromJson(Map<String, dynamic> json) =>
      _$ProductListFromJson(json);

  final List<Product> items;

  final int totalItems;

  ProductList copyWith({List<Product>? items, int? totalItems}) {
    return ProductList(
      items: items ?? this.items,
      totalItems: totalItems ?? this.totalItems,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ProductList copyWithField<T>(Field<ProductList, T> field, T value) {
    switch (field.name) {
      case 'items':
        return copyWith(items: value as List<Product>);
      case 'totalItems':
        return copyWith(totalItems: value as int);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ProductList has no settable field with this name',
        );
    }
  }

  ProductList copyWithProductList({List<Product>? items, int? totalItems}) {
    return copyWith(items: items, totalItems: totalItems);
  }

  ProductList patchWithProductList([ProductListPatch? patchInput]) {
    final _patcher = patchInput ?? ProductListPatch();
    final _patchMap = _patcher.patchMap;
    return ProductList(
      items: _patchMap.containsKey(ProductList$.items)
          ? ((_patchMap[ProductList$.items] is Function)
                    ? _patchMap[ProductList$.items](this.items)
                    : (_patchMap[ProductList$.items] is Patch)
                    ? _patchMap[ProductList$.items].applyTo(this.items)
                    : _patchMap[ProductList$.items])
                as List<Product>
          : this.items,
      totalItems: _patchMap.containsKey(ProductList$.totalItems)
          ? ((_patchMap[ProductList$.totalItems] is Function)
                    ? _patchMap[ProductList$.totalItems](this.totalItems)
                    : (_patchMap[ProductList$.totalItems] is Patch)
                    ? _patchMap[ProductList$.totalItems].applyTo(
                        this.totalItems,
                      )
                    : _patchMap[ProductList$.totalItems])
                as int
          : this.totalItems,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProductList &&
        items == other.items &&
        totalItems == other.totalItems;
  }

  @override
  int get hashCode {
    return Object.hash(this.items, this.totalItems);
  }

  @override
  String toString() {
    return 'ProductList(' +
        'items: ${items}' +
        ', ' +
        'totalItems: ${totalItems})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ProductListToJson(this);
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

extension ProductListPropertyHelpers on ProductList {
  bool get hasItems {
    return this.items.isNotEmpty;
  }

  bool get noItems {
    return this.items.isEmpty;
  }
}

extension ProductListSerialization on ProductList {
  Map<String, dynamic> toJson() {
    return _$ProductListToJson(this);
  }
}

enum ProductList$ { items, totalItems }

class ProductListPatch extends PatchBase<ProductList, ProductList$> {
  ProductList applyTo(ProductList entity) {
    return entity.patchWithProductList(this);
  }

  ProductListPatch withItems(List<Product>? value) {
    patchMap[ProductList$.items] = value;
    return this;
  }

  ProductListPatch updateItemsAt(
    int index,
    ProductPatch Function(ProductPatch) patch,
  ) {
    patchMap[ProductList$.items] = (List<dynamic> list) {
      var updatedList = List<Product>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ProductPatch())
            .applyTo(updatedList[index] as Product);
      }
      return updatedList;
    };
    return this;
  }

  ProductListPatch withTotalItems(int? value) {
    patchMap[ProductList$.totalItems] = value;
    return this;
  }
}

/// Field descriptors for [ProductList] query construction
abstract final class ProductListFields {
  static const items = Field<ProductList, List<Product>>('items', _$items);

  static const totalItems = Field<ProductList, int>('totalItems', _$totalItems);

  static List<Product> _$items(ProductList e) {
    return e.items;
  }

  static int _$totalItems(ProductList e) {
    return e.totalItems;
  }
}

extension ProductListCompareE on ProductList {
  Map<String, dynamic> compareToProductList(ProductList other) {
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
