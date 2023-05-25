import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

import 'package:turn_gen/test/union/models/success_1.dart';

// turngen
@immutable
class _Union1 {
  const _Union1.listBool2([
    List<bool> list_bool = const [true, false],
    List<bool> list_bool2 = const [true, false],
  ]);
  const _Union1.success({
    List<Success1> data = const [],
  });
  const _Union1.success3(
    List<String>? data,
  );
  const _Union1.listBool(
    List<bool> list_bool,
  );
  const _Union1.error_1({
    String message = '',
    String error = '',
  });
  const _Union1.error_2({
    String message = '',
    String? error,
  });
}

// end

//          --TURN_GEN--
//             (union)
//  *************************************
//         GENERATED CODE
//  *************************************
// coverage:ignore-file
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: avoid-non-null-assertion
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unnecessary_null_checks
// ignore_for_file: unused_element
// ignore_for_file: sort_constructors_first
// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: avoid_positional_boolean_parameters,
// ignore_for_file: always_put_required_named_parameters_first

@immutable
class Union1 {
  const Union1.listBool2([
    List<bool> list_bool = const [true, false],
    List<bool> list_bool2 = const [true, false],
  ])  : _tag = Union1Tag.listBool2,
        _list_bool_listBool2 = list_bool,
        _list_bool2_listBool2 = list_bool2,
        _data_success = null,
        _data_success3 = null,
        _list_bool_listBool = null,
        _message_error_1 = null,
        _error_error_1 = null,
        _message_error_2 = null,
        _error_error_2 = null;

  const Union1.success({
    List<Success1> data = const [],
  })  : _tag = Union1Tag.success,
        _list_bool_listBool2 = null,
        _list_bool2_listBool2 = null,
        _data_success = data,
        _data_success3 = null,
        _list_bool_listBool = null,
        _message_error_1 = null,
        _error_error_1 = null,
        _message_error_2 = null,
        _error_error_2 = null;

  const Union1.success3(
    List<String>? data,
  )   : _tag = Union1Tag.success3,
        _list_bool_listBool2 = null,
        _list_bool2_listBool2 = null,
        _data_success = null,
        _data_success3 = data,
        _list_bool_listBool = null,
        _message_error_1 = null,
        _error_error_1 = null,
        _message_error_2 = null,
        _error_error_2 = null;

  const Union1.listBool(
    List<bool> list_bool,
  )   : _tag = Union1Tag.listBool,
        _list_bool_listBool2 = null,
        _list_bool2_listBool2 = null,
        _data_success = null,
        _data_success3 = null,
        _list_bool_listBool = list_bool,
        _message_error_1 = null,
        _error_error_1 = null,
        _message_error_2 = null,
        _error_error_2 = null;

  const Union1.error_1({
    String message = '',
    String error = '',
  })  : _tag = Union1Tag.error_1,
        _list_bool_listBool2 = null,
        _list_bool2_listBool2 = null,
        _data_success = null,
        _data_success3 = null,
        _list_bool_listBool = null,
        _message_error_1 = message,
        _error_error_1 = error,
        _message_error_2 = null,
        _error_error_2 = null;

  const Union1.error_2({
    String message = '',
    String? error,
  })  : _tag = Union1Tag.error_2,
        _list_bool_listBool2 = null,
        _list_bool2_listBool2 = null,
        _data_success = null,
        _data_success3 = null,
        _list_bool_listBool = null,
        _message_error_1 = null,
        _error_error_1 = null,
        _message_error_2 = message,
        _error_error_2 = error;

  bool get isListBool2 => _tag == Union1Tag.listBool2;
  bool get isSuccess => _tag == Union1Tag.success;
  bool get isSuccess3 => _tag == Union1Tag.success3;
  bool get isListBool => _tag == Union1Tag.listBool;
  bool get isError_1 => _tag == Union1Tag.error_1;
  bool get isError_2 => _tag == Union1Tag.error_2;

  String toJson() => jsonEncode(toMap());

  factory Union1.fromJson(dynamic source, [Union1Tag? tag]) {
    if (source is String && source.isEmpty) {
      throw ArgumentError('Source string is empty');
    }
    final raw = source is String ? json.decode(source) : source;

    if (raw is Map<String, dynamic>) {
      return Union1.fromMap(raw, tag);
    } else if (raw is List<dynamic>) {
      if (tag == null) {
        throw ArgumentError.notNull('tag');
      }

      return Union1.fromList(raw, tag);
    }

    return throw ArgumentError('Invalid type: $raw');
  }

  factory Union1.fromList(List<dynamic> list, Union1Tag tag) {
    switch (tag) {
      case Union1Tag.listBool2:
        throw ArgumentError('Invalid type for Union1Tag.listBool2: $list');
      case Union1Tag.success:
        return Union1.success(
          data: list.isNotEmpty
              ? list
                  .map(
                    (e) => Success1.fromMap(
                      e as Map<dynamic, dynamic>,
                    ),
                  )
                  .toList()
              : const [],
        );
      case Union1Tag.success3:
        return Union1.success3(
          list.map((e) => e as String).toList(),
        );
      case Union1Tag.listBool:
        return Union1.listBool(
          list.isNotEmpty
              ? list.map((e) => e as bool).toList()
              : throw Exception(
                  "map['list_bool']_type_'Null'",
                ),
        );
      case Union1Tag.error_1:
        throw ArgumentError('Invalid type for Union1Tag.error_1: $list');
      case Union1Tag.error_2:
        throw ArgumentError('Invalid type for Union1Tag.error_2: $list');
    }
  }

  Map<String, dynamic> toMap() {
    switch (_tag) {
      case Union1Tag.listBool2:
        return {
          'tag': 'listBool2',
          'list_bool': _list_bool_listBool2,
          'list_bool2': _list_bool2_listBool2,
        };
      case Union1Tag.success:
        return {
          'tag': 'success',
          'data': _data_success?.map((e) => e.toMap()).toList() ?? const [],
        };
      case Union1Tag.success3:
        return {
          'tag': 'success3',
          'data': _data_success3,
        };
      case Union1Tag.listBool:
        return {
          'tag': 'listBool',
          'list_bool': _list_bool_listBool,
        };
      case Union1Tag.error_1:
        return {
          'tag': 'error_1',
          'message': _message_error_1,
          'error': _error_error_1,
        };
      case Union1Tag.error_2:
        return {
          'tag': 'error_2',
          'message': _message_error_2,
          'error': _error_error_2,
        };
    }
  }

  factory Union1.fromMap(
    Map<dynamic, dynamic> map,
    Union1Tag? tag,
  ) {
    tag ??= Union1Tag.values.byName(map['tag'].toString());
    switch (tag) {
      case Union1Tag.listBool2:
        return Union1.listBool2(
          (map['list_bool'] as List<dynamic>?)
                  ?.map((e) => e as bool)
                  .toList() ??
              const [true, false],
          (map['list_bool2'] as List<dynamic>?)
                  ?.map((e) => e as bool)
                  .toList() ??
              const [true, false],
        );
      case Union1Tag.success:
        return Union1.success(
          data: map['data'] != null
              ? (map['data'] as List<dynamic>)
                  .map(
                    (e) => Success1.fromMap(
                      e as Map<dynamic, dynamic>,
                    ),
                  )
                  .toList()
              : const [],
        );
      case Union1Tag.success3:
        return Union1.success3(
          (map['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
        );
      case Union1Tag.listBool:
        return Union1.listBool(
          map['list_bool'] != null
              ? (map['list_bool'] as List<dynamic>)
                  .map((e) => e as bool)
                  .toList()
              : throw Exception(
                  "map['list_bool']_type_'Null'",
                ),
        );
      case Union1Tag.error_1:
        return Union1.error_1(
          message: map['message'] as String? ?? '',
          error: map['error'] as String? ?? '',
        );
      case Union1Tag.error_2:
        return Union1.error_2(
          message: map['message'] as String? ?? '',
          error: map['error'] as String?,
        );
    }
  }

  T map<T>({
    required T Function(_Union1ListBool2 v) listBool2,
    required T Function(_Union1Success v) success,
    required T Function(_Union1Success3 v) success3,
    required T Function(_Union1ListBool v) listBool,
    required T Function(_Union1Error_1 v) error_1,
    required T Function(_Union1Error_2 v) error_2,
  }) {
    switch (_tag) {
      case Union1Tag.listBool2:
        return listBool2(
          _Union1ListBool2(
            _list_bool_listBool2!,
            _list_bool2_listBool2!,
          ),
        );
      case Union1Tag.success:
        return success(
          _Union1Success(
            _data_success!,
          ),
        );
      case Union1Tag.success3:
        return success3(
          _Union1Success3(
            _data_success3,
          ),
        );
      case Union1Tag.listBool:
        return listBool(
          _Union1ListBool(
            _list_bool_listBool!,
          ),
        );
      case Union1Tag.error_1:
        return error_1(
          _Union1Error_1(
            _message_error_1!,
            _error_error_1!,
          ),
        );
      case Union1Tag.error_2:
        return error_2(
          _Union1Error_2(
            _message_error_2!,
            _error_error_2,
          ),
        );
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(_Union1ListBool2 v)? listBool2,
    T Function(_Union1Success v)? success,
    T Function(_Union1Success3 v)? success3,
    T Function(_Union1ListBool v)? listBool,
    T Function(_Union1Error_1 v)? error_1,
    T Function(_Union1Error_2 v)? error_2,
  }) {
    switch (_tag) {
      case Union1Tag.listBool2:
        if (listBool2 != null) {
          return listBool2(
            _Union1ListBool2(
              _list_bool_listBool2!,
              _list_bool2_listBool2!,
            ),
          );
        }
        return orElse();
      case Union1Tag.success:
        if (success != null) {
          return success(
            _Union1Success(
              _data_success!,
            ),
          );
        }
        return orElse();
      case Union1Tag.success3:
        if (success3 != null) {
          return success3(
            _Union1Success3(
              _data_success3,
            ),
          );
        }
        return orElse();
      case Union1Tag.listBool:
        if (listBool != null) {
          return listBool(
            _Union1ListBool(
              _list_bool_listBool!,
            ),
          );
        }
        return orElse();
      case Union1Tag.error_1:
        if (error_1 != null) {
          return error_1(
            _Union1Error_1(
              _message_error_1!,
              _error_error_1!,
            ),
          );
        }
        return orElse();
      case Union1Tag.error_2:
        if (error_2 != null) {
          return error_2(
            _Union1Error_2(
              _message_error_2!,
              _error_error_2,
            ),
          );
        }
        return orElse();
    }
  }

  T? mapOrNull<T>({
    T? Function(_Union1ListBool2 v)? listBool2,
    T? Function(_Union1Success v)? success,
    T? Function(_Union1Success3 v)? success3,
    T? Function(_Union1ListBool v)? listBool,
    T? Function(_Union1Error_1 v)? error_1,
    T? Function(_Union1Error_2 v)? error_2,
  }) {
    switch (_tag) {
      case Union1Tag.listBool2:
        return listBool2?.call(
          _Union1ListBool2(
            _list_bool_listBool2!,
            _list_bool2_listBool2!,
          ),
        );
      case Union1Tag.success:
        return success?.call(
          _Union1Success(
            _data_success!,
          ),
        );
      case Union1Tag.success3:
        return success3?.call(
          _Union1Success3(
            _data_success3,
          ),
        );
      case Union1Tag.listBool:
        return listBool?.call(
          _Union1ListBool(
            _list_bool_listBool!,
          ),
        );
      case Union1Tag.error_1:
        return error_1?.call(
          _Union1Error_1(
            _message_error_1!,
            _error_error_1!,
          ),
        );
      case Union1Tag.error_2:
        return error_2?.call(
          _Union1Error_2(
            _message_error_2!,
            _error_error_2,
          ),
        );
    }
  }

  T? maybeMapOrNull<T>({
    T? Function(_Union1ListBool2 v)? listBool2,
    T? Function(_Union1Success v)? success,
    T? Function(_Union1Success3 v)? success3,
    T? Function(_Union1ListBool v)? listBool,
    T? Function(_Union1Error_1 v)? error_1,
    T? Function(_Union1Error_2 v)? error_2,
  }) {
    switch (_tag) {
      case Union1Tag.listBool2:
        if (listBool2 != null) {
          return listBool2(
            _Union1ListBool2(
              _list_bool_listBool2!,
              _list_bool2_listBool2!,
            ),
          );
        }
        return null;
      case Union1Tag.success:
        if (success != null) {
          return success(
            _Union1Success(
              _data_success!,
            ),
          );
        }
        return null;
      case Union1Tag.success3:
        if (success3 != null) {
          return success3(
            _Union1Success3(
              _data_success3,
            ),
          );
        }
        return null;
      case Union1Tag.listBool:
        if (listBool != null) {
          return listBool(
            _Union1ListBool(
              _list_bool_listBool!,
            ),
          );
        }
        return null;
      case Union1Tag.error_1:
        if (error_1 != null) {
          return error_1(
            _Union1Error_1(
              _message_error_1!,
              _error_error_1!,
            ),
          );
        }
        return null;
      case Union1Tag.error_2:
        if (error_2 != null) {
          return error_2(
            _Union1Error_2(
              _message_error_2!,
              _error_error_2,
            ),
          );
        }
        return null;
    }
  }

  T when<T>({
    required T Function(
      List<bool> list_bool,
      List<bool> list_bool2,
    ) listBool2,
    required T Function(
      List<Success1> data,
    ) success,
    required T Function(
      List<String>? data,
    ) success3,
    required T Function(
      List<bool> list_bool,
    ) listBool,
    required T Function(
      String message,
      String error,
    ) error_1,
    required T Function(
      String message,
      String? error,
    ) error_2,
  }) {
    switch (_tag) {
      case Union1Tag.listBool2:
        return listBool2(
          _list_bool_listBool2!,
          _list_bool2_listBool2!,
        );
      case Union1Tag.success:
        return success(
          _data_success!,
        );
      case Union1Tag.success3:
        return success3(
          _data_success3,
        );
      case Union1Tag.listBool:
        return listBool(
          _list_bool_listBool!,
        );
      case Union1Tag.error_1:
        return error_1(
          _message_error_1!,
          _error_error_1!,
        );
      case Union1Tag.error_2:
        return error_2(
          _message_error_2!,
          _error_error_2,
        );
    }
  }

  @override
  bool operator ==(dynamic other) {
    switch (_tag) {
      case Union1Tag.listBool2:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is Union1 &&
                const DeepCollectionEquality().equals(
                  other._list_bool_listBool2,
                  _list_bool_listBool2,
                ) &&
                const DeepCollectionEquality().equals(
                  other._list_bool2_listBool2,
                  _list_bool2_listBool2,
                ));
      case Union1Tag.success:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is Union1 &&
                const DeepCollectionEquality().equals(
                  other._data_success,
                  _data_success,
                ));
      case Union1Tag.success3:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is Union1 &&
                const DeepCollectionEquality().equals(
                  other._data_success3,
                  _data_success3,
                ));
      case Union1Tag.listBool:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is Union1 &&
                const DeepCollectionEquality().equals(
                  other._list_bool_listBool,
                  _list_bool_listBool,
                ));
      case Union1Tag.error_1:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is Union1 &&
                (identical(
                      other._message_error_1,
                      _message_error_1,
                    ) ||
                    other._message_error_1 == _message_error_1) &&
                (identical(
                      other._error_error_1,
                      _error_error_1,
                    ) ||
                    other._error_error_1 == _error_error_1));
      case Union1Tag.error_2:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is Union1 &&
                (identical(
                      other._message_error_2,
                      _message_error_2,
                    ) ||
                    other._message_error_2 == _message_error_2) &&
                (identical(
                      other._error_error_2,
                      _error_error_2,
                    ) ||
                    other._error_error_2 == _error_error_2));
    }
  }

  @override
  int get hashCode {
    switch (_tag) {
      case Union1Tag.listBool2:
        return Object.hashAll(
          [
            runtimeType,
            const DeepCollectionEquality().hash(
              _list_bool_listBool2,
            ),
            const DeepCollectionEquality().hash(
              _list_bool2_listBool2,
            ),
          ],
        );
      case Union1Tag.success:
        return Object.hashAll(
          [
            runtimeType,
            const DeepCollectionEquality().hash(
              _data_success,
            ),
          ],
        );
      case Union1Tag.success3:
        return Object.hashAll(
          [
            runtimeType,
            const DeepCollectionEquality().hash(
              _data_success3,
            ),
          ],
        );
      case Union1Tag.listBool:
        return Object.hashAll(
          [
            runtimeType,
            const DeepCollectionEquality().hash(
              _list_bool_listBool,
            ),
          ],
        );
      case Union1Tag.error_1:
        return Object.hashAll(
          [
            runtimeType,
            _message_error_1,
            _error_error_1,
          ],
        );
      case Union1Tag.error_2:
        return Object.hashAll(
          [
            runtimeType,
            _message_error_2,
            _error_error_2,
          ],
        );
    }
  }

  @override
  String toString() {
    switch (_tag) {
      case Union1Tag.listBool2:
        return 'Union1.listBool2(list_bool: $_list_bool_listBool2, list_bool2: $_list_bool2_listBool2)';
      case Union1Tag.success:
        return 'Union1.success(data: $_data_success)';
      case Union1Tag.success3:
        return 'Union1.success3(data: $_data_success3)';
      case Union1Tag.listBool:
        return 'Union1.listBool(list_bool: $_list_bool_listBool)';
      case Union1Tag.error_1:
        return 'Union1.error_1(message: $_message_error_1, error: $_error_error_1)';
      case Union1Tag.error_2:
        return 'Union1.error_2(message: $_message_error_2, error: $_error_error_2)';
    }
  }

  final Union1Tag _tag;
  final List<bool>? _list_bool_listBool2;
  final List<bool>? _list_bool2_listBool2;
  final List<Success1>? _data_success;
  final List<String>? _data_success3;
  final List<bool>? _list_bool_listBool;
  final String? _message_error_1;
  final String? _error_error_1;
  final String? _message_error_2;
  final String? _error_error_2;
}

enum Union1Tag {
  listBool2,
  success,
  success3,
  listBool,
  error_1,
  error_2,
}

@immutable
class _Union1ListBool2 extends Union1 {
  const _Union1ListBool2(
    this.list_bool,
    this.list_bool2,
  ) : super.listBool2(
          list_bool,
          list_bool2,
        );
  final List<bool> list_bool;
  final List<bool> list_bool2;

  _Union1ListBool2 copyWith({
    List<bool>? list_bool,
    List<bool>? list_bool2,
  }) {
    return _Union1ListBool2(
      list_bool ?? this.list_bool,
      list_bool2 ?? this.list_bool2,
    );
  }
}

@immutable
class _Union1Success extends Union1 {
  const _Union1Success(
    this.data,
  ) : super.success(
          data: data,
        );
  final List<Success1> data;

  _Union1Success copyWith({
    List<Success1>? data,
  }) {
    return _Union1Success(
      data ?? this.data,
    );
  }
}

@immutable
class _Union1Success3 extends Union1 {
  const _Union1Success3(
    this.data,
  ) : super.success3(
          data,
        );
  final List<String>? data;

  _Union1Success3 copyWith({
    List<String>? data,
  }) {
    return _Union1Success3(
      data ?? this.data,
    );
  }
}

@immutable
class _Union1ListBool extends Union1 {
  const _Union1ListBool(
    this.list_bool,
  ) : super.listBool(
          list_bool,
        );
  final List<bool> list_bool;

  _Union1ListBool copyWith({
    List<bool>? list_bool,
  }) {
    return _Union1ListBool(
      list_bool ?? this.list_bool,
    );
  }
}

@immutable
class _Union1Error_1 extends Union1 {
  const _Union1Error_1(
    this.message,
    this.error,
  ) : super.error_1(
          message: message,
          error: error,
        );
  final String message;
  final String error;

  _Union1Error_1 copyWith({
    String? message,
    String? error,
  }) {
    return _Union1Error_1(
      message ?? this.message,
      error ?? this.error,
    );
  }
}

@immutable
class _Union1Error_2 extends Union1 {
  const _Union1Error_2(
    this.message,
    this.error,
  ) : super.error_2(
          message: message,
          error: error,
        );
  final String message;
  final String? error;

  _Union1Error_2 copyWith({
    String? message,
    String? error,
  }) {
    return _Union1Error_2(
      message ?? this.message,
      error ?? this.error,
    );
  }
}
