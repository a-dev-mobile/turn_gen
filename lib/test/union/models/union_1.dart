import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

import 'package:turn_gen/test/union/models/success_1.dart';

// turngen
@immutable
class _Union1 {
  const _Union1.success({
    List<Success1> data = const [],
  });
  const _Union1.success3(
    List<String>? data,
  );
  const _Union1.error({
    String message = '',
    String error = '',
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
  const Union1.success({
    List<Success1> data = const [],
  })  : _tag = Union1Tag.success,
        _data_success = data,
        _data_success3 = null,
        _message_error = null,
        _error_error = null;

  const Union1.success3(
    List<String>? data,
  )   : _tag = Union1Tag.success3,
        _data_success = null,
        _data_success3 = data,
        _message_error = null,
        _error_error = null;

  const Union1.error({
    String message = '',
    String error = '',
  })  : _tag = Union1Tag.error,
        _data_success = null,
        _data_success3 = null,
        _message_error = message,
        _error_error = error;

  bool get isSuccess => _tag == Union1Tag.success;
  bool get isSuccess3 => _tag == Union1Tag.success3;
  bool get isError => _tag == Union1Tag.error;

  String toJson() => json.encode(toMap());

  factory Union1.fromJson(String source, Union1Tag tag) {
    if (source.isEmpty) {
      throw ArgumentError('Source string is empty');
    }
    final raw = json.decode(source);

    if (raw is Map) {
      return Union1.fromMap(raw, tag);
    } else if (raw is List) {
      return Union1.fromList(raw, tag);
    }

    return throw ArgumentError('Invalid type: $raw');
  }

  factory Union1.fromList(List<dynamic> list, Union1Tag tag) {
    switch (tag) {
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
      case Union1Tag.error:
        return throw ArgumentError('Invalid type: $list');
    }
  }

  factory Union1.fromMap(Map<dynamic, dynamic> map, Union1Tag tag) {
    switch (tag) {
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
      case Union1Tag.error:
        return Union1.error(
          message: map['message'] as String? ?? '',
          error: map['error'] as String? ?? '',
        );
    }
  }

  Map<String, dynamic> toMap() {
    switch (_tag) {
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
      case Union1Tag.error:
        return {
          'tag': 'error',
          'message': _message_error,
          'error': _error_error,
        };
    }
  }

  // static Union1 fromMap(Map<dynamic, dynamic> map) {
  //   final tag = map['tag'];
  //   switch (tag) {
  //     case 'success':
  //       return Union1.success(
  //         data: map['data'] != null
  //             ? (map['data'] as List<dynamic>)
  //                 .map(
  //                   (e) => Success1.fromMap(
  //                     e as Map<dynamic, dynamic>,
  //                   ),
  //                 )
  //                 .toList()
  //             : const [],
  //       );
  //     case 'success3':
  //       return Union1.success3(
  //         (map['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
  //       );
  //     case 'error':
  //       return Union1.error(
  //         message: map['message'] as String? ?? '',
  //         error: map['error'] as String? ?? '',
  //       );
  //     default:
  //       throw ArgumentError('Invalid map: $map');
  //   }
  // }

  T map<T>({
    required T Function(_Union1Success v) success,
    required T Function(_Union1Success3 v) success3,
    required T Function(_Union1Error v) error,
  }) {
    switch (_tag) {
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
      case Union1Tag.error:
        return error(
          _Union1Error(
            _message_error!,
            _error_error!,
          ),
        );
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(_Union1Success v)? success,
    T Function(_Union1Success3 v)? success3,
    T Function(_Union1Error v)? error,
  }) {
    switch (_tag) {
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
      case Union1Tag.error:
        if (error != null) {
          return error(
            _Union1Error(
              _message_error!,
              _error_error!,
            ),
          );
        }
        return orElse();
    }
  }

  T? mapOrNull<T>({
    T? Function(_Union1Success v)? success,
    T? Function(_Union1Success3 v)? success3,
    T? Function(_Union1Error v)? error,
  }) {
    switch (_tag) {
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
      case Union1Tag.error:
        return error?.call(
          _Union1Error(
            _message_error!,
            _error_error!,
          ),
        );
    }
  }

  T? maybeMapOrNull<T>({
    T? Function(_Union1Success v)? success,
    T? Function(_Union1Success3 v)? success3,
    T? Function(_Union1Error v)? error,
  }) {
    switch (_tag) {
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
      case Union1Tag.error:
        if (error != null) {
          return error(
            _Union1Error(
              _message_error!,
              _error_error!,
            ),
          );
        }
        return null;
    }
  }

  T when<T>({
    required T Function(
      List<Success1> data,
    ) success,
    required T Function(
      List<String>? data,
    ) success3,
    required T Function(
      String message,
      String error,
    ) error,
  }) {
    switch (_tag) {
      case Union1Tag.success:
        return success(
          _data_success!,
        );
      case Union1Tag.success3:
        return success3(
          _data_success3,
        );
      case Union1Tag.error:
        return error(
          _message_error!,
          _error_error!,
        );
    }
  }

  @override
  bool operator ==(dynamic other) {
    switch (_tag) {
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
      case Union1Tag.error:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is Union1 &&
                (identical(
                      other._message_error,
                      _message_error,
                    ) ||
                    other._message_error == _message_error) &&
                (identical(
                      other._error_error,
                      _error_error,
                    ) ||
                    other._error_error == _error_error));
    }
  }

  @override
  int get hashCode {
    switch (_tag) {
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
      case Union1Tag.error:
        return Object.hashAll(
          [
            runtimeType,
            _message_error,
            _error_error,
          ],
        );
    }
  }

  @override
  String toString() {
    switch (_tag) {
      case Union1Tag.success:
        return 'Union1.success(data: $_data_success)';
      case Union1Tag.success3:
        return 'Union1.success3(data: $_data_success3)';
      case Union1Tag.error:
        return 'Union1.error(message: $_message_error, error: $_error_error)';
    }
  }

  final Union1Tag _tag;
  final List<Success1>? _data_success;
  final List<String>? _data_success3;
  final String? _message_error;
  final String? _error_error;
}

enum Union1Tag {
  success,
  success3,
  error,
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
class _Union1Error extends Union1 {
  const _Union1Error(
    this.message,
    this.error,
  ) : super.error(
          message: message,
          error: error,
        );
  final String message;
  final String error;

  _Union1Error copyWith({
    String? message,
    String? error,
  }) {
    return _Union1Error(
      message ?? this.message,
      error ?? this.error,
    );
  }
}
