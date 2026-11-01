// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'history_entry_sort_parameter.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class HistoryEntrySortParameter {
  HistoryEntrySortParameter({
    SortOrder? this.createdAt,
    SortOrder? this.id,
    SortOrder? this.updatedAt,
  });

  factory HistoryEntrySortParameter.fromJson(Map<String, dynamic> json) =>
      _$HistoryEntrySortParameterFromJson(json);

  final SortOrder? createdAt;

  final SortOrder? id;

  final SortOrder? updatedAt;

  HistoryEntrySortParameter copyWith({
    SortOrder? createdAt,
    SortOrder? id,
    SortOrder? updatedAt,
  }) {
    return HistoryEntrySortParameter(
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  HistoryEntrySortParameter copyWithField<T>(
    Field<HistoryEntrySortParameter, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'createdAt':
        return copyWith(createdAt: value as SortOrder?);
      case 'id':
        return copyWith(id: value as SortOrder?);
      case 'updatedAt':
        return copyWith(updatedAt: value as SortOrder?);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'HistoryEntrySortParameter has no settable field with this name',
        );
    }
  }

  HistoryEntrySortParameter copyWithHistoryEntrySortParameter({
    SortOrder? createdAt,
    SortOrder? id,
    SortOrder? updatedAt,
  }) {
    return copyWith(createdAt: createdAt, id: id, updatedAt: updatedAt);
  }

  HistoryEntrySortParameter patchWithHistoryEntrySortParameter([
    HistoryEntrySortParameterPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? HistoryEntrySortParameterPatch();
    final _patchMap = _patcher.patchMap;
    return HistoryEntrySortParameter(
      createdAt: _patchMap.containsKey(HistoryEntrySortParameter$.createdAt)
          ? ((_patchMap[HistoryEntrySortParameter$.createdAt] is Function)
                    ? _patchMap[HistoryEntrySortParameter$.createdAt](
                        this.createdAt,
                      )
                    : (_patchMap[HistoryEntrySortParameter$.createdAt] is Patch)
                    ? _patchMap[HistoryEntrySortParameter$.createdAt].applyTo(
                        this.createdAt,
                      )
                    : _patchMap[HistoryEntrySortParameter$.createdAt])
                as SortOrder?
          : this.createdAt,
      id: _patchMap.containsKey(HistoryEntrySortParameter$.id)
          ? ((_patchMap[HistoryEntrySortParameter$.id] is Function)
                    ? _patchMap[HistoryEntrySortParameter$.id](this.id)
                    : (_patchMap[HistoryEntrySortParameter$.id] is Patch)
                    ? _patchMap[HistoryEntrySortParameter$.id].applyTo(this.id)
                    : _patchMap[HistoryEntrySortParameter$.id])
                as SortOrder?
          : this.id,
      updatedAt: _patchMap.containsKey(HistoryEntrySortParameter$.updatedAt)
          ? ((_patchMap[HistoryEntrySortParameter$.updatedAt] is Function)
                    ? _patchMap[HistoryEntrySortParameter$.updatedAt](
                        this.updatedAt,
                      )
                    : (_patchMap[HistoryEntrySortParameter$.updatedAt] is Patch)
                    ? _patchMap[HistoryEntrySortParameter$.updatedAt].applyTo(
                        this.updatedAt,
                      )
                    : _patchMap[HistoryEntrySortParameter$.updatedAt])
                as SortOrder?
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HistoryEntrySortParameter &&
        createdAt == other.createdAt &&
        id == other.id &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(this.createdAt, this.id, this.updatedAt);
  }

  @override
  String toString() {
    return 'HistoryEntrySortParameter(' +
        'createdAt: ${createdAt}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$HistoryEntrySortParameterToJson(this);
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

extension HistoryEntrySortParameterPropertyHelpers
    on HistoryEntrySortParameter {
  bool get hasCreatedAt {
    return this.createdAt != null;
  }

  bool get noCreatedAt {
    return this.createdAt == null;
  }

  SortOrder get createdAtRequired {
    return this.createdAt ??
        (throw StateError('createdAt is required but was null'));
  }

  bool get isCreatedAtAsc {
    return this.createdAt == SortOrder.asc;
  }

  bool get isCreatedAtDesc {
    return this.createdAt == SortOrder.desc;
  }

  bool get hasId {
    return this.id != null;
  }

  bool get noId {
    return this.id == null;
  }

  SortOrder get idRequired {
    return this.id ?? (throw StateError('id is required but was null'));
  }

  bool get isIdAsc {
    return this.id == SortOrder.asc;
  }

  bool get isIdDesc {
    return this.id == SortOrder.desc;
  }

  bool get hasUpdatedAt {
    return this.updatedAt != null;
  }

  bool get noUpdatedAt {
    return this.updatedAt == null;
  }

  SortOrder get updatedAtRequired {
    return this.updatedAt ??
        (throw StateError('updatedAt is required but was null'));
  }

  bool get isUpdatedAtAsc {
    return this.updatedAt == SortOrder.asc;
  }

  bool get isUpdatedAtDesc {
    return this.updatedAt == SortOrder.desc;
  }
}

extension HistoryEntrySortParameterSerialization on HistoryEntrySortParameter {
  Map<String, dynamic> toJson() {
    return _$HistoryEntrySortParameterToJson(this);
  }
}

enum HistoryEntrySortParameter$ { createdAt, id, updatedAt }

class HistoryEntrySortParameterPatch
    extends PatchBase<HistoryEntrySortParameter, HistoryEntrySortParameter$> {
  HistoryEntrySortParameter applyTo(HistoryEntrySortParameter entity) {
    return entity.patchWithHistoryEntrySortParameter(this);
  }

  HistoryEntrySortParameterPatch withCreatedAt(SortOrder? value) {
    patchMap[HistoryEntrySortParameter$.createdAt] = value;
    return this;
  }

  HistoryEntrySortParameterPatch withId(SortOrder? value) {
    patchMap[HistoryEntrySortParameter$.id] = value;
    return this;
  }

  HistoryEntrySortParameterPatch withUpdatedAt(SortOrder? value) {
    patchMap[HistoryEntrySortParameter$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [HistoryEntrySortParameter] query construction
abstract final class HistoryEntrySortParameterFields {
  static const createdAt = Field<HistoryEntrySortParameter, SortOrder?>(
    'createdAt',
    _$createdAt,
  );

  static const id = Field<HistoryEntrySortParameter, SortOrder?>('id', _$id);

  static const updatedAt = Field<HistoryEntrySortParameter, SortOrder?>(
    'updatedAt',
    _$updatedAt,
  );

  static SortOrder? _$createdAt(HistoryEntrySortParameter e) {
    return e.createdAt;
  }

  static SortOrder? _$id(HistoryEntrySortParameter e) {
    return e.id;
  }

  static SortOrder? _$updatedAt(HistoryEntrySortParameter e) {
    return e.updatedAt;
  }
}

extension HistoryEntrySortParameterCompareE on HistoryEntrySortParameter {
  Map<String, dynamic> compareToHistoryEntrySortParameter(
    HistoryEntrySortParameter other,
  ) {
    final Map<String, dynamic> diff = {};

    if (createdAt != other.createdAt) {
      diff['createdAt'] = () => other.createdAt;
    }

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
