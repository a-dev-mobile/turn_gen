// import 'package:meta/meta.dart';

// class _ApiResponse {
//   const _ApiResponse.init();
//   const _ApiResponse.success(
//     String name, [
//     String content = 'success',
//     String? message,
//     String? exception,
//   ]);
//   const _ApiResponse.failed([String? exception]);
//   const _ApiResponse.load({required String text, int? intNull});
//   const _ApiResponse.load2(String text, int? intNull);
// }

// // end

// //          --TURN_GEN--
// //             (union)
// //  *************************************
// //         GENERATED CODE
// //  *************************************
// // coverage:ignore-file
// // ignore_for_file: library_private_types_in_public_api
// // ignore_for_file: avoid-non-null-assertion
// // ignore_for_file: non_constant_identifier_names
// // ignore_for_file: unnecessary_null_checks
// // ignore_for_file: unused_element
// // ignore_for_file: avoid_unused_constructor_parameters
// // ignore_for_file: avoid_positional_boolean_parameters,
// // ignore_for_file: always_put_required_named_parameters_first

// @immutable
// class ApiResponse {
//   const ApiResponse.init()
//       : _tag = _ApiResponseTag.init,
//         _name_success = null,
//         _content_success = null,
//         _message_success = null,
//         _exception_success = null,
//         _exception_failed = null,
//         _text_load = null,
//         _intNull_load = null,
//         _text_load2 = null,
//         _intNull_load2 = null;

//   const ApiResponse.success(
//     String name, [
//     String content = 'success',
//     String? message,
//     String? exception,
//   ])  : _tag = _ApiResponseTag.success,
//         _name_success = name,
//         _content_success = content,
//         _message_success = message,
//         _exception_success = exception,
//         _exception_failed = null,
//         _text_load = null,
//         _intNull_load = null,
//         _text_load2 = null,
//         _intNull_load2 = null;

//   const ApiResponse.failed([String? exception])
//       : _tag = _ApiResponseTag.failed,
//         _name_success = null,
//         _content_success = null,
//         _message_success = null,
//         _exception_success = null,
//         _exception_failed = exception,
//         _text_load = null,
//         _intNull_load = null,
//         _text_load2 = null,
//         _intNull_load2 = null;

//   const ApiResponse.load({required String text, int? intNull})
//       : _tag = _ApiResponseTag.load,
//         _name_success = null,
//         _content_success = null,
//         _message_success = null,
//         _exception_success = null,
//         _exception_failed = null,
//         _text_load = text,
//         _intNull_load = intNull,
//         _text_load2 = null,
//         _intNull_load2 = null;

//   const ApiResponse.load2(String text, int? intNull)
//       : _tag = _ApiResponseTag.load2,
//         _name_success = null,
//         _content_success = null,
//         _message_success = null,
//         _exception_success = null,
//         _exception_failed = null,
//         _text_load = null,
//         _intNull_load = null,
//         _text_load2 = text,
//         _intNull_load2 = intNull;

//   Map<String, dynamic> toMap() {
//     switch (_tag) {
//       case _ApiResponseTag.init:
//         return {
//           'tag': 'init',
//         };
//       case _ApiResponseTag.success:
//         return {
//           'tag': 'success',
//           'name': _name_success,
//           'content': _content_success,
//           'message': _message_success,
//           'exception': _exception_success,
//         };
//       case _ApiResponseTag.failed:
//         return {
//           'tag': 'failed',
//           'exception': _exception_failed,
//         };
//       case _ApiResponseTag.load:
//         return {
//           'tag': 'load',
//           'text': _text_load,
//           'intNull': _intNull_load,
//         };
//       case _ApiResponseTag.load2:
//         return {
//           'tag': 'load2',
//           'text': _text_load2,
//           'intNull': _intNull_load2,
//         };
//     }
//   }

//   static ApiResponse fromMap(Map<dynamic, dynamic> map) {
//     final tag = map['tag'];
//     switch (tag) {
//       case 'init':
//         return const ApiResponse.init();
//       case 'success':
//         return ApiResponse.success(
//           map['name'] != null
//               ? map['name'] as String
//               : throw Exception(
//                   "map['name']_type_'Null'",
//                 ),
//           map['content'] as String? ?? 'success',
//           map['message'] as String?,
//           map['exception'] as String?,
//         );
//       case 'failed':
//         return ApiResponse.failed(
//           map['exception'] as String?,
//         );
//       case 'load':
//         return ApiResponse.load(
//           text: map['text'] != null
//               ? map['text'] as String
//               : throw Exception(
//                   "map['text']_type_'Null'",
//                 ),
//           intNull: (map['intNull'] as num?)?.toInt(),
//         );
//       case 'load2':
//         return ApiResponse.load2(
//           map['text'] != null
//               ? map['text'] as String
//               : throw Exception(
//                   "map['text']_type_'Null'",
//                 ),
//           (map['intNull'] as num?)?.toInt(),
//         );
//       default:
//         throw ArgumentError('Invalid map: $map');
//     }
//   }

//   T map<T>({
//     required T Function(_ApiResponseInit v) init,
//     required T Function(_ApiResponseSuccess v) success,
//     required T Function(_ApiResponseFailed v) failed,
//     required T Function(_ApiResponseLoad v) load,
//     required T Function(_ApiResponseLoad2 v) load2,
//   }) {
//     switch (_tag) {
//       case _ApiResponseTag.init:
//         return init(
//           const _ApiResponseInit(),
//         );
//       case _ApiResponseTag.success:
//         return success(
//           _ApiResponseSuccess(
//             _name_success!,
//             _content_success!,
//             _message_success,
//             _exception_success,
//           ),
//         );
//       case _ApiResponseTag.failed:
//         return failed(
//           _ApiResponseFailed(
//             _exception_failed,
//           ),
//         );
//       case _ApiResponseTag.load:
//         return load(
//           _ApiResponseLoad(
//             _text_load!,
//             _intNull_load,
//           ),
//         );
//       case _ApiResponseTag.load2:
//         return load2(
//           _ApiResponseLoad2(
//             _text_load2!,
//             _intNull_load2,
//           ),
//         );
//     }
//   }

//   T maybeMap<T>({
//     required T Function() orElse,
//     T Function(_ApiResponseInit v)? init,
//     T Function(_ApiResponseSuccess v)? success,
//     T Function(_ApiResponseFailed v)? failed,
//     T Function(_ApiResponseLoad v)? load,
//     T Function(_ApiResponseLoad2 v)? load2,
//   }) {
//     switch (_tag) {
//       case _ApiResponseTag.init:
//         if (init != null) {
//           return init(
//             const _ApiResponseInit(),
//           );
//         }
//         return orElse();
//       case _ApiResponseTag.success:
//         if (success != null) {
//           return success(
//             _ApiResponseSuccess(
//               _name_success!,
//               _content_success!,
//               _message_success,
//               _exception_success,
//             ),
//           );
//         }
//         return orElse();
//       case _ApiResponseTag.failed:
//         if (failed != null) {
//           return failed(
//             _ApiResponseFailed(
//               _exception_failed,
//             ),
//           );
//         }
//         return orElse();
//       case _ApiResponseTag.load:
//         if (load != null) {
//           return load(
//             _ApiResponseLoad(
//               _text_load!,
//               _intNull_load,
//             ),
//           );
//         }
//         return orElse();
//       case _ApiResponseTag.load2:
//         if (load2 != null) {
//           return load2(
//             _ApiResponseLoad2(
//               _text_load2!,
//               _intNull_load2,
//             ),
//           );
//         }
//         return orElse();
//     }
//   }

//   T? mapOrNull<T>({
//     T? Function(_ApiResponseInit v)? init,
//     T? Function(_ApiResponseSuccess v)? success,
//     T? Function(_ApiResponseFailed v)? failed,
//     T? Function(_ApiResponseLoad v)? load,
//     T? Function(_ApiResponseLoad2 v)? load2,
//   }) {
//     switch (_tag) {
//       case _ApiResponseTag.init:
//         return init?.call(
//           const _ApiResponseInit(),
//         );
//       case _ApiResponseTag.success:
//         return success?.call(
//           _ApiResponseSuccess(
//             _name_success!,
//             _content_success!,
//             _message_success,
//             _exception_success,
//           ),
//         );
//       case _ApiResponseTag.failed:
//         return failed?.call(
//           _ApiResponseFailed(
//             _exception_failed,
//           ),
//         );
//       case _ApiResponseTag.load:
//         return load?.call(
//           _ApiResponseLoad(
//             _text_load!,
//             _intNull_load,
//           ),
//         );
//       case _ApiResponseTag.load2:
//         return load2?.call(
//           _ApiResponseLoad2(
//             _text_load2!,
//             _intNull_load2,
//           ),
//         );
//     }
//   }

//   T? maybeMapOrNull<T>({
//     T? Function(_ApiResponseInit v)? init,
//     T? Function(_ApiResponseSuccess v)? success,
//     T? Function(_ApiResponseFailed v)? failed,
//     T? Function(_ApiResponseLoad v)? load,
//     T? Function(_ApiResponseLoad2 v)? load2,
//   }) {
//     switch (_tag) {
//       case _ApiResponseTag.init:
//         if (init != null) {
//           return init(
//             const _ApiResponseInit(),
//           );
//         }
//         return null;
//       case _ApiResponseTag.success:
//         if (success != null) {
//           return success(
//             _ApiResponseSuccess(
//               _name_success!,
//               _content_success!,
//               _message_success,
//               _exception_success,
//             ),
//           );
//         }
//         return null;
//       case _ApiResponseTag.failed:
//         if (failed != null) {
//           return failed(
//             _ApiResponseFailed(
//               _exception_failed,
//             ),
//           );
//         }
//         return null;
//       case _ApiResponseTag.load:
//         if (load != null) {
//           return load(
//             _ApiResponseLoad(
//               _text_load!,
//               _intNull_load,
//             ),
//           );
//         }
//         return null;
//       case _ApiResponseTag.load2:
//         if (load2 != null) {
//           return load2(
//             _ApiResponseLoad2(
//               _text_load2!,
//               _intNull_load2,
//             ),
//           );
//         }
//         return null;
//     }
//   }

//   T when<T>({
//     required T Function() init,
//     required T Function(
//       String name,
//       String content,
//       String? message,
//       String? exception,
//     ) success,
//     required T Function(
//       String? exception,
//     ) failed,
//     required T Function(
//       String text,
//       int? intNull,
//     ) load,
//     required T Function(
//       String text,
//       int? intNull,
//     ) load2,
//   }) {
//     switch (_tag) {
//       case _ApiResponseTag.init:
//         return init();
//       case _ApiResponseTag.success:
//         return success(
//           _name_success!,
//           _content_success!,
//           _message_success,
//           _exception_success,
//         );
//       case _ApiResponseTag.failed:
//         return failed(
//           _exception_failed,
//         );
//       case _ApiResponseTag.load:
//         return load(
//           _text_load!,
//           _intNull_load,
//         );
//       case _ApiResponseTag.load2:
//         return load2(
//           _text_load2!,
//           _intNull_load2,
//         );
//     }
//   }

//   @override
//   bool operator ==(dynamic other) {
//     switch (_tag) {
//       case _ApiResponseTag.init:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType && other is ApiResponse);

//       case _ApiResponseTag.success:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is ApiResponse &&
//                 (identical(
//                       other._name_success,
//                       _name_success,
//                     ) ||
//                     other._name_success == _name_success) &&
//                 (identical(
//                       other._content_success,
//                       _content_success,
//                     ) ||
//                     other._content_success == _content_success) &&
//                 (identical(
//                       other._message_success,
//                       _message_success,
//                     ) ||
//                     other._message_success == _message_success) &&
//                 (identical(
//                       other._exception_success,
//                       _exception_success,
//                     ) ||
//                     other._exception_success == _exception_success));
//       case _ApiResponseTag.failed:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is ApiResponse &&
//                 (identical(
//                       other._exception_failed,
//                       _exception_failed,
//                     ) ||
//                     other._exception_failed == _exception_failed));
//       case _ApiResponseTag.load:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is ApiResponse &&
//                 (identical(
//                       other._text_load,
//                       _text_load,
//                     ) ||
//                     other._text_load == _text_load) &&
//                 (identical(
//                       other._intNull_load,
//                       _intNull_load,
//                     ) ||
//                     other._intNull_load == _intNull_load));
//       case _ApiResponseTag.load2:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is ApiResponse &&
//                 (identical(
//                       other._text_load2,
//                       _text_load2,
//                     ) ||
//                     other._text_load2 == _text_load2) &&
//                 (identical(
//                       other._intNull_load2,
//                       _intNull_load2,
//                     ) ||
//                     other._intNull_load2 == _intNull_load2));
//     }
//   }

//   @override
//   int get hashCode {
//     switch (_tag) {
//       case _ApiResponseTag.init:
//         return Object.hashAll(
//           [
//             runtimeType,
//           ],
//         );
//       case _ApiResponseTag.success:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _name_success,
//             _content_success,
//             _message_success,
//             _exception_success,
//           ],
//         );
//       case _ApiResponseTag.failed:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _exception_failed,
//           ],
//         );
//       case _ApiResponseTag.load:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _text_load,
//             _intNull_load,
//           ],
//         );
//       case _ApiResponseTag.load2:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _text_load2,
//             _intNull_load2,
//           ],
//         );
//     }
//   }

//   @override
//   String toString() {
//     switch (_tag) {
//       case _ApiResponseTag.init:
//         return 'ApiResponse.init()';
//       case _ApiResponseTag.success:
//         return 'ApiResponse.success(name: $_name_success, content: $_content_success, message: $_message_success, exception: $_exception_success)';
//       case _ApiResponseTag.failed:
//         return 'ApiResponse.failed(exception: $_exception_failed)';
//       case _ApiResponseTag.load:
//         return 'ApiResponse.load(text: $_text_load, intNull: $_intNull_load)';
//       case _ApiResponseTag.load2:
//         return 'ApiResponse.load2(text: $_text_load2, intNull: $_intNull_load2)';
//     }
//   }

//   final _ApiResponseTag _tag;
//   final String? _name_success;
//   final String? _content_success;
//   final String? _message_success;
//   final String? _exception_success;
//   final String? _exception_failed;
//   final String? _text_load;
//   final int? _intNull_load;
//   final String? _text_load2;
//   final int? _intNull_load2;
// }

// enum _ApiResponseTag {
//   init,
//   success,
//   failed,
//   load,
//   load2,
// }

// @immutable
// class _ApiResponseInit extends ApiResponse {
//   const _ApiResponseInit() : super.init();
// }

// @immutable
// class _ApiResponseSuccess extends ApiResponse {
//   const _ApiResponseSuccess(
//     this.name,
//     this.content,
//     this.message,
//     this.exception,
//   ) : super.success(
//           name,
//           content,
//           message,
//           exception,
//         );
//   final String name;
//   final String content;
//   final String? message;
//   final String? exception;

//   _ApiResponseSuccess copyWith({
//     String? name,
//     String? content,
//     String? message,
//     String? exception,
//   }) {
//     return _ApiResponseSuccess(
//       name ?? this.name,
//       content ?? this.content,
//       message ?? this.message,
//       exception ?? this.exception,
//     );
//   }
// }

// @immutable
// class _ApiResponseFailed extends ApiResponse {
//   const _ApiResponseFailed(
//     this.exception,
//   ) : super.failed(
//           exception,
//         );
//   final String? exception;

//   _ApiResponseFailed copyWith({
//     String? exception,
//   }) {
//     return _ApiResponseFailed(
//       exception ?? this.exception,
//     );
//   }
// }

// @immutable
// class _ApiResponseLoad extends ApiResponse {
//   const _ApiResponseLoad(
//     this.text,
//     this.intNull,
//   ) : super.load(
//           text: text,
//           intNull: intNull,
//         );
//   final String text;
//   final int? intNull;

//   _ApiResponseLoad copyWith({
//     String? text,
//     int? intNull,
//   }) {
//     return _ApiResponseLoad(
//       text ?? this.text,
//       intNull ?? this.intNull,
//     );
//   }
// }

// @immutable
// class _ApiResponseLoad2 extends ApiResponse {
//   const _ApiResponseLoad2(
//     this.text,
//     this.intNull,
//   ) : super.load2(
//           text,
//           intNull,
//         );
//   final String text;
//   final int? intNull;

//   _ApiResponseLoad2 copyWith({
//     String? text,
//     int? intNull,
//   }) {
//     return _ApiResponseLoad2(
//       text ?? this.text,
//       intNull ?? this.intNull,
//     );
//   }
// }
