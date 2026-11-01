// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'current_user_channel.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class CurrentUserChannel {
  CurrentUserChannel({
    required String this.code,
    required String this.id,
    required String this.token,
  });

  factory CurrentUserChannel.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserChannelFromJson(json);

  final String code;

  final String id;

  final String token;

  CurrentUserChannel copyWith({String? code, String? id, String? token}) {
    return CurrentUserChannel(
      code: code ?? this.code,
      id: id ?? this.id,
      token: token ?? this.token,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  CurrentUserChannel copyWithField<T>(
    Field<CurrentUserChannel, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'code':
        return copyWith(code: value as String);
      case 'id':
        return copyWith(id: value as String);
      case 'token':
        return copyWith(token: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'CurrentUserChannel has no settable field with this name',
        );
    }
  }

  CurrentUserChannel copyWithCurrentUserChannel({
    String? code,
    String? id,
    String? token,
  }) {
    return copyWith(code: code, id: id, token: token);
  }

  CurrentUserChannel patchWithCurrentUserChannel([
    CurrentUserChannelPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? CurrentUserChannelPatch();
    final _patchMap = _patcher.patchMap;
    return CurrentUserChannel(
      code: _patchMap.containsKey(CurrentUserChannel$.code)
          ? ((_patchMap[CurrentUserChannel$.code] is Function)
                    ? _patchMap[CurrentUserChannel$.code](this.code)
                    : (_patchMap[CurrentUserChannel$.code] is Patch)
                    ? _patchMap[CurrentUserChannel$.code].applyTo(this.code)
                    : _patchMap[CurrentUserChannel$.code])
                as String
          : this.code,
      id: _patchMap.containsKey(CurrentUserChannel$.id)
          ? ((_patchMap[CurrentUserChannel$.id] is Function)
                    ? _patchMap[CurrentUserChannel$.id](this.id)
                    : (_patchMap[CurrentUserChannel$.id] is Patch)
                    ? _patchMap[CurrentUserChannel$.id].applyTo(this.id)
                    : _patchMap[CurrentUserChannel$.id])
                as String
          : this.id,
      token: _patchMap.containsKey(CurrentUserChannel$.token)
          ? ((_patchMap[CurrentUserChannel$.token] is Function)
                    ? _patchMap[CurrentUserChannel$.token](this.token)
                    : (_patchMap[CurrentUserChannel$.token] is Patch)
                    ? _patchMap[CurrentUserChannel$.token].applyTo(this.token)
                    : _patchMap[CurrentUserChannel$.token])
                as String
          : this.token,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CurrentUserChannel &&
        code == other.code &&
        id == other.id &&
        token == other.token;
  }

  @override
  int get hashCode {
    return Object.hash(this.code, this.id, this.token);
  }

  @override
  String toString() {
    return 'CurrentUserChannel(' +
        'code: ${code}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'token: ${token})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$CurrentUserChannelToJson(this);
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

extension CurrentUserChannelPropertyHelpers on CurrentUserChannel {
  bool get hasCode {
    return this.code.isNotEmpty;
  }

  bool get noCode {
    return this.code.isEmpty;
  }

  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get hasToken {
    return this.token.isNotEmpty;
  }

  bool get noToken {
    return this.token.isEmpty;
  }
}

extension CurrentUserChannelSerialization on CurrentUserChannel {
  Map<String, dynamic> toJson() {
    return _$CurrentUserChannelToJson(this);
  }
}

enum CurrentUserChannel$ { code, id, token }

class CurrentUserChannelPatch
    extends PatchBase<CurrentUserChannel, CurrentUserChannel$> {
  CurrentUserChannel applyTo(CurrentUserChannel entity) {
    return entity.patchWithCurrentUserChannel(this);
  }

  CurrentUserChannelPatch withCode(String? value) {
    patchMap[CurrentUserChannel$.code] = value;
    return this;
  }

  CurrentUserChannelPatch withId(String? value) {
    patchMap[CurrentUserChannel$.id] = value;
    return this;
  }

  CurrentUserChannelPatch withToken(String? value) {
    patchMap[CurrentUserChannel$.token] = value;
    return this;
  }
}

/// Field descriptors for [CurrentUserChannel] query construction
abstract final class CurrentUserChannelFields {
  static const code = Field<CurrentUserChannel, String>('code', _$code);

  static const id = Field<CurrentUserChannel, String>('id', _$id);

  static const token = Field<CurrentUserChannel, String>('token', _$token);

  static String _$code(CurrentUserChannel e) {
    return e.code;
  }

  static String _$id(CurrentUserChannel e) {
    return e.id;
  }

  static String _$token(CurrentUserChannel e) {
    return e.token;
  }
}

extension CurrentUserChannelCompareE on CurrentUserChannel {
  Map<String, dynamic> compareToCurrentUserChannel(CurrentUserChannel other) {
    final Map<String, dynamic> diff = {};

    if (code != other.code) {
      diff['code'] = () => other.code;
    }

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (token != other.token) {
      diff['token'] = () => other.token;
    }
    return diff;
  }
}
