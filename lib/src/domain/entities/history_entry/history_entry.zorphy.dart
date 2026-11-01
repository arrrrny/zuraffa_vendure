// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'history_entry.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class HistoryEntry {
  HistoryEntry({
    required DateTime this.createdAt,
    required Map<String, dynamic> this.data,
    required String this.id,
    required HistoryEntryType this.type,
    required DateTime this.updatedAt,
  });

  factory HistoryEntry.fromJson(Map<String, dynamic> json) =>
      _$HistoryEntryFromJson(json);

  final DateTime createdAt;

  final Map<String, dynamic> data;

  final String id;

  final HistoryEntryType type;

  final DateTime updatedAt;

  HistoryEntry copyWith({
    DateTime? createdAt,
    Map<String, dynamic>? data,
    String? id,
    HistoryEntryType? type,
    DateTime? updatedAt,
  }) {
    return HistoryEntry(
      createdAt: createdAt ?? this.createdAt,
      data: data ?? this.data,
      id: id ?? this.id,
      type: type ?? this.type,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  HistoryEntry copyWithField<T>(Field<HistoryEntry, T> field, T value) {
    switch (field.name) {
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'data':
        return copyWith(data: value as Map<String, dynamic>);
      case 'id':
        return copyWith(id: value as String);
      case 'type':
        return copyWith(type: value as HistoryEntryType);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'HistoryEntry has no settable field with this name',
        );
    }
  }

  HistoryEntry copyWithHistoryEntry({
    DateTime? createdAt,
    Map<String, dynamic>? data,
    String? id,
    HistoryEntryType? type,
    DateTime? updatedAt,
  }) {
    return copyWith(
      createdAt: createdAt,
      data: data,
      id: id,
      type: type,
      updatedAt: updatedAt,
    );
  }

  HistoryEntry patchWithHistoryEntry([HistoryEntryPatch? patchInput]) {
    final _patcher = patchInput ?? HistoryEntryPatch();
    final _patchMap = _patcher.patchMap;
    return HistoryEntry(
      createdAt: _patchMap.containsKey(HistoryEntry$.createdAt)
          ? ((_patchMap[HistoryEntry$.createdAt] is Function)
                    ? _patchMap[HistoryEntry$.createdAt](this.createdAt)
                    : (_patchMap[HistoryEntry$.createdAt] is Patch)
                    ? _patchMap[HistoryEntry$.createdAt].applyTo(this.createdAt)
                    : _patchMap[HistoryEntry$.createdAt])
                as DateTime
          : this.createdAt,
      data: _patchMap.containsKey(HistoryEntry$.data)
          ? ((_patchMap[HistoryEntry$.data] is Function)
                    ? _patchMap[HistoryEntry$.data](this.data)
                    : (_patchMap[HistoryEntry$.data] is Patch)
                    ? _patchMap[HistoryEntry$.data].applyTo(this.data)
                    : _patchMap[HistoryEntry$.data])
                as Map<String, dynamic>
          : this.data,
      id: _patchMap.containsKey(HistoryEntry$.id)
          ? ((_patchMap[HistoryEntry$.id] is Function)
                    ? _patchMap[HistoryEntry$.id](this.id)
                    : (_patchMap[HistoryEntry$.id] is Patch)
                    ? _patchMap[HistoryEntry$.id].applyTo(this.id)
                    : _patchMap[HistoryEntry$.id])
                as String
          : this.id,
      type: _patchMap.containsKey(HistoryEntry$.type)
          ? ((_patchMap[HistoryEntry$.type] is Function)
                    ? _patchMap[HistoryEntry$.type](this.type)
                    : (_patchMap[HistoryEntry$.type] is Patch)
                    ? _patchMap[HistoryEntry$.type].applyTo(this.type)
                    : _patchMap[HistoryEntry$.type])
                as HistoryEntryType
          : this.type,
      updatedAt: _patchMap.containsKey(HistoryEntry$.updatedAt)
          ? ((_patchMap[HistoryEntry$.updatedAt] is Function)
                    ? _patchMap[HistoryEntry$.updatedAt](this.updatedAt)
                    : (_patchMap[HistoryEntry$.updatedAt] is Patch)
                    ? _patchMap[HistoryEntry$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[HistoryEntry$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HistoryEntry &&
        createdAt == other.createdAt &&
        data == other.data &&
        id == other.id &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.createdAt,
      this.data,
      this.id,
      this.type,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'HistoryEntry(' +
        'createdAt: ${createdAt}' +
        ', ' +
        'data: ${data}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'type: ${type}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$HistoryEntryToJson(this);
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

extension HistoryEntryPropertyHelpers on HistoryEntry {
  bool get hasData {
    return this.data.isNotEmpty;
  }

  bool get noData {
    return this.data.isEmpty;
  }

  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get isTypeCustomerAddedToGroup {
    return this.type == HistoryEntryType.customerAddedToGroup;
  }

  bool get isTypeCustomerAddressCreated {
    return this.type == HistoryEntryType.customerAddressCreated;
  }

  bool get isTypeCustomerAddressDeleted {
    return this.type == HistoryEntryType.customerAddressDeleted;
  }

  bool get isTypeCustomerAddressUpdated {
    return this.type == HistoryEntryType.customerAddressUpdated;
  }

  bool get isTypeCustomerDetailUpdated {
    return this.type == HistoryEntryType.customerDetailUpdated;
  }

  bool get isTypeCustomerEmailUpdateRequested {
    return this.type == HistoryEntryType.customerEmailUpdateRequested;
  }

  bool get isTypeCustomerEmailUpdateVerified {
    return this.type == HistoryEntryType.customerEmailUpdateVerified;
  }

  bool get isTypeCustomerNote {
    return this.type == HistoryEntryType.customerNote;
  }

  bool get isTypeCustomerPasswordResetRequested {
    return this.type == HistoryEntryType.customerPasswordResetRequested;
  }

  bool get isTypeCustomerPasswordResetVerified {
    return this.type == HistoryEntryType.customerPasswordResetVerified;
  }

  bool get isTypeCustomerPasswordUpdated {
    return this.type == HistoryEntryType.customerPasswordUpdated;
  }

  bool get isTypeCustomerRegistered {
    return this.type == HistoryEntryType.customerRegistered;
  }

  bool get isTypeCustomerRemovedFromGroup {
    return this.type == HistoryEntryType.customerRemovedFromGroup;
  }

  bool get isTypeCustomerVerified {
    return this.type == HistoryEntryType.customerVerified;
  }

  bool get isTypeOrderCancellation {
    return this.type == HistoryEntryType.orderCancellation;
  }

  bool get isTypeOrderCouponApplied {
    return this.type == HistoryEntryType.orderCouponApplied;
  }

  bool get isTypeOrderCouponRemoved {
    return this.type == HistoryEntryType.orderCouponRemoved;
  }

  bool get isTypeOrderCustomerUpdated {
    return this.type == HistoryEntryType.orderCustomerUpdated;
  }

  bool get isTypeOrderFulfillment {
    return this.type == HistoryEntryType.orderFulfillment;
  }

  bool get isTypeOrderFulfillmentTransition {
    return this.type == HistoryEntryType.orderFulfillmentTransition;
  }

  bool get isTypeOrderModified {
    return this.type == HistoryEntryType.orderModified;
  }

  bool get isTypeOrderNote {
    return this.type == HistoryEntryType.orderNote;
  }

  bool get isTypeOrderPaymentTransition {
    return this.type == HistoryEntryType.orderPaymentTransition;
  }

  bool get isTypeOrderRefundTransition {
    return this.type == HistoryEntryType.orderRefundTransition;
  }

  bool get isTypeOrderStateTransition {
    return this.type == HistoryEntryType.orderStateTransition;
  }
}

extension HistoryEntrySerialization on HistoryEntry {
  Map<String, dynamic> toJson() {
    return _$HistoryEntryToJson(this);
  }
}

enum HistoryEntry$ { createdAt, data, id, type, updatedAt }

class HistoryEntryPatch extends PatchBase<HistoryEntry, HistoryEntry$> {
  HistoryEntry applyTo(HistoryEntry entity) {
    return entity.patchWithHistoryEntry(this);
  }

  HistoryEntryPatch withCreatedAt(DateTime? value) {
    patchMap[HistoryEntry$.createdAt] = value;
    return this;
  }

  HistoryEntryPatch withData(Map<String, dynamic>? value) {
    patchMap[HistoryEntry$.data] = value;
    return this;
  }

  HistoryEntryPatch withId(String? value) {
    patchMap[HistoryEntry$.id] = value;
    return this;
  }

  HistoryEntryPatch withType(HistoryEntryType? value) {
    patchMap[HistoryEntry$.type] = value;
    return this;
  }

  HistoryEntryPatch withUpdatedAt(DateTime? value) {
    patchMap[HistoryEntry$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [HistoryEntry] query construction
abstract final class HistoryEntryFields {
  static const createdAt = Field<HistoryEntry, DateTime>(
    'createdAt',
    _$createdAt,
  );

  static const data = Field<HistoryEntry, Map<String, dynamic>>('data', _$data);

  static const id = Field<HistoryEntry, String>('id', _$id);

  static const type = Field<HistoryEntry, HistoryEntryType>('type', _$type);

  static const updatedAt = Field<HistoryEntry, DateTime>(
    'updatedAt',
    _$updatedAt,
  );

  static DateTime _$createdAt(HistoryEntry e) {
    return e.createdAt;
  }

  static Map<String, dynamic> _$data(HistoryEntry e) {
    return e.data;
  }

  static String _$id(HistoryEntry e) {
    return e.id;
  }

  static HistoryEntryType _$type(HistoryEntry e) {
    return e.type;
  }

  static DateTime _$updatedAt(HistoryEntry e) {
    return e.updatedAt;
  }
}

extension HistoryEntryCompareE on HistoryEntry {
  Map<String, dynamic> compareToHistoryEntry(HistoryEntry other) {
    final Map<String, dynamic> diff = {};

    if (createdAt != other.createdAt) {
      diff['createdAt'] = () => other.createdAt;
    }

    if (data != other.data) {
      diff['data'] = () => other.data;
    }

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (type != other.type) {
      diff['type'] = () => other.type;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
