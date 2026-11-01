// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'promotion_list.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class PromotionList {
  PromotionList({
    required List<Promotion> this.items,
    required int this.totalItems,
  });

  factory PromotionList.fromJson(Map<String, dynamic> json) =>
      _$PromotionListFromJson(json);

  final List<Promotion> items;

  final int totalItems;

  PromotionList copyWith({List<Promotion>? items, int? totalItems}) {
    return PromotionList(
      items: items ?? this.items,
      totalItems: totalItems ?? this.totalItems,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  PromotionList copyWithField<T>(Field<PromotionList, T> field, T value) {
    switch (field.name) {
      case 'items':
        return copyWith(items: value as List<Promotion>);
      case 'totalItems':
        return copyWith(totalItems: value as int);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'PromotionList has no settable field with this name',
        );
    }
  }

  PromotionList copyWithPromotionList({
    List<Promotion>? items,
    int? totalItems,
  }) {
    return copyWith(items: items, totalItems: totalItems);
  }

  PromotionList patchWithPromotionList([PromotionListPatch? patchInput]) {
    final _patcher = patchInput ?? PromotionListPatch();
    final _patchMap = _patcher.patchMap;
    return PromotionList(
      items: _patchMap.containsKey(PromotionList$.items)
          ? ((_patchMap[PromotionList$.items] is Function)
                    ? _patchMap[PromotionList$.items](this.items)
                    : (_patchMap[PromotionList$.items] is Patch)
                    ? _patchMap[PromotionList$.items].applyTo(this.items)
                    : _patchMap[PromotionList$.items])
                as List<Promotion>
          : this.items,
      totalItems: _patchMap.containsKey(PromotionList$.totalItems)
          ? ((_patchMap[PromotionList$.totalItems] is Function)
                    ? _patchMap[PromotionList$.totalItems](this.totalItems)
                    : (_patchMap[PromotionList$.totalItems] is Patch)
                    ? _patchMap[PromotionList$.totalItems].applyTo(
                        this.totalItems,
                      )
                    : _patchMap[PromotionList$.totalItems])
                as int
          : this.totalItems,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PromotionList &&
        items == other.items &&
        totalItems == other.totalItems;
  }

  @override
  int get hashCode {
    return Object.hash(this.items, this.totalItems);
  }

  @override
  String toString() {
    return 'PromotionList(' +
        'items: ${items}' +
        ', ' +
        'totalItems: ${totalItems})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$PromotionListToJson(this);
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

extension PromotionListPropertyHelpers on PromotionList {
  bool get hasItems {
    return this.items.isNotEmpty;
  }

  bool get noItems {
    return this.items.isEmpty;
  }
}

extension PromotionListSerialization on PromotionList {
  Map<String, dynamic> toJson() {
    return _$PromotionListToJson(this);
  }
}

enum PromotionList$ { items, totalItems }

class PromotionListPatch extends PatchBase<PromotionList, PromotionList$> {
  PromotionList applyTo(PromotionList entity) {
    return entity.patchWithPromotionList(this);
  }

  PromotionListPatch withItems(List<Promotion>? value) {
    patchMap[PromotionList$.items] = value;
    return this;
  }

  PromotionListPatch updateItemsAt(
    int index,
    PromotionPatch Function(PromotionPatch) patch,
  ) {
    patchMap[PromotionList$.items] = (List<dynamic> list) {
      var updatedList = List<Promotion>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(PromotionPatch())
            .applyTo(updatedList[index] as Promotion);
      }
      return updatedList;
    };
    return this;
  }

  PromotionListPatch withTotalItems(int? value) {
    patchMap[PromotionList$.totalItems] = value;
    return this;
  }
}

/// Field descriptors for [PromotionList] query construction
abstract final class PromotionListFields {
  static const items = Field<PromotionList, List<Promotion>>('items', _$items);

  static const totalItems = Field<PromotionList, int>(
    'totalItems',
    _$totalItems,
  );

  static List<Promotion> _$items(PromotionList e) {
    return e.items;
  }

  static int _$totalItems(PromotionList e) {
    return e.totalItems;
  }
}

extension PromotionListCompareE on PromotionList {
  Map<String, dynamic> compareToPromotionList(PromotionList other) {
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
