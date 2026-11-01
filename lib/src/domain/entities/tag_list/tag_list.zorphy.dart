// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'tag_list.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class TagList {
  TagList({required List<Tag> this.items, required int this.totalItems});

  factory TagList.fromJson(Map<String, dynamic> json) =>
      _$TagListFromJson(json);

  final List<Tag> items;

  final int totalItems;

  TagList copyWith({List<Tag>? items, int? totalItems}) {
    return TagList(
      items: items ?? this.items,
      totalItems: totalItems ?? this.totalItems,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  TagList copyWithField<T>(Field<TagList, T> field, T value) {
    switch (field.name) {
      case 'items':
        return copyWith(items: value as List<Tag>);
      case 'totalItems':
        return copyWith(totalItems: value as int);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'TagList has no settable field with this name',
        );
    }
  }

  TagList copyWithTagList({List<Tag>? items, int? totalItems}) {
    return copyWith(items: items, totalItems: totalItems);
  }

  TagList patchWithTagList([TagListPatch? patchInput]) {
    final _patcher = patchInput ?? TagListPatch();
    final _patchMap = _patcher.patchMap;
    return TagList(
      items: _patchMap.containsKey(TagList$.items)
          ? ((_patchMap[TagList$.items] is Function)
                    ? _patchMap[TagList$.items](this.items)
                    : (_patchMap[TagList$.items] is Patch)
                    ? _patchMap[TagList$.items].applyTo(this.items)
                    : _patchMap[TagList$.items])
                as List<Tag>
          : this.items,
      totalItems: _patchMap.containsKey(TagList$.totalItems)
          ? ((_patchMap[TagList$.totalItems] is Function)
                    ? _patchMap[TagList$.totalItems](this.totalItems)
                    : (_patchMap[TagList$.totalItems] is Patch)
                    ? _patchMap[TagList$.totalItems].applyTo(this.totalItems)
                    : _patchMap[TagList$.totalItems])
                as int
          : this.totalItems,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TagList &&
        items == other.items &&
        totalItems == other.totalItems;
  }

  @override
  int get hashCode {
    return Object.hash(this.items, this.totalItems);
  }

  @override
  String toString() {
    return 'TagList(' + 'items: ${items}' + ', ' + 'totalItems: ${totalItems})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$TagListToJson(this);
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

extension TagListPropertyHelpers on TagList {
  bool get hasItems {
    return this.items.isNotEmpty;
  }

  bool get noItems {
    return this.items.isEmpty;
  }
}

extension TagListSerialization on TagList {
  Map<String, dynamic> toJson() {
    return _$TagListToJson(this);
  }
}

enum TagList$ { items, totalItems }

class TagListPatch extends PatchBase<TagList, TagList$> {
  TagList applyTo(TagList entity) {
    return entity.patchWithTagList(this);
  }

  TagListPatch withItems(List<Tag>? value) {
    patchMap[TagList$.items] = value;
    return this;
  }

  TagListPatch updateItemsAt(int index, TagPatch Function(TagPatch) patch) {
    patchMap[TagList$.items] = (List<dynamic> list) {
      var updatedList = List<Tag>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(TagPatch())
            .applyTo(updatedList[index] as Tag);
      }
      return updatedList;
    };
    return this;
  }

  TagListPatch withTotalItems(int? value) {
    patchMap[TagList$.totalItems] = value;
    return this;
  }
}

/// Field descriptors for [TagList] query construction
abstract final class TagListFields {
  static const items = Field<TagList, List<Tag>>('items', _$items);

  static const totalItems = Field<TagList, int>('totalItems', _$totalItems);

  static List<Tag> _$items(TagList e) {
    return e.items;
  }

  static int _$totalItems(TagList e) {
    return e.totalItems;
  }
}

extension TagListCompareE on TagList {
  Map<String, dynamic> compareToTagList(TagList other) {
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
