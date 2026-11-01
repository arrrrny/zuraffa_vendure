// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'configurable_operation.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ConfigurableOperation {
  ConfigurableOperation({
    required List<ConfigArg> this.args,
    required String this.code,
  });

  factory ConfigurableOperation.fromJson(Map<String, dynamic> json) =>
      _$ConfigurableOperationFromJson(json);

  final List<ConfigArg> args;

  final String code;

  ConfigurableOperation copyWith({List<ConfigArg>? args, String? code}) {
    return ConfigurableOperation(
      args: args ?? this.args,
      code: code ?? this.code,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ConfigurableOperation copyWithField<T>(
    Field<ConfigurableOperation, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'args':
        return copyWith(args: value as List<ConfigArg>);
      case 'code':
        return copyWith(code: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ConfigurableOperation has no settable field with this name',
        );
    }
  }

  ConfigurableOperation copyWithConfigurableOperation({
    List<ConfigArg>? args,
    String? code,
  }) {
    return copyWith(args: args, code: code);
  }

  ConfigurableOperation patchWithConfigurableOperation([
    ConfigurableOperationPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? ConfigurableOperationPatch();
    final _patchMap = _patcher.patchMap;
    return ConfigurableOperation(
      args: _patchMap.containsKey(ConfigurableOperation$.args)
          ? ((_patchMap[ConfigurableOperation$.args] is Function)
                    ? _patchMap[ConfigurableOperation$.args](this.args)
                    : (_patchMap[ConfigurableOperation$.args] is Patch)
                    ? _patchMap[ConfigurableOperation$.args].applyTo(this.args)
                    : _patchMap[ConfigurableOperation$.args])
                as List<ConfigArg>
          : this.args,
      code: _patchMap.containsKey(ConfigurableOperation$.code)
          ? ((_patchMap[ConfigurableOperation$.code] is Function)
                    ? _patchMap[ConfigurableOperation$.code](this.code)
                    : (_patchMap[ConfigurableOperation$.code] is Patch)
                    ? _patchMap[ConfigurableOperation$.code].applyTo(this.code)
                    : _patchMap[ConfigurableOperation$.code])
                as String
          : this.code,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ConfigurableOperation &&
        args == other.args &&
        code == other.code;
  }

  @override
  int get hashCode {
    return Object.hash(this.args, this.code);
  }

  @override
  String toString() {
    return 'ConfigurableOperation(' + 'args: ${args}' + ', ' + 'code: ${code})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ConfigurableOperationToJson(this);
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

extension ConfigurableOperationPropertyHelpers on ConfigurableOperation {
  bool get hasArgs {
    return this.args.isNotEmpty;
  }

  bool get noArgs {
    return this.args.isEmpty;
  }

  bool get hasCode {
    return this.code.isNotEmpty;
  }

  bool get noCode {
    return this.code.isEmpty;
  }
}

extension ConfigurableOperationSerialization on ConfigurableOperation {
  Map<String, dynamic> toJson() {
    return _$ConfigurableOperationToJson(this);
  }
}

enum ConfigurableOperation$ { args, code }

class ConfigurableOperationPatch
    extends PatchBase<ConfigurableOperation, ConfigurableOperation$> {
  ConfigurableOperation applyTo(ConfigurableOperation entity) {
    return entity.patchWithConfigurableOperation(this);
  }

  ConfigurableOperationPatch withArgs(List<ConfigArg>? value) {
    patchMap[ConfigurableOperation$.args] = value;
    return this;
  }

  ConfigurableOperationPatch updateArgsAt(
    int index,
    ConfigArgPatch Function(ConfigArgPatch) patch,
  ) {
    patchMap[ConfigurableOperation$.args] = (List<dynamic> list) {
      var updatedList = List<ConfigArg>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ConfigArgPatch())
            .applyTo(updatedList[index] as ConfigArg);
      }
      return updatedList;
    };
    return this;
  }

  ConfigurableOperationPatch withCode(String? value) {
    patchMap[ConfigurableOperation$.code] = value;
    return this;
  }
}

/// Field descriptors for [ConfigurableOperation] query construction
abstract final class ConfigurableOperationFields {
  static const args = Field<ConfigurableOperation, List<ConfigArg>>(
    'args',
    _$args,
  );

  static const code = Field<ConfigurableOperation, String>('code', _$code);

  static List<ConfigArg> _$args(ConfigurableOperation e) {
    return e.args;
  }

  static String _$code(ConfigurableOperation e) {
    return e.code;
  }
}

extension ConfigurableOperationCompareE on ConfigurableOperation {
  Map<String, dynamic> compareToConfigurableOperation(
    ConfigurableOperation other,
  ) {
    final Map<String, dynamic> diff = {};

    if (args != other.args) {
      diff['args'] = () => other.args;
    }

    if (code != other.code) {
      diff['code'] = () => other.code;
    }
    return diff;
  }
}
