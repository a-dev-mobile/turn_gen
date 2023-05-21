import 'package:meta/meta.dart';

class _ApiResponse {
  const _ApiResponse.success(
    String namt, [
    String content = 'success',
    String? message,
    String? exception,
  ]);
  const _ApiResponse.failed([String? exception]);
  const _ApiResponse.load({required String text, int? intNull});
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
// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: avoid_positional_boolean_parameters,
// ignore_for_file: always_put_required_named_parameters_first

@immutable
class ApiResponse {
  const ApiResponse.success(
    String namt, [
    String content = 'success',
    String? message,
    String? exception,
  ])  : _tag = _ApiResponseTag.success,
        _namt_success = namt,
        _content_success = content,
        _message_success = message,
        _exception_success = exception,
        _exception_failed = null,
        _text_load = null,
        _intNull_load = null;

  const ApiResponse.failed([String? exception])
      : _tag = _ApiResponseTag.failed,
        _namt_success = null,
        _content_success = null,
        _message_success = null,
        _exception_success = null,
        _exception_failed = exception,
        _text_load = null,
        _intNull_load = null;

  const ApiResponse.load({required String text, int? intNull})
      : _tag = _ApiResponseTag.load,
        _namt_success = null,
        _content_success = null,
        _message_success = null,
        _exception_success = null,
        _exception_failed = null,
        _text_load = text,
        _intNull_load = intNull;

  Map<String, dynamic> toMap() {
    switch (_tag) {
      case _ApiResponseTag.success:
        return {
          'tag': 'success',
          'namt': _namt_success,
          'content': _content_success,
          'message': _message_success,
          'exception': _exception_success,
        };
      case _ApiResponseTag.failed:
        return {
          'tag': 'failed',
          'exception': _exception_failed,
        };
      case _ApiResponseTag.load:
        return {
          'tag': 'load',
          'text': _text_load,
          'intNull': _intNull_load,
        };
    }
  }

  static ApiResponse fromMap(Map<dynamic, dynamic> map) {
    final tag = map['tag'];
    switch (tag) {
      case 'success':
        return ApiResponse.success(
          map['namt'] != null
              ? map['namt'] as String
              : throw Exception(
                  "map['namt']_type_'Null'",
                ),
          map['content'] as String? ?? 'success',
          map['message'] as String?,
          map['exception'] as String?,
        );
      case 'failed':
        return ApiResponse.failed(
          map['exception'] as String?,
        );
      case 'load':
        return ApiResponse.load(
          text: map['text'] != null
              ? map['text'] as String
              : throw Exception(
                  "map['text']_type_'Null'",
                ),
          intNull: (map['intNull'] as num?)?.toInt(),
        );
      default:
        throw ArgumentError('Invalid map: $map');
    }
  }

  ApiResponse copyWith({
    String? namt,
    String? content,
    String? message,
    String? exception,
    String? text,
    int? intNull,
  }) {
    switch (_tag) {
      case _ApiResponseTag.success:
        return ApiResponse.success(
          namt ?? _namt_success!,
          content ?? _content_success!,
          message ?? _message_success!,
          exception ?? _exception_success!,
        );
      case _ApiResponseTag.failed:
        return ApiResponse.failed(
          exception ?? _exception_failed!,
        );
      case _ApiResponseTag.load:
        return ApiResponse.load(
          text: text ?? _text_load!,
          intNull: intNull ?? _intNull_load!,
        );
    }
  }

  T map<T>({
    required T Function(_ApiResponseSuccess v) success,
    required T Function(_ApiResponseFailed v) failed,
    required T Function(_ApiResponseLoad v) load,
  }) {
    switch (_tag) {
      case _ApiResponseTag.success:
        return success(
          _ApiResponseSuccess(
            _namt_success!,
            _content_success!,
            _message_success!,
            _exception_success!,
          ),
        );
      case _ApiResponseTag.failed:
        return failed(
          _ApiResponseFailed(
            _exception_failed!,
          ),
        );
      case _ApiResponseTag.load:
        return load(
          _ApiResponseLoad(
            _text_load!,
            _intNull_load!,
          ),
        );
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(_ApiResponseSuccess v)? success,
    T Function(_ApiResponseFailed v)? failed,
    T Function(_ApiResponseLoad v)? load,
  }) {
    switch (_tag) {
      case _ApiResponseTag.success:
        if (success != null) {
          return success(
            _ApiResponseSuccess(
              _namt_success!,
              _content_success!,
              _message_success,
              _exception_success,
            ),
          );
        }
        return orElse();
      case _ApiResponseTag.failed:
        if (failed != null) {
          return failed(
            _ApiResponseFailed(
              _exception_failed,
            ),
          );
        }
        return orElse();
      case _ApiResponseTag.load:
        if (load != null) {
          return load(
            _ApiResponseLoad(
              _text_load!,
              _intNull_load!,
            ),
          );
        }
        return orElse();
    }
  }

  T? mapOrNull<T>({
    T? Function(_ApiResponseSuccess v)? success,
    T? Function(_ApiResponseFailed v)? failed,
    T? Function(_ApiResponseLoad v)? load,
  }) {
    switch (_tag) {
      case _ApiResponseTag.success:
        return success?.call(
          _ApiResponseSuccess(
            _namt_success!,
            _content_success!,
            _message_success!,
            _exception_success!,
          ),
        );
      case _ApiResponseTag.failed:
        return failed?.call(
          _ApiResponseFailed(
            _exception_failed!,
          ),
        );
      case _ApiResponseTag.load:
        return load?.call(
          _ApiResponseLoad(
            _text_load!,
            _intNull_load!,
          ),
        );
    }
  }

  T? maybeMapOrNull<T>({
    T? Function(_ApiResponseSuccess v)? success,
    T? Function(_ApiResponseFailed v)? failed,
    T? Function(_ApiResponseLoad v)? load,
  }) {
    switch (_tag) {
      case _ApiResponseTag.success:
        if (success != null) {
          return success(
            _ApiResponseSuccess(
              _namt_success!,
              _content_success!,
              _message_success!,
              _exception_success!,
            ),
          );
        }
        return null;
      case _ApiResponseTag.failed:
        if (failed != null) {
          return failed(
            _ApiResponseFailed(
              _exception_failed!,
            ),
          );
        }
        return null;
      case _ApiResponseTag.load:
        if (load != null) {
          return load(
            _ApiResponseLoad(
              _text_load!,
              _intNull_load!,
            ),
          );
        }
        return null;
    }
  }

  T when<T>({
    required T Function(
      String namt,
      String content,
      String? message,
      String? exception,
    ) success,
    required T Function(
      String? exception,
    ) failed,
    required T Function(
      String text,
      int? intNull,
    ) load,
  }) {
    switch (_tag) {
      case _ApiResponseTag.success:
        return success(
          _namt_success!,
          _content_success!,
          _message_success,
          _exception_success,
        );
      case _ApiResponseTag.failed:
        return failed(
          _exception_failed,
        );
      case _ApiResponseTag.load:
        return load(
          _text_load!,
          _intNull_load,
        );
    }
  }

  @override
  bool operator ==(dynamic other) {
    switch (_tag) {
      case _ApiResponseTag.success:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is ApiResponse &&
                (identical(
                      other._namt_success,
                      _namt_success,
                    ) ||
                    other._namt_success == _namt_success) &&
                (identical(
                      other._content_success,
                      _content_success,
                    ) ||
                    other._content_success == _content_success) &&
                (identical(
                      other._message_success,
                      _message_success,
                    ) ||
                    other._message_success == _message_success) &&
                (identical(
                      other._exception_success,
                      _exception_success,
                    ) ||
                    other._exception_success == _exception_success));
      case _ApiResponseTag.failed:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is ApiResponse &&
                (identical(
                      other._exception_failed,
                      _exception_failed,
                    ) ||
                    other._exception_failed == _exception_failed));
      case _ApiResponseTag.load:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is ApiResponse &&
                (identical(
                      other._text_load,
                      _text_load,
                    ) ||
                    other._text_load == _text_load) &&
                (identical(
                      other._intNull_load,
                      _intNull_load,
                    ) ||
                    other._intNull_load == _intNull_load));
    }
  }

  @override
  int get hashCode {
    switch (_tag) {
      case _ApiResponseTag.success:
        return Object.hashAll(
          [
            runtimeType,
            _namt_success,
            _content_success,
            _message_success,
            _exception_success,
          ],
        );
      case _ApiResponseTag.failed:
        return Object.hashAll(
          [
            runtimeType,
            _exception_failed,
          ],
        );
      case _ApiResponseTag.load:
        return Object.hashAll(
          [
            runtimeType,
            _text_load,
            _intNull_load,
          ],
        );
    }
  }

  @override
  String toString() {
    switch (_tag) {
      case _ApiResponseTag.success:
        return 'ApiResponse.success(namt: $_namt_success, content: $_content_success, message: $_message_success, exception: $_exception_success)';
      case _ApiResponseTag.failed:
        return 'ApiResponse.failed(exception: $_exception_failed)';
      case _ApiResponseTag.load:
        return 'ApiResponse.load(text: $_text_load, intNull: $_intNull_load)';
    }
  }

  final _ApiResponseTag _tag;
  final String? _namt_success;
  final String? _content_success;
  final String? _message_success;
  final String? _exception_success;
  final String? _exception_failed;
  final String? _text_load;
  final int? _intNull_load;
}

enum _ApiResponseTag {
  success,
  failed,
  load,
}

@immutable
class _ApiResponseSuccess extends ApiResponse {
  const _ApiResponseSuccess(
    this.namt,
    this.content,
    this.message,
    this.exception,
  ) : super.success(
          namt,
          content,
          message,
          exception,
        );
  final String namt;
  final String content;
  final String? message;
  final String? exception;
}

@immutable
class _ApiResponseFailed extends ApiResponse {
  const _ApiResponseFailed(
    this.exception,
  ) : super.failed(
          exception,
        );
  final String? exception;
}

@immutable
class _ApiResponseLoad extends ApiResponse {
  const _ApiResponseLoad(
    this.text,
    this.intNull,
  ) : super.load(
          text: text,
          intNull: intNull,
        );
  final String text;
  final int? intNull;
}
