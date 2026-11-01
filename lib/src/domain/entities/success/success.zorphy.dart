// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'success.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Success {
  Success({required bool this.success});

  factory Success.fromJson(Map<String, dynamic> json) =>
      _$SuccessFromJson(json);

  final bool success;

  Success copyWith({bool? success}) {
    return Success(success: success ?? this.success);
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Success copyWithField<T>(Field<Success, T> field, T value) {
    switch (field.name) {
      case 'success':
        return copyWith(success: value as bool);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Success has no settable field with this name',
        );
    }
  }

  Success copyWithSuccess({bool? success}) {
    return copyWith(success: success);
  }

  Success patchWithSuccess([SuccessPatch? patchInput]) {
    final _patcher = patchInput ?? SuccessPatch();
    final _patchMap = _patcher.patchMap;
    return Success(
      success: _patchMap.containsKey(Success$.success)
          ? ((_patchMap[Success$.success] is Function)
                    ? _patchMap[Success$.success](this.success)
                    : (_patchMap[Success$.success] is Patch)
                    ? _patchMap[Success$.success].applyTo(this.success)
                    : _patchMap[Success$.success])
                as bool
          : this.success,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Success && success == other.success;
  }

  @override
  int get hashCode {
    return Object.hash(success, 0);
  }

  @override
  String toString() {
    return 'Success(' + 'success: ${success})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$SuccessToJson(this);
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

extension SuccessPropertyHelpers on Success {}

extension SuccessSerialization on Success {
  Map<String, dynamic> toJson() {
    return _$SuccessToJson(this);
  }
}

enum Success$ { success }

class SuccessPatch extends PatchBase<Success, Success$> {
  Success applyTo(Success entity) {
    return entity.patchWithSuccess(this);
  }

  SuccessPatch withSuccess(bool? value) {
    patchMap[Success$.success] = value;
    return this;
  }
}

/// Field descriptors for [Success] query construction
abstract final class SuccessFields {
  static const success = Field<Success, bool>('success', _$success);

  static bool _$success(Success e) {
    return e.success;
  }
}

extension SuccessCompareE on Success {
  Map<String, dynamic> compareToSuccess(Success other) {
    final Map<String, dynamic> diff = {};

    if (success != other.success) {
      diff['success'] = () => other.success;
    }
    return diff;
  }
}
