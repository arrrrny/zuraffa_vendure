// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'fulfillment.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Fulfillment {
  Fulfillment({
    required DateTime this.createdAt,
    Map<String, dynamic>? this.customFields,
    required String this.id,
    required List<FulfillmentLine> this.lines,
    required String this.method,
    required String this.state,
    required List<FulfillmentLine> this.summary,
    String? this.trackingCode,
    required DateTime this.updatedAt,
  });

  factory Fulfillment.fromJson(Map<String, dynamic> json) =>
      _$FulfillmentFromJson(json);

  final DateTime createdAt;

  final Map<String, dynamic>? customFields;

  final String id;

  final List<FulfillmentLine> lines;

  final String method;

  final String state;

  final List<FulfillmentLine> summary;

  final String? trackingCode;

  final DateTime updatedAt;

  Fulfillment copyWith({
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? id,
    List<FulfillmentLine>? lines,
    String? method,
    String? state,
    List<FulfillmentLine>? summary,
    String? trackingCode,
    DateTime? updatedAt,
  }) {
    return Fulfillment(
      createdAt: createdAt ?? this.createdAt,
      customFields: customFields ?? this.customFields,
      id: id ?? this.id,
      lines: lines ?? this.lines,
      method: method ?? this.method,
      state: state ?? this.state,
      summary: summary ?? this.summary,
      trackingCode: trackingCode ?? this.trackingCode,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Fulfillment copyWithField<T>(Field<Fulfillment, T> field, T value) {
    switch (field.name) {
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'id':
        return copyWith(id: value as String);
      case 'lines':
        return copyWith(lines: value as List<FulfillmentLine>);
      case 'method':
        return copyWith(method: value as String);
      case 'state':
        return copyWith(state: value as String);
      case 'summary':
        return copyWith(summary: value as List<FulfillmentLine>);
      case 'trackingCode':
        return copyWith(trackingCode: value as String?);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Fulfillment has no settable field with this name',
        );
    }
  }

  Fulfillment copyWithFulfillment({
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? id,
    List<FulfillmentLine>? lines,
    String? method,
    String? state,
    List<FulfillmentLine>? summary,
    String? trackingCode,
    DateTime? updatedAt,
  }) {
    return copyWith(
      createdAt: createdAt,
      customFields: customFields,
      id: id,
      lines: lines,
      method: method,
      state: state,
      summary: summary,
      trackingCode: trackingCode,
      updatedAt: updatedAt,
    );
  }

  Fulfillment patchWithFulfillment([FulfillmentPatch? patchInput]) {
    final _patcher = patchInput ?? FulfillmentPatch();
    final _patchMap = _patcher.patchMap;
    return Fulfillment(
      createdAt: _patchMap.containsKey(Fulfillment$.createdAt)
          ? ((_patchMap[Fulfillment$.createdAt] is Function)
                    ? _patchMap[Fulfillment$.createdAt](this.createdAt)
                    : (_patchMap[Fulfillment$.createdAt] is Patch)
                    ? _patchMap[Fulfillment$.createdAt].applyTo(this.createdAt)
                    : _patchMap[Fulfillment$.createdAt])
                as DateTime
          : this.createdAt,
      customFields: _patchMap.containsKey(Fulfillment$.customFields)
          ? ((_patchMap[Fulfillment$.customFields] is Function)
                    ? _patchMap[Fulfillment$.customFields](this.customFields)
                    : (_patchMap[Fulfillment$.customFields] is Patch)
                    ? _patchMap[Fulfillment$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[Fulfillment$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      id: _patchMap.containsKey(Fulfillment$.id)
          ? ((_patchMap[Fulfillment$.id] is Function)
                    ? _patchMap[Fulfillment$.id](this.id)
                    : (_patchMap[Fulfillment$.id] is Patch)
                    ? _patchMap[Fulfillment$.id].applyTo(this.id)
                    : _patchMap[Fulfillment$.id])
                as String
          : this.id,
      lines: _patchMap.containsKey(Fulfillment$.lines)
          ? ((_patchMap[Fulfillment$.lines] is Function)
                    ? _patchMap[Fulfillment$.lines](this.lines)
                    : (_patchMap[Fulfillment$.lines] is Patch)
                    ? _patchMap[Fulfillment$.lines].applyTo(this.lines)
                    : _patchMap[Fulfillment$.lines])
                as List<FulfillmentLine>
          : this.lines,
      method: _patchMap.containsKey(Fulfillment$.method)
          ? ((_patchMap[Fulfillment$.method] is Function)
                    ? _patchMap[Fulfillment$.method](this.method)
                    : (_patchMap[Fulfillment$.method] is Patch)
                    ? _patchMap[Fulfillment$.method].applyTo(this.method)
                    : _patchMap[Fulfillment$.method])
                as String
          : this.method,
      state: _patchMap.containsKey(Fulfillment$.state)
          ? ((_patchMap[Fulfillment$.state] is Function)
                    ? _patchMap[Fulfillment$.state](this.state)
                    : (_patchMap[Fulfillment$.state] is Patch)
                    ? _patchMap[Fulfillment$.state].applyTo(this.state)
                    : _patchMap[Fulfillment$.state])
                as String
          : this.state,
      summary: _patchMap.containsKey(Fulfillment$.summary)
          ? ((_patchMap[Fulfillment$.summary] is Function)
                    ? _patchMap[Fulfillment$.summary](this.summary)
                    : (_patchMap[Fulfillment$.summary] is Patch)
                    ? _patchMap[Fulfillment$.summary].applyTo(this.summary)
                    : _patchMap[Fulfillment$.summary])
                as List<FulfillmentLine>
          : this.summary,
      trackingCode: _patchMap.containsKey(Fulfillment$.trackingCode)
          ? ((_patchMap[Fulfillment$.trackingCode] is Function)
                    ? _patchMap[Fulfillment$.trackingCode](this.trackingCode)
                    : (_patchMap[Fulfillment$.trackingCode] is Patch)
                    ? _patchMap[Fulfillment$.trackingCode].applyTo(
                        this.trackingCode,
                      )
                    : _patchMap[Fulfillment$.trackingCode])
                as String?
          : this.trackingCode,
      updatedAt: _patchMap.containsKey(Fulfillment$.updatedAt)
          ? ((_patchMap[Fulfillment$.updatedAt] is Function)
                    ? _patchMap[Fulfillment$.updatedAt](this.updatedAt)
                    : (_patchMap[Fulfillment$.updatedAt] is Patch)
                    ? _patchMap[Fulfillment$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[Fulfillment$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Fulfillment &&
        createdAt == other.createdAt &&
        customFields == other.customFields &&
        id == other.id &&
        lines == other.lines &&
        method == other.method &&
        state == other.state &&
        summary == other.summary &&
        trackingCode == other.trackingCode &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.createdAt,
      this.customFields,
      this.id,
      this.lines,
      this.method,
      this.state,
      this.summary,
      this.trackingCode,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'Fulfillment(' +
        'createdAt: ${createdAt}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'lines: ${lines}' +
        ', ' +
        'method: ${method}' +
        ', ' +
        'state: ${state}' +
        ', ' +
        'summary: ${summary}' +
        ', ' +
        'trackingCode: ${trackingCode}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$FulfillmentToJson(this);
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

extension FulfillmentPropertyHelpers on Fulfillment {
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

  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get hasLines {
    return this.lines.isNotEmpty;
  }

  bool get noLines {
    return this.lines.isEmpty;
  }

  bool get hasMethod {
    return this.method.isNotEmpty;
  }

  bool get noMethod {
    return this.method.isEmpty;
  }

  bool get hasState {
    return this.state.isNotEmpty;
  }

  bool get noState {
    return this.state.isEmpty;
  }

  bool get hasSummary {
    return this.summary.isNotEmpty;
  }

  bool get noSummary {
    return this.summary.isEmpty;
  }

  bool get hasTrackingCode {
    return this.trackingCode?.isNotEmpty == true;
  }

  bool get noTrackingCode {
    return this.trackingCode?.isEmpty ?? true;
  }

  String get trackingCodeRequired {
    return this.trackingCode ??
        (throw StateError('trackingCode is required but was null'));
  }
}

extension FulfillmentSerialization on Fulfillment {
  Map<String, dynamic> toJson() {
    return _$FulfillmentToJson(this);
  }
}

enum Fulfillment$ {
  createdAt,
  customFields,
  id,
  lines,
  method,
  state,
  summary,
  trackingCode,
  updatedAt,
}

class FulfillmentPatch extends PatchBase<Fulfillment, Fulfillment$> {
  Fulfillment applyTo(Fulfillment entity) {
    return entity.patchWithFulfillment(this);
  }

  FulfillmentPatch withCreatedAt(DateTime? value) {
    patchMap[Fulfillment$.createdAt] = value;
    return this;
  }

  FulfillmentPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[Fulfillment$.customFields] = value;
    return this;
  }

  FulfillmentPatch withId(String? value) {
    patchMap[Fulfillment$.id] = value;
    return this;
  }

  FulfillmentPatch withLines(List<FulfillmentLine>? value) {
    patchMap[Fulfillment$.lines] = value;
    return this;
  }

  FulfillmentPatch updateLinesAt(
    int index,
    FulfillmentLinePatch Function(FulfillmentLinePatch) patch,
  ) {
    patchMap[Fulfillment$.lines] = (List<dynamic> list) {
      var updatedList = List<FulfillmentLine>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(FulfillmentLinePatch())
            .applyTo(updatedList[index] as FulfillmentLine);
      }
      return updatedList;
    };
    return this;
  }

  FulfillmentPatch withMethod(String? value) {
    patchMap[Fulfillment$.method] = value;
    return this;
  }

  FulfillmentPatch withState(String? value) {
    patchMap[Fulfillment$.state] = value;
    return this;
  }

  FulfillmentPatch withSummary(List<FulfillmentLine>? value) {
    patchMap[Fulfillment$.summary] = value;
    return this;
  }

  FulfillmentPatch updateSummaryAt(
    int index,
    FulfillmentLinePatch Function(FulfillmentLinePatch) patch,
  ) {
    patchMap[Fulfillment$.summary] = (List<dynamic> list) {
      var updatedList = List<FulfillmentLine>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(FulfillmentLinePatch())
            .applyTo(updatedList[index] as FulfillmentLine);
      }
      return updatedList;
    };
    return this;
  }

  FulfillmentPatch withTrackingCode(String? value) {
    patchMap[Fulfillment$.trackingCode] = value;
    return this;
  }

  FulfillmentPatch withUpdatedAt(DateTime? value) {
    patchMap[Fulfillment$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [Fulfillment] query construction
abstract final class FulfillmentFields {
  static const createdAt = Field<Fulfillment, DateTime>(
    'createdAt',
    _$createdAt,
  );

  static const customFields = Field<Fulfillment, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const id = Field<Fulfillment, String>('id', _$id);

  static const lines = Field<Fulfillment, List<FulfillmentLine>>(
    'lines',
    _$lines,
  );

  static const method = Field<Fulfillment, String>('method', _$method);

  static const state = Field<Fulfillment, String>('state', _$state);

  static const summary = Field<Fulfillment, List<FulfillmentLine>>(
    'summary',
    _$summary,
  );

  static const trackingCode = Field<Fulfillment, String?>(
    'trackingCode',
    _$trackingCode,
  );

  static const updatedAt = Field<Fulfillment, DateTime>(
    'updatedAt',
    _$updatedAt,
  );

  static DateTime _$createdAt(Fulfillment e) {
    return e.createdAt;
  }

  static Map<String, dynamic>? _$customFields(Fulfillment e) {
    return e.customFields;
  }

  static String _$id(Fulfillment e) {
    return e.id;
  }

  static List<FulfillmentLine> _$lines(Fulfillment e) {
    return e.lines;
  }

  static String _$method(Fulfillment e) {
    return e.method;
  }

  static String _$state(Fulfillment e) {
    return e.state;
  }

  static List<FulfillmentLine> _$summary(Fulfillment e) {
    return e.summary;
  }

  static String? _$trackingCode(Fulfillment e) {
    return e.trackingCode;
  }

  static DateTime _$updatedAt(Fulfillment e) {
    return e.updatedAt;
  }
}

extension FulfillmentCompareE on Fulfillment {
  Map<String, dynamic> compareToFulfillment(Fulfillment other) {
    final Map<String, dynamic> diff = {};

    if (createdAt != other.createdAt) {
      diff['createdAt'] = () => other.createdAt;
    }

    if (customFields != other.customFields) {
      diff['customFields'] = () => other.customFields;
    }

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (lines != other.lines) {
      diff['lines'] = () => other.lines;
    }

    if (method != other.method) {
      diff['method'] = () => other.method;
    }

    if (state != other.state) {
      diff['state'] = () => other.state;
    }

    if (summary != other.summary) {
      diff['summary'] = () => other.summary;
    }

    if (trackingCode != other.trackingCode) {
      diff['trackingCode'] = () => other.trackingCode;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
