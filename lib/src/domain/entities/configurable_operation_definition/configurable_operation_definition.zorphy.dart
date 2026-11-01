// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'configurable_operation_definition.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ConfigurableOperationDefinition {
  ConfigurableOperationDefinition({
    required List<ConfigArgDefinition> this.args,
    required String this.code,
    required String this.description,
  });

  factory ConfigurableOperationDefinition.fromJson(Map<String, dynamic> json) =>
      _$ConfigurableOperationDefinitionFromJson(json);

  final List<ConfigArgDefinition> args;

  final String code;

  final String description;

  ConfigurableOperationDefinition copyWith({
    List<ConfigArgDefinition>? args,
    String? code,
    String? description,
  }) {
    return ConfigurableOperationDefinition(
      args: args ?? this.args,
      code: code ?? this.code,
      description: description ?? this.description,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ConfigurableOperationDefinition copyWithField<T>(
    Field<ConfigurableOperationDefinition, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'args':
        return copyWith(args: value as List<ConfigArgDefinition>);
      case 'code':
        return copyWith(code: value as String);
      case 'description':
        return copyWith(description: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ConfigurableOperationDefinition has no settable field with this name',
        );
    }
  }

  ConfigurableOperationDefinition copyWithConfigurableOperationDefinition({
    List<ConfigArgDefinition>? args,
    String? code,
    String? description,
  }) {
    return copyWith(args: args, code: code, description: description);
  }

  ConfigurableOperationDefinition patchWithConfigurableOperationDefinition([
    ConfigurableOperationDefinitionPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? ConfigurableOperationDefinitionPatch();
    final _patchMap = _patcher.patchMap;
    return ConfigurableOperationDefinition(
      args: _patchMap.containsKey(ConfigurableOperationDefinition$.args)
          ? ((_patchMap[ConfigurableOperationDefinition$.args] is Function)
                    ? _patchMap[ConfigurableOperationDefinition$.args](
                        this.args,
                      )
                    : (_patchMap[ConfigurableOperationDefinition$.args]
                          is Patch)
                    ? _patchMap[ConfigurableOperationDefinition$.args].applyTo(
                        this.args,
                      )
                    : _patchMap[ConfigurableOperationDefinition$.args])
                as List<ConfigArgDefinition>
          : this.args,
      code: _patchMap.containsKey(ConfigurableOperationDefinition$.code)
          ? ((_patchMap[ConfigurableOperationDefinition$.code] is Function)
                    ? _patchMap[ConfigurableOperationDefinition$.code](
                        this.code,
                      )
                    : (_patchMap[ConfigurableOperationDefinition$.code]
                          is Patch)
                    ? _patchMap[ConfigurableOperationDefinition$.code].applyTo(
                        this.code,
                      )
                    : _patchMap[ConfigurableOperationDefinition$.code])
                as String
          : this.code,
      description:
          _patchMap.containsKey(ConfigurableOperationDefinition$.description)
          ? ((_patchMap[ConfigurableOperationDefinition$.description]
                        is Function)
                    ? _patchMap[ConfigurableOperationDefinition$.description](
                        this.description,
                      )
                    : (_patchMap[ConfigurableOperationDefinition$.description]
                          is Patch)
                    ? _patchMap[ConfigurableOperationDefinition$.description]
                          .applyTo(this.description)
                    : _patchMap[ConfigurableOperationDefinition$.description])
                as String
          : this.description,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ConfigurableOperationDefinition &&
        args == other.args &&
        code == other.code &&
        description == other.description;
  }

  @override
  int get hashCode {
    return Object.hash(this.args, this.code, this.description);
  }

  @override
  String toString() {
    return 'ConfigurableOperationDefinition(' +
        'args: ${args}' +
        ', ' +
        'code: ${code}' +
        ', ' +
        'description: ${description})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ConfigurableOperationDefinitionToJson(
      this,
    );
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

extension ConfigurableOperationDefinitionPropertyHelpers
    on ConfigurableOperationDefinition {
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

  bool get hasDescription {
    return this.description.isNotEmpty;
  }

  bool get noDescription {
    return this.description.isEmpty;
  }
}

extension ConfigurableOperationDefinitionSerialization
    on ConfigurableOperationDefinition {
  Map<String, dynamic> toJson() {
    return _$ConfigurableOperationDefinitionToJson(this);
  }
}

enum ConfigurableOperationDefinition$ { args, code, description }

class ConfigurableOperationDefinitionPatch
    extends
        PatchBase<
          ConfigurableOperationDefinition,
          ConfigurableOperationDefinition$
        > {
  ConfigurableOperationDefinition applyTo(
    ConfigurableOperationDefinition entity,
  ) {
    return entity.patchWithConfigurableOperationDefinition(this);
  }

  ConfigurableOperationDefinitionPatch withArgs(
    List<ConfigArgDefinition>? value,
  ) {
    patchMap[ConfigurableOperationDefinition$.args] = value;
    return this;
  }

  ConfigurableOperationDefinitionPatch updateArgsAt(
    int index,
    ConfigArgDefinitionPatch Function(ConfigArgDefinitionPatch) patch,
  ) {
    patchMap[ConfigurableOperationDefinition$.args] = (List<dynamic> list) {
      var updatedList = List<ConfigArgDefinition>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ConfigArgDefinitionPatch())
            .applyTo(updatedList[index] as ConfigArgDefinition);
      }
      return updatedList;
    };
    return this;
  }

  ConfigurableOperationDefinitionPatch withCode(String? value) {
    patchMap[ConfigurableOperationDefinition$.code] = value;
    return this;
  }

  ConfigurableOperationDefinitionPatch withDescription(String? value) {
    patchMap[ConfigurableOperationDefinition$.description] = value;
    return this;
  }
}

/// Field descriptors for [ConfigurableOperationDefinition] query construction
abstract final class ConfigurableOperationDefinitionFields {
  static const args =
      Field<ConfigurableOperationDefinition, List<ConfigArgDefinition>>(
        'args',
        _$args,
      );

  static const code = Field<ConfigurableOperationDefinition, String>(
    'code',
    _$code,
  );

  static const description = Field<ConfigurableOperationDefinition, String>(
    'description',
    _$description,
  );

  static List<ConfigArgDefinition> _$args(ConfigurableOperationDefinition e) {
    return e.args;
  }

  static String _$code(ConfigurableOperationDefinition e) {
    return e.code;
  }

  static String _$description(ConfigurableOperationDefinition e) {
    return e.description;
  }
}

extension ConfigurableOperationDefinitionCompareE
    on ConfigurableOperationDefinition {
  Map<String, dynamic> compareToConfigurableOperationDefinition(
    ConfigurableOperationDefinition other,
  ) {
    final Map<String, dynamic> diff = {};

    if (args != other.args) {
      diff['args'] = () => other.args;
    }

    if (code != other.code) {
      diff['code'] = () => other.code;
    }

    if (description != other.description) {
      diff['description'] = () => other.description;
    }
    return diff;
  }
}
