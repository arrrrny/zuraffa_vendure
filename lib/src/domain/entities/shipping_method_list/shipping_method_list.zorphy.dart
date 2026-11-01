// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'shipping_method_list.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ShippingMethodList {
  ShippingMethodList({
    required List<ShippingMethod> this.items,
    required int this.totalItems,
  });

  factory ShippingMethodList.fromJson(Map<String, dynamic> json) =>
      _$ShippingMethodListFromJson(json);

  final List<ShippingMethod> items;

  final int totalItems;

  ShippingMethodList copyWith({List<ShippingMethod>? items, int? totalItems}) {
    return ShippingMethodList(
      items: items ?? this.items,
      totalItems: totalItems ?? this.totalItems,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ShippingMethodList copyWithField<T>(
    Field<ShippingMethodList, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'items':
        return copyWith(items: value as List<ShippingMethod>);
      case 'totalItems':
        return copyWith(totalItems: value as int);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ShippingMethodList has no settable field with this name',
        );
    }
  }

  ShippingMethodList copyWithShippingMethodList({
    List<ShippingMethod>? items,
    int? totalItems,
  }) {
    return copyWith(items: items, totalItems: totalItems);
  }

  ShippingMethodList patchWithShippingMethodList([
    ShippingMethodListPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? ShippingMethodListPatch();
    final _patchMap = _patcher.patchMap;
    return ShippingMethodList(
      items: _patchMap.containsKey(ShippingMethodList$.items)
          ? ((_patchMap[ShippingMethodList$.items] is Function)
                    ? _patchMap[ShippingMethodList$.items](this.items)
                    : (_patchMap[ShippingMethodList$.items] is Patch)
                    ? _patchMap[ShippingMethodList$.items].applyTo(this.items)
                    : _patchMap[ShippingMethodList$.items])
                as List<ShippingMethod>
          : this.items,
      totalItems: _patchMap.containsKey(ShippingMethodList$.totalItems)
          ? ((_patchMap[ShippingMethodList$.totalItems] is Function)
                    ? _patchMap[ShippingMethodList$.totalItems](this.totalItems)
                    : (_patchMap[ShippingMethodList$.totalItems] is Patch)
                    ? _patchMap[ShippingMethodList$.totalItems].applyTo(
                        this.totalItems,
                      )
                    : _patchMap[ShippingMethodList$.totalItems])
                as int
          : this.totalItems,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ShippingMethodList &&
        items == other.items &&
        totalItems == other.totalItems;
  }

  @override
  int get hashCode {
    return Object.hash(this.items, this.totalItems);
  }

  @override
  String toString() {
    return 'ShippingMethodList(' +
        'items: ${items}' +
        ', ' +
        'totalItems: ${totalItems})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ShippingMethodListToJson(this);
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

extension ShippingMethodListPropertyHelpers on ShippingMethodList {
  bool get hasItems {
    return this.items.isNotEmpty;
  }

  bool get noItems {
    return this.items.isEmpty;
  }
}

extension ShippingMethodListSerialization on ShippingMethodList {
  Map<String, dynamic> toJson() {
    return _$ShippingMethodListToJson(this);
  }
}

enum ShippingMethodList$ { items, totalItems }

class ShippingMethodListPatch
    extends PatchBase<ShippingMethodList, ShippingMethodList$> {
  ShippingMethodList applyTo(ShippingMethodList entity) {
    return entity.patchWithShippingMethodList(this);
  }

  ShippingMethodListPatch withItems(List<ShippingMethod>? value) {
    patchMap[ShippingMethodList$.items] = value;
    return this;
  }

  ShippingMethodListPatch updateItemsAt(
    int index,
    ShippingMethodPatch Function(ShippingMethodPatch) patch,
  ) {
    patchMap[ShippingMethodList$.items] = (List<dynamic> list) {
      var updatedList = List<ShippingMethod>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ShippingMethodPatch())
            .applyTo(updatedList[index] as ShippingMethod);
      }
      return updatedList;
    };
    return this;
  }

  ShippingMethodListPatch withTotalItems(int? value) {
    patchMap[ShippingMethodList$.totalItems] = value;
    return this;
  }
}

/// Field descriptors for [ShippingMethodList] query construction
abstract final class ShippingMethodListFields {
  static const items = Field<ShippingMethodList, List<ShippingMethod>>(
    'items',
    _$items,
  );

  static const totalItems = Field<ShippingMethodList, int>(
    'totalItems',
    _$totalItems,
  );

  static List<ShippingMethod> _$items(ShippingMethodList e) {
    return e.items;
  }

  static int _$totalItems(ShippingMethodList e) {
    return e.totalItems;
  }
}

extension ShippingMethodListCompareE on ShippingMethodList {
  Map<String, dynamic> compareToShippingMethodList(ShippingMethodList other) {
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
