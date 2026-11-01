// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'payment_method.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class PaymentMethod {
  PaymentMethod({
    ConfigurableOperation? this.checker,
    required String this.code,
    required DateTime this.createdAt,
    Map<String, dynamic>? this.customFields,
    required String this.description,
    required bool this.enabled,
    required ConfigurableOperation this.handler,
    required String this.id,
    required String this.name,
    required List<PaymentMethodTranslation> this.translations,
    required DateTime this.updatedAt,
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);

  final ConfigurableOperation? checker;

  final String code;

  final DateTime createdAt;

  final Map<String, dynamic>? customFields;

  final String description;

  final bool enabled;

  final ConfigurableOperation handler;

  final String id;

  final String name;

  final List<PaymentMethodTranslation> translations;

  final DateTime updatedAt;

  PaymentMethod copyWith({
    ConfigurableOperation? checker,
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? description,
    bool? enabled,
    ConfigurableOperation? handler,
    String? id,
    String? name,
    List<PaymentMethodTranslation>? translations,
    DateTime? updatedAt,
  }) {
    return PaymentMethod(
      checker: checker ?? this.checker,
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      customFields: customFields ?? this.customFields,
      description: description ?? this.description,
      enabled: enabled ?? this.enabled,
      handler: handler ?? this.handler,
      id: id ?? this.id,
      name: name ?? this.name,
      translations: translations ?? this.translations,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  PaymentMethod copyWithField<T>(Field<PaymentMethod, T> field, T value) {
    switch (field.name) {
      case 'checker':
        return copyWith(checker: value as ConfigurableOperation?);
      case 'code':
        return copyWith(code: value as String);
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'description':
        return copyWith(description: value as String);
      case 'enabled':
        return copyWith(enabled: value as bool);
      case 'handler':
        return copyWith(handler: value as ConfigurableOperation);
      case 'id':
        return copyWith(id: value as String);
      case 'name':
        return copyWith(name: value as String);
      case 'translations':
        return copyWith(translations: value as List<PaymentMethodTranslation>);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'PaymentMethod has no settable field with this name',
        );
    }
  }

  PaymentMethod copyWithPaymentMethod({
    ConfigurableOperation? checker,
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? description,
    bool? enabled,
    ConfigurableOperation? handler,
    String? id,
    String? name,
    List<PaymentMethodTranslation>? translations,
    DateTime? updatedAt,
  }) {
    return copyWith(
      checker: checker,
      code: code,
      createdAt: createdAt,
      customFields: customFields,
      description: description,
      enabled: enabled,
      handler: handler,
      id: id,
      name: name,
      translations: translations,
      updatedAt: updatedAt,
    );
  }

  PaymentMethod patchWithPaymentMethod([PaymentMethodPatch? patchInput]) {
    final _patcher = patchInput ?? PaymentMethodPatch();
    final _patchMap = _patcher.patchMap;
    return PaymentMethod(
      checker: _patchMap.containsKey(PaymentMethod$.checker)
          ? ((_patchMap[PaymentMethod$.checker] is Function)
                    ? _patchMap[PaymentMethod$.checker](this.checker)
                    : (_patchMap[PaymentMethod$.checker] is Patch)
                    ? _patchMap[PaymentMethod$.checker].applyTo(this.checker)
                    : _patchMap[PaymentMethod$.checker])
                as ConfigurableOperation?
          : this.checker,
      code: _patchMap.containsKey(PaymentMethod$.code)
          ? ((_patchMap[PaymentMethod$.code] is Function)
                    ? _patchMap[PaymentMethod$.code](this.code)
                    : (_patchMap[PaymentMethod$.code] is Patch)
                    ? _patchMap[PaymentMethod$.code].applyTo(this.code)
                    : _patchMap[PaymentMethod$.code])
                as String
          : this.code,
      createdAt: _patchMap.containsKey(PaymentMethod$.createdAt)
          ? ((_patchMap[PaymentMethod$.createdAt] is Function)
                    ? _patchMap[PaymentMethod$.createdAt](this.createdAt)
                    : (_patchMap[PaymentMethod$.createdAt] is Patch)
                    ? _patchMap[PaymentMethod$.createdAt].applyTo(
                        this.createdAt,
                      )
                    : _patchMap[PaymentMethod$.createdAt])
                as DateTime
          : this.createdAt,
      customFields: _patchMap.containsKey(PaymentMethod$.customFields)
          ? ((_patchMap[PaymentMethod$.customFields] is Function)
                    ? _patchMap[PaymentMethod$.customFields](this.customFields)
                    : (_patchMap[PaymentMethod$.customFields] is Patch)
                    ? _patchMap[PaymentMethod$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[PaymentMethod$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      description: _patchMap.containsKey(PaymentMethod$.description)
          ? ((_patchMap[PaymentMethod$.description] is Function)
                    ? _patchMap[PaymentMethod$.description](this.description)
                    : (_patchMap[PaymentMethod$.description] is Patch)
                    ? _patchMap[PaymentMethod$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[PaymentMethod$.description])
                as String
          : this.description,
      enabled: _patchMap.containsKey(PaymentMethod$.enabled)
          ? ((_patchMap[PaymentMethod$.enabled] is Function)
                    ? _patchMap[PaymentMethod$.enabled](this.enabled)
                    : (_patchMap[PaymentMethod$.enabled] is Patch)
                    ? _patchMap[PaymentMethod$.enabled].applyTo(this.enabled)
                    : _patchMap[PaymentMethod$.enabled])
                as bool
          : this.enabled,
      handler: _patchMap.containsKey(PaymentMethod$.handler)
          ? ((_patchMap[PaymentMethod$.handler] is Function)
                    ? _patchMap[PaymentMethod$.handler](this.handler)
                    : (_patchMap[PaymentMethod$.handler] is Patch)
                    ? _patchMap[PaymentMethod$.handler].applyTo(this.handler)
                    : _patchMap[PaymentMethod$.handler])
                as ConfigurableOperation
          : this.handler,
      id: _patchMap.containsKey(PaymentMethod$.id)
          ? ((_patchMap[PaymentMethod$.id] is Function)
                    ? _patchMap[PaymentMethod$.id](this.id)
                    : (_patchMap[PaymentMethod$.id] is Patch)
                    ? _patchMap[PaymentMethod$.id].applyTo(this.id)
                    : _patchMap[PaymentMethod$.id])
                as String
          : this.id,
      name: _patchMap.containsKey(PaymentMethod$.name_)
          ? ((_patchMap[PaymentMethod$.name_] is Function)
                    ? _patchMap[PaymentMethod$.name_](this.name)
                    : (_patchMap[PaymentMethod$.name_] is Patch)
                    ? _patchMap[PaymentMethod$.name_].applyTo(this.name)
                    : _patchMap[PaymentMethod$.name_])
                as String
          : this.name,
      translations: _patchMap.containsKey(PaymentMethod$.translations)
          ? ((_patchMap[PaymentMethod$.translations] is Function)
                    ? _patchMap[PaymentMethod$.translations](this.translations)
                    : (_patchMap[PaymentMethod$.translations] is Patch)
                    ? _patchMap[PaymentMethod$.translations].applyTo(
                        this.translations,
                      )
                    : _patchMap[PaymentMethod$.translations])
                as List<PaymentMethodTranslation>
          : this.translations,
      updatedAt: _patchMap.containsKey(PaymentMethod$.updatedAt)
          ? ((_patchMap[PaymentMethod$.updatedAt] is Function)
                    ? _patchMap[PaymentMethod$.updatedAt](this.updatedAt)
                    : (_patchMap[PaymentMethod$.updatedAt] is Patch)
                    ? _patchMap[PaymentMethod$.updatedAt].applyTo(
                        this.updatedAt,
                      )
                    : _patchMap[PaymentMethod$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PaymentMethod &&
        checker == other.checker &&
        code == other.code &&
        createdAt == other.createdAt &&
        customFields == other.customFields &&
        description == other.description &&
        enabled == other.enabled &&
        handler == other.handler &&
        id == other.id &&
        name == other.name &&
        translations == other.translations &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.checker,
      this.code,
      this.createdAt,
      this.customFields,
      this.description,
      this.enabled,
      this.handler,
      this.id,
      this.name,
      this.translations,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'PaymentMethod(' +
        'checker: ${checker}' +
        ', ' +
        'code: ${code}' +
        ', ' +
        'createdAt: ${createdAt}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'description: ${description}' +
        ', ' +
        'enabled: ${enabled}' +
        ', ' +
        'handler: ${handler}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'translations: ${translations}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$PaymentMethodToJson(this);
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

extension PaymentMethodPropertyHelpers on PaymentMethod {
  bool get hasChecker {
    return this.checker != null;
  }

  bool get noChecker {
    return this.checker == null;
  }

  ConfigurableOperation get checkerRequired {
    return this.checker ??
        (throw StateError('checker is required but was null'));
  }

  bool get hasCode {
    return this.code.isNotEmpty;
  }

  bool get noCode {
    return this.code.isEmpty;
  }

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

  bool get hasDescription {
    return this.description.isNotEmpty;
  }

  bool get noDescription {
    return this.description.isEmpty;
  }

  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get hasName {
    return this.name.isNotEmpty;
  }

  bool get noName {
    return this.name.isEmpty;
  }

  bool get hasTranslations {
    return this.translations.isNotEmpty;
  }

  bool get noTranslations {
    return this.translations.isEmpty;
  }
}

extension PaymentMethodSerialization on PaymentMethod {
  Map<String, dynamic> toJson() {
    return _$PaymentMethodToJson(this);
  }
}

enum PaymentMethod$ {
  checker,
  code,
  createdAt,
  customFields,
  description,
  enabled,
  handler,
  id,
  name_,
  translations,
  updatedAt,
}

class PaymentMethodPatch extends PatchBase<PaymentMethod, PaymentMethod$> {
  PaymentMethod applyTo(PaymentMethod entity) {
    return entity.patchWithPaymentMethod(this);
  }

  PaymentMethodPatch withChecker(ConfigurableOperation? value) {
    patchMap[PaymentMethod$.checker] = value;
    return this;
  }

  PaymentMethodPatch withCheckerPatch(ConfigurableOperationPatch patch) {
    patchMap[PaymentMethod$.checker] = patch;
    return this;
  }

  PaymentMethodPatch withCheckerPatchFunc(
    ConfigurableOperationPatch Function(ConfigurableOperationPatch) patch,
  ) {
    patchMap[PaymentMethod$.checker] = (dynamic current) {
      var currentPatch = ConfigurableOperationPatch();
      return patch(currentPatch).applyTo(current as ConfigurableOperation);
    };
    return this;
  }

  PaymentMethodPatch withCode(String? value) {
    patchMap[PaymentMethod$.code] = value;
    return this;
  }

  PaymentMethodPatch withCreatedAt(DateTime? value) {
    patchMap[PaymentMethod$.createdAt] = value;
    return this;
  }

  PaymentMethodPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[PaymentMethod$.customFields] = value;
    return this;
  }

  PaymentMethodPatch withDescription(String? value) {
    patchMap[PaymentMethod$.description] = value;
    return this;
  }

  PaymentMethodPatch withEnabled(bool? value) {
    patchMap[PaymentMethod$.enabled] = value;
    return this;
  }

  PaymentMethodPatch withHandler(ConfigurableOperation? value) {
    patchMap[PaymentMethod$.handler] = value;
    return this;
  }

  PaymentMethodPatch withHandlerPatch(ConfigurableOperationPatch patch) {
    patchMap[PaymentMethod$.handler] = patch;
    return this;
  }

  PaymentMethodPatch withHandlerPatchFunc(
    ConfigurableOperationPatch Function(ConfigurableOperationPatch) patch,
  ) {
    patchMap[PaymentMethod$.handler] = (dynamic current) {
      var currentPatch = ConfigurableOperationPatch();
      return patch(currentPatch).applyTo(current as ConfigurableOperation);
    };
    return this;
  }

  PaymentMethodPatch withId(String? value) {
    patchMap[PaymentMethod$.id] = value;
    return this;
  }

  PaymentMethodPatch withName(String? value) {
    patchMap[PaymentMethod$.name_] = value;
    return this;
  }

  PaymentMethodPatch withTranslations(List<PaymentMethodTranslation>? value) {
    patchMap[PaymentMethod$.translations] = value;
    return this;
  }

  PaymentMethodPatch updateTranslationsAt(
    int index,
    PaymentMethodTranslationPatch Function(PaymentMethodTranslationPatch) patch,
  ) {
    patchMap[PaymentMethod$.translations] = (List<dynamic> list) {
      var updatedList = List<PaymentMethodTranslation>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(PaymentMethodTranslationPatch())
            .applyTo(updatedList[index] as PaymentMethodTranslation);
      }
      return updatedList;
    };
    return this;
  }

  PaymentMethodPatch withUpdatedAt(DateTime? value) {
    patchMap[PaymentMethod$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [PaymentMethod] query construction
abstract final class PaymentMethodFields {
  static const checker = Field<PaymentMethod, ConfigurableOperation?>(
    'checker',
    _$checker,
  );

  static const code = Field<PaymentMethod, String>('code', _$code);

  static const createdAt = Field<PaymentMethod, DateTime>(
    'createdAt',
    _$createdAt,
  );

  static const customFields = Field<PaymentMethod, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const description = Field<PaymentMethod, String>(
    'description',
    _$description,
  );

  static const enabled = Field<PaymentMethod, bool>('enabled', _$enabled);

  static const handler = Field<PaymentMethod, ConfigurableOperation>(
    'handler',
    _$handler,
  );

  static const id = Field<PaymentMethod, String>('id', _$id);

  static const name = Field<PaymentMethod, String>('name', _$name);

  static const translations =
      Field<PaymentMethod, List<PaymentMethodTranslation>>(
        'translations',
        _$translations,
      );

  static const updatedAt = Field<PaymentMethod, DateTime>(
    'updatedAt',
    _$updatedAt,
  );

  static ConfigurableOperation? _$checker(PaymentMethod e) {
    return e.checker;
  }

  static String _$code(PaymentMethod e) {
    return e.code;
  }

  static DateTime _$createdAt(PaymentMethod e) {
    return e.createdAt;
  }

  static Map<String, dynamic>? _$customFields(PaymentMethod e) {
    return e.customFields;
  }

  static String _$description(PaymentMethod e) {
    return e.description;
  }

  static bool _$enabled(PaymentMethod e) {
    return e.enabled;
  }

  static ConfigurableOperation _$handler(PaymentMethod e) {
    return e.handler;
  }

  static String _$id(PaymentMethod e) {
    return e.id;
  }

  static String _$name(PaymentMethod e) {
    return e.name;
  }

  static List<PaymentMethodTranslation> _$translations(PaymentMethod e) {
    return e.translations;
  }

  static DateTime _$updatedAt(PaymentMethod e) {
    return e.updatedAt;
  }
}

extension PaymentMethodCompareE on PaymentMethod {
  Map<String, dynamic> compareToPaymentMethod(PaymentMethod other) {
    final Map<String, dynamic> diff = {};

    if (checker != other.checker) {
      diff['checker'] = () => other.checker;
    }

    if (code != other.code) {
      diff['code'] = () => other.code;
    }

    if (createdAt != other.createdAt) {
      diff['createdAt'] = () => other.createdAt;
    }

    if (customFields != other.customFields) {
      diff['customFields'] = () => other.customFields;
    }

    if (description != other.description) {
      diff['description'] = () => other.description;
    }

    if (enabled != other.enabled) {
      diff['enabled'] = () => other.enabled;
    }

    if (handler != other.handler) {
      diff['handler'] = () => other.handler;
    }

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (name != other.name) {
      diff['name'] = () => other.name;
    }

    if (translations != other.translations) {
      diff['translations'] = () => other.translations;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
