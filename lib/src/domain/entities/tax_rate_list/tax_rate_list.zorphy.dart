// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'tax_rate_list.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class TaxRateList {
  TaxRateList({
    required List<TaxRate> this.items,
    required int this.totalItems,
  });

  factory TaxRateList.fromJson(Map<String, dynamic> json) =>
      _$TaxRateListFromJson(json);

  final List<TaxRate> items;

  final int totalItems;

  TaxRateList copyWith({List<TaxRate>? items, int? totalItems}) {
    return TaxRateList(
      items: items ?? this.items,
      totalItems: totalItems ?? this.totalItems,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  TaxRateList copyWithField<T>(Field<TaxRateList, T> field, T value) {
    switch (field.name) {
      case 'items':
        return copyWith(items: value as List<TaxRate>);
      case 'totalItems':
        return copyWith(totalItems: value as int);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'TaxRateList has no settable field with this name',
        );
    }
  }

  TaxRateList copyWithTaxRateList({List<TaxRate>? items, int? totalItems}) {
    return copyWith(items: items, totalItems: totalItems);
  }

  TaxRateList patchWithTaxRateList([TaxRateListPatch? patchInput]) {
    final _patcher = patchInput ?? TaxRateListPatch();
    final _patchMap = _patcher.patchMap;
    return TaxRateList(
      items: _patchMap.containsKey(TaxRateList$.items)
          ? ((_patchMap[TaxRateList$.items] is Function)
                    ? _patchMap[TaxRateList$.items](this.items)
                    : (_patchMap[TaxRateList$.items] is Patch)
                    ? _patchMap[TaxRateList$.items].applyTo(this.items)
                    : _patchMap[TaxRateList$.items])
                as List<TaxRate>
          : this.items,
      totalItems: _patchMap.containsKey(TaxRateList$.totalItems)
          ? ((_patchMap[TaxRateList$.totalItems] is Function)
                    ? _patchMap[TaxRateList$.totalItems](this.totalItems)
                    : (_patchMap[TaxRateList$.totalItems] is Patch)
                    ? _patchMap[TaxRateList$.totalItems].applyTo(
                        this.totalItems,
                      )
                    : _patchMap[TaxRateList$.totalItems])
                as int
          : this.totalItems,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TaxRateList &&
        items == other.items &&
        totalItems == other.totalItems;
  }

  @override
  int get hashCode {
    return Object.hash(this.items, this.totalItems);
  }

  @override
  String toString() {
    return 'TaxRateList(' +
        'items: ${items}' +
        ', ' +
        'totalItems: ${totalItems})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$TaxRateListToJson(this);
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

extension TaxRateListPropertyHelpers on TaxRateList {
  bool get hasItems {
    return this.items.isNotEmpty;
  }

  bool get noItems {
    return this.items.isEmpty;
  }
}

extension TaxRateListSerialization on TaxRateList {
  Map<String, dynamic> toJson() {
    return _$TaxRateListToJson(this);
  }
}

enum TaxRateList$ { items, totalItems }

class TaxRateListPatch extends PatchBase<TaxRateList, TaxRateList$> {
  TaxRateList applyTo(TaxRateList entity) {
    return entity.patchWithTaxRateList(this);
  }

  TaxRateListPatch withItems(List<TaxRate>? value) {
    patchMap[TaxRateList$.items] = value;
    return this;
  }

  TaxRateListPatch updateItemsAt(
    int index,
    TaxRatePatch Function(TaxRatePatch) patch,
  ) {
    patchMap[TaxRateList$.items] = (List<dynamic> list) {
      var updatedList = List<TaxRate>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(TaxRatePatch())
            .applyTo(updatedList[index] as TaxRate);
      }
      return updatedList;
    };
    return this;
  }

  TaxRateListPatch withTotalItems(int? value) {
    patchMap[TaxRateList$.totalItems] = value;
    return this;
  }
}

/// Field descriptors for [TaxRateList] query construction
abstract final class TaxRateListFields {
  static const items = Field<TaxRateList, List<TaxRate>>('items', _$items);

  static const totalItems = Field<TaxRateList, int>('totalItems', _$totalItems);

  static List<TaxRate> _$items(TaxRateList e) {
    return e.items;
  }

  static int _$totalItems(TaxRateList e) {
    return e.totalItems;
  }
}

extension TaxRateListCompareE on TaxRateList {
  Map<String, dynamic> compareToTaxRateList(TaxRateList other) {
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
