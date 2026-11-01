// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'create_customer_input.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class CreateCustomerInput {
  CreateCustomerInput({
    Map<String, dynamic>? this.customFields,
    required String this.emailAddress,
    required String this.firstName,
    required String this.lastName,
    String? this.phoneNumber,
    String? this.title,
  });

  factory CreateCustomerInput.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerInputFromJson(json);

  final Map<String, dynamic>? customFields;

  final String emailAddress;

  final String firstName;

  final String lastName;

  final String? phoneNumber;

  final String? title;

  CreateCustomerInput copyWith({
    Map<String, dynamic>? customFields,
    String? emailAddress,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? title,
  }) {
    return CreateCustomerInput(
      customFields: customFields ?? this.customFields,
      emailAddress: emailAddress ?? this.emailAddress,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      title: title ?? this.title,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  CreateCustomerInput copyWithField<T>(
    Field<CreateCustomerInput, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'emailAddress':
        return copyWith(emailAddress: value as String);
      case 'firstName':
        return copyWith(firstName: value as String);
      case 'lastName':
        return copyWith(lastName: value as String);
      case 'phoneNumber':
        return copyWith(phoneNumber: value as String?);
      case 'title':
        return copyWith(title: value as String?);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'CreateCustomerInput has no settable field with this name',
        );
    }
  }

  CreateCustomerInput copyWithCreateCustomerInput({
    Map<String, dynamic>? customFields,
    String? emailAddress,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? title,
  }) {
    return copyWith(
      customFields: customFields,
      emailAddress: emailAddress,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      title: title,
    );
  }

  CreateCustomerInput patchWithCreateCustomerInput([
    CreateCustomerInputPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? CreateCustomerInputPatch();
    final _patchMap = _patcher.patchMap;
    return CreateCustomerInput(
      customFields: _patchMap.containsKey(CreateCustomerInput$.customFields)
          ? ((_patchMap[CreateCustomerInput$.customFields] is Function)
                    ? _patchMap[CreateCustomerInput$.customFields](
                        this.customFields,
                      )
                    : (_patchMap[CreateCustomerInput$.customFields] is Patch)
                    ? _patchMap[CreateCustomerInput$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[CreateCustomerInput$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      emailAddress: _patchMap.containsKey(CreateCustomerInput$.emailAddress)
          ? ((_patchMap[CreateCustomerInput$.emailAddress] is Function)
                    ? _patchMap[CreateCustomerInput$.emailAddress](
                        this.emailAddress,
                      )
                    : (_patchMap[CreateCustomerInput$.emailAddress] is Patch)
                    ? _patchMap[CreateCustomerInput$.emailAddress].applyTo(
                        this.emailAddress,
                      )
                    : _patchMap[CreateCustomerInput$.emailAddress])
                as String
          : this.emailAddress,
      firstName: _patchMap.containsKey(CreateCustomerInput$.firstName)
          ? ((_patchMap[CreateCustomerInput$.firstName] is Function)
                    ? _patchMap[CreateCustomerInput$.firstName](this.firstName)
                    : (_patchMap[CreateCustomerInput$.firstName] is Patch)
                    ? _patchMap[CreateCustomerInput$.firstName].applyTo(
                        this.firstName,
                      )
                    : _patchMap[CreateCustomerInput$.firstName])
                as String
          : this.firstName,
      lastName: _patchMap.containsKey(CreateCustomerInput$.lastName)
          ? ((_patchMap[CreateCustomerInput$.lastName] is Function)
                    ? _patchMap[CreateCustomerInput$.lastName](this.lastName)
                    : (_patchMap[CreateCustomerInput$.lastName] is Patch)
                    ? _patchMap[CreateCustomerInput$.lastName].applyTo(
                        this.lastName,
                      )
                    : _patchMap[CreateCustomerInput$.lastName])
                as String
          : this.lastName,
      phoneNumber: _patchMap.containsKey(CreateCustomerInput$.phoneNumber)
          ? ((_patchMap[CreateCustomerInput$.phoneNumber] is Function)
                    ? _patchMap[CreateCustomerInput$.phoneNumber](
                        this.phoneNumber,
                      )
                    : (_patchMap[CreateCustomerInput$.phoneNumber] is Patch)
                    ? _patchMap[CreateCustomerInput$.phoneNumber].applyTo(
                        this.phoneNumber,
                      )
                    : _patchMap[CreateCustomerInput$.phoneNumber])
                as String?
          : this.phoneNumber,
      title: _patchMap.containsKey(CreateCustomerInput$.title)
          ? ((_patchMap[CreateCustomerInput$.title] is Function)
                    ? _patchMap[CreateCustomerInput$.title](this.title)
                    : (_patchMap[CreateCustomerInput$.title] is Patch)
                    ? _patchMap[CreateCustomerInput$.title].applyTo(this.title)
                    : _patchMap[CreateCustomerInput$.title])
                as String?
          : this.title,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CreateCustomerInput &&
        customFields == other.customFields &&
        emailAddress == other.emailAddress &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phoneNumber == other.phoneNumber &&
        title == other.title;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.customFields,
      this.emailAddress,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.title,
    );
  }

  @override
  String toString() {
    return 'CreateCustomerInput(' +
        'customFields: ${customFields}' +
        ', ' +
        'emailAddress: ${emailAddress}' +
        ', ' +
        'firstName: ${firstName}' +
        ', ' +
        'lastName: ${lastName}' +
        ', ' +
        'phoneNumber: ${phoneNumber}' +
        ', ' +
        'title: ${title})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$CreateCustomerInputToJson(this);
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

extension CreateCustomerInputPropertyHelpers on CreateCustomerInput {
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

  bool get hasEmailAddress {
    return this.emailAddress.isNotEmpty;
  }

  bool get noEmailAddress {
    return this.emailAddress.isEmpty;
  }

  bool get hasFirstName {
    return this.firstName.isNotEmpty;
  }

  bool get noFirstName {
    return this.firstName.isEmpty;
  }

  bool get hasLastName {
    return this.lastName.isNotEmpty;
  }

  bool get noLastName {
    return this.lastName.isEmpty;
  }

  bool get hasPhoneNumber {
    return this.phoneNumber?.isNotEmpty == true;
  }

  bool get noPhoneNumber {
    return this.phoneNumber?.isEmpty ?? true;
  }

  String get phoneNumberRequired {
    return this.phoneNumber ??
        (throw StateError('phoneNumber is required but was null'));
  }

  bool get hasTitle {
    return this.title?.isNotEmpty == true;
  }

  bool get noTitle {
    return this.title?.isEmpty ?? true;
  }

  String get titleRequired {
    return this.title ?? (throw StateError('title is required but was null'));
  }
}

extension CreateCustomerInputSerialization on CreateCustomerInput {
  Map<String, dynamic> toJson() {
    return _$CreateCustomerInputToJson(this);
  }
}

enum CreateCustomerInput$ {
  customFields,
  emailAddress,
  firstName,
  lastName,
  phoneNumber,
  title,
}

class CreateCustomerInputPatch
    extends PatchBase<CreateCustomerInput, CreateCustomerInput$> {
  CreateCustomerInput applyTo(CreateCustomerInput entity) {
    return entity.patchWithCreateCustomerInput(this);
  }

  CreateCustomerInputPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[CreateCustomerInput$.customFields] = value;
    return this;
  }

  CreateCustomerInputPatch withEmailAddress(String? value) {
    patchMap[CreateCustomerInput$.emailAddress] = value;
    return this;
  }

  CreateCustomerInputPatch withFirstName(String? value) {
    patchMap[CreateCustomerInput$.firstName] = value;
    return this;
  }

  CreateCustomerInputPatch withLastName(String? value) {
    patchMap[CreateCustomerInput$.lastName] = value;
    return this;
  }

  CreateCustomerInputPatch withPhoneNumber(String? value) {
    patchMap[CreateCustomerInput$.phoneNumber] = value;
    return this;
  }

  CreateCustomerInputPatch withTitle(String? value) {
    patchMap[CreateCustomerInput$.title] = value;
    return this;
  }
}

/// Field descriptors for [CreateCustomerInput] query construction
abstract final class CreateCustomerInputFields {
  static const customFields = Field<CreateCustomerInput, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const emailAddress = Field<CreateCustomerInput, String>(
    'emailAddress',
    _$emailAddress,
  );

  static const firstName = Field<CreateCustomerInput, String>(
    'firstName',
    _$firstName,
  );

  static const lastName = Field<CreateCustomerInput, String>(
    'lastName',
    _$lastName,
  );

  static const phoneNumber = Field<CreateCustomerInput, String?>(
    'phoneNumber',
    _$phoneNumber,
  );

  static const title = Field<CreateCustomerInput, String?>('title', _$title);

  static Map<String, dynamic>? _$customFields(CreateCustomerInput e) {
    return e.customFields;
  }

  static String _$emailAddress(CreateCustomerInput e) {
    return e.emailAddress;
  }

  static String _$firstName(CreateCustomerInput e) {
    return e.firstName;
  }

  static String _$lastName(CreateCustomerInput e) {
    return e.lastName;
  }

  static String? _$phoneNumber(CreateCustomerInput e) {
    return e.phoneNumber;
  }

  static String? _$title(CreateCustomerInput e) {
    return e.title;
  }
}

extension CreateCustomerInputCompareE on CreateCustomerInput {
  Map<String, dynamic> compareToCreateCustomerInput(CreateCustomerInput other) {
    final Map<String, dynamic> diff = {};

    if (customFields != other.customFields) {
      diff['customFields'] = () => other.customFields;
    }

    if (emailAddress != other.emailAddress) {
      diff['emailAddress'] = () => other.emailAddress;
    }

    if (firstName != other.firstName) {
      diff['firstName'] = () => other.firstName;
    }

    if (lastName != other.lastName) {
      diff['lastName'] = () => other.lastName;
    }

    if (phoneNumber != other.phoneNumber) {
      diff['phoneNumber'] = () => other.phoneNumber;
    }

    if (title != other.title) {
      diff['title'] = () => other.title;
    }
    return diff;
  }
}
