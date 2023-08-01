// import 'dart:convert';

// import 'package:collection/collection.dart';
// import 'package:flutter/material.dart';
// import 'package:meta/meta.dart';

// // import 'package:collection/collection.dart';
// // import 'package:meta/meta.dart';

// void main(List<String> args) {
//   print('asd');
// }

// // turngen
// @immutable
// class _Union1 {
//   const _Union1.listBool2({
//     Color? c3 = const Color(0x00FFFFFF),
//     required Color c1,
//     Color? c2,
//     Color c4 = const Color(0x00FFFFFF),
//   });
//   const _Union1.success({
//     List<int> data = const [],
//     List<Map<int, String>> data2 = const [],
//   });
//   const _Union1.success3(
//     List<String>? data,
//     String a,
//   );
//   const _Union1.listBool([
//     List<bool>? list_bool,
//     String a = '20',
//   ]);
//   const _Union1.error_1({
//     String message = '',
//     String messsage = '',
//     required num mesdssage,
//     String mesdfssage = '',
//     String error = '',
//   });
//   const _Union1.error_2({
//     String message = '',
//     String? error,
//   });
// }

// // end

// //          --TURN_GEN--
// //             (union)
// //  *************************************
// //         GENERATED CODE
// //  *************************************
// // coverage:ignore-file
// // ignore_for_file: library_private_types_in_public_api
// // ignore_for_file: camel_case_types
// // ignore_for_file: avoid-non-null-assertion
// // ignore_for_file: non_constant_identifier_names
// // ignore_for_file: unnecessary_null_checks
// // ignore_for_file: unused_element
// // ignore_for_file: sort_constructors_first
// // ignore_for_file: avoid_unused_constructor_parameters
// // ignore_for_file: avoid_positional_boolean_parameters,
// // ignore_for_file: always_put_required_named_parameters_first

// enum Union1Tag {
//   listBool2,
//   success,
//   success3,
//   listBool,
//   error_1,
//   error_2,
// }

// @immutable
// class Union1 {
//   final Union1Tag _tag;
//   final Color? _c3_listBool2;
//   final Color? _c1_listBool2;
//   final Color? _c2_listBool2;
//   final Color? _c4_listBool2;
//   final List<int>? _data_success;
//   final List<Map<int, String>>? _data2_success;
//   final List<String>? _data_success3;
//   final String? _a_success3;
//   final List<bool>? _list_bool_listBool;
//   final String? _a_listBool;
//   final String? _message_error_1;
//   final String? _messsage_error_1;
//   final num? _mesdssage_error_1;
//   final String? _mesdfssage_error_1;
//   final String? _error_error_1;
//   final String? _message_error_2;
//   final String? _error_error_2;

//   const Union1.listBool2({
//     Color? c3 = const Color(0x00FFFFFF),
//     required Color c1,
//     Color? c2,
//     Color c4 = const Color(0x00FFFFFF),
//   })  : _tag = Union1Tag.listBool2,
//         _c3_listBool2 = c3,
//         _c1_listBool2 = c1,
//         _c2_listBool2 = c2,
//         _c4_listBool2 = c4,
//         _data_success = null,
//         _data2_success = null,
//         _data_success3 = null,
//         _a_success3 = null,
//         _list_bool_listBool = null,
//         _a_listBool = null,
//         _message_error_1 = null,
//         _messsage_error_1 = null,
//         _mesdssage_error_1 = null,
//         _mesdfssage_error_1 = null,
//         _error_error_1 = null,
//         _message_error_2 = null,
//         _error_error_2 = null;

//   const Union1.success({
//     List<int> data = const [],
//     List<Map<int, String>> data2 = const [],
//   })  : _tag = Union1Tag.success,
//         _c3_listBool2 = null,
//         _c1_listBool2 = null,
//         _c2_listBool2 = null,
//         _c4_listBool2 = null,
//         _data_success = data,
//         _data2_success = data2,
//         _data_success3 = null,
//         _a_success3 = null,
//         _list_bool_listBool = null,
//         _a_listBool = null,
//         _message_error_1 = null,
//         _messsage_error_1 = null,
//         _mesdssage_error_1 = null,
//         _mesdfssage_error_1 = null,
//         _error_error_1 = null,
//         _message_error_2 = null,
//         _error_error_2 = null;

//   const Union1.success3(
//     List<String>? data,
//     String a,
//   )   : _tag = Union1Tag.success3,
//         _c3_listBool2 = null,
//         _c1_listBool2 = null,
//         _c2_listBool2 = null,
//         _c4_listBool2 = null,
//         _data_success = null,
//         _data2_success = null,
//         _data_success3 = data,
//         _a_success3 = a,
//         _list_bool_listBool = null,
//         _a_listBool = null,
//         _message_error_1 = null,
//         _messsage_error_1 = null,
//         _mesdssage_error_1 = null,
//         _mesdfssage_error_1 = null,
//         _error_error_1 = null,
//         _message_error_2 = null,
//         _error_error_2 = null;

//   const Union1.listBool([
//     List<bool>? list_bool,
//     String a = '20',
//   ])  : _tag = Union1Tag.listBool,
//         _c3_listBool2 = null,
//         _c1_listBool2 = null,
//         _c2_listBool2 = null,
//         _c4_listBool2 = null,
//         _data_success = null,
//         _data2_success = null,
//         _data_success3 = null,
//         _a_success3 = null,
//         _list_bool_listBool = list_bool,
//         _a_listBool = a,
//         _message_error_1 = null,
//         _messsage_error_1 = null,
//         _mesdssage_error_1 = null,
//         _mesdfssage_error_1 = null,
//         _error_error_1 = null,
//         _message_error_2 = null,
//         _error_error_2 = null;

//   const Union1.error_1({
//     String message = '',
//     String messsage = '',
//     required num mesdssage,
//     String mesdfssage = '',
//     String error = '',
//   })  : _tag = Union1Tag.error_1,
//         _c3_listBool2 = null,
//         _c1_listBool2 = null,
//         _c2_listBool2 = null,
//         _c4_listBool2 = null,
//         _data_success = null,
//         _data2_success = null,
//         _data_success3 = null,
//         _a_success3 = null,
//         _list_bool_listBool = null,
//         _a_listBool = null,
//         _message_error_1 = message,
//         _messsage_error_1 = messsage,
//         _mesdssage_error_1 = mesdssage,
//         _mesdfssage_error_1 = mesdfssage,
//         _error_error_1 = error,
//         _message_error_2 = null,
//         _error_error_2 = null;

//   const Union1.error_2({
//     String message = '',
//     String? error,
//   })  : _tag = Union1Tag.error_2,
//         _c3_listBool2 = null,
//         _c1_listBool2 = null,
//         _c2_listBool2 = null,
//         _c4_listBool2 = null,
//         _data_success = null,
//         _data2_success = null,
//         _data_success3 = null,
//         _a_success3 = null,
//         _list_bool_listBool = null,
//         _a_listBool = null,
//         _message_error_1 = null,
//         _messsage_error_1 = null,
//         _mesdssage_error_1 = null,
//         _mesdfssage_error_1 = null,
//         _error_error_1 = null,
//         _message_error_2 = message,
//         _error_error_2 = error;

//   bool get listBool2 => _tag == Union1Tag.listBool2;
//   bool get success => _tag == Union1Tag.success;
//   bool get success3 => _tag == Union1Tag.success3;
//   bool get listBool => _tag == Union1Tag.listBool;
//   bool get error_1 => _tag == Union1Tag.error_1;
//   bool get error_2 => _tag == Union1Tag.error_2;

//   factory Union1.fromJson(
//     String source, [
//     Union1Tag? tag,
//   ]) =>
//       Union1.fromMap(
//         json.decode(source) as Map<String, dynamic>,
//         tag,
//       );

//   Map<String, dynamic> toMap() {
//     switch (_tag) {
//       case Union1Tag.listBool2:
//         return {
//           'tag': 'listBool2',
//           'c3': _c3_listBool2?.value ?? const Color(0x00FFFFFF).value,
//           'c1': _c1_listBool2?.value,
//           'c2': _c2_listBool2?.value,
//           'c4': _c4_listBool2?.value ?? const Color(0x00FFFFFF).value,
//         };
//       case Union1Tag.success:
//         return {
//           'tag': 'success',
//           'data': _data_success,
//           'data2': _data2_success
//               ?.map((e) => e.map((k, e) => MapEntry(k.toString(), e)))
//               .toList(),
//         };
//       case Union1Tag.success3:
//         return {
//           'tag': 'success3',
//           'data': _data_success3,
//           'a': _a_success3,
//         };
//       case Union1Tag.listBool:
//         return {
//           'tag': 'listBool',
//           'list_bool': _list_bool_listBool,
//           'a': _a_listBool,
//         };
//       case Union1Tag.error_1:
//         return {
//           'tag': 'error_1',
//           'message': _message_error_1,
//           'messsage': _messsage_error_1,
//           'mesdssage': _mesdssage_error_1,
//           'mesdfssage': _mesdfssage_error_1,
//           'error': _error_error_1,
//         };
//       case Union1Tag.error_2:
//         return {
//           'tag': 'error_2',
//           'message': _message_error_2,
//           'error': _error_error_2,
//         };
//     }
//   }

//   String toJson() => json.encode(toMap());

//   factory Union1.fromMap(
//     Map<dynamic, dynamic> map, [
//     Union1Tag? tag,
//   ]) {
//     tag ??= Union1Tag.values.byName(map['tag'].toString());
//     switch (tag) {
//       case Union1Tag.listBool2:
//         return Union1.listBool2(
//           c3: map['c3'] != null
//               ? map['c3'] is int
//                   ? Color(map['c3'] as int)
//                   : const Color(0x00FFFFFF)
//               : const Color(0x00FFFFFF),
//           c1: map['c1'] != null
//               ? map['c1'] is int
//                   ? Color(map['c1'] as int)
//                   : throw Exception(
//                       "Color - Wrong type for map['c1']'",
//                     )
//               : throw Exception(
//                   "Color - map['c1']' is null",
//                 ),
//           c2: map['c2'] != null
//               ? map['c2'] is int
//                   ? Color(map['c2'] as int)
//                   : null
//               : null,
//           c4: map['c4'] != null
//               ? map['c4'] is int
//                   ? Color(map['c4'] as int)
//                   : const Color(0x00FFFFFF)
//               : const Color(0x00FFFFFF),
//         );
//       case Union1Tag.success:
//         return Union1.success(
//           data:
//               (map['data'] as List<dynamic>?)?.map((e) => e as int).toList() ??
//                   const [],
//           data2: (map['data2'] as List<dynamic>?)
//                   ?.map(
//                     (e) => (e as Map<String, dynamic>).map(
//                       (k, e) => MapEntry(int.parse(k), e as String),
//                     ),
//                   )
//                   .toList() ??
//               const [],
//         );
//       case Union1Tag.success3:
//         return Union1.success3(
//           (map['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
//           map['a'] != null
//               ? map['a'] as String
//               : throw Exception(
//                   "map['a']_type_'Null'",
//                 ),
//         );
//       case Union1Tag.listBool:
//         return Union1.listBool(
//           (map['list_bool'] as List<dynamic>?)?.map((e) => e as bool).toList(),
//           map['a'] as String? ?? '20',
//         );
//       case Union1Tag.error_1:
//         return Union1.error_1(
//           message: map['message'] as String? ?? '',
//           messsage: map['messsage'] as String? ?? '',
//           mesdssage: map['mesdssage'] != null
//               ? map['mesdssage'] as num
//               : throw Exception(
//                   "map['mesdssage']_type_'Null'",
//                 ),
//           mesdfssage: map['mesdfssage'] as String? ?? '',
//           error: map['error'] as String? ?? '',
//         );
//       case Union1Tag.error_2:
//         return Union1.error_2(
//           message: map['message'] as String? ?? '',
//           error: map['error'] as String?,
//         );
//     }
//   }

//   T map<T>({
//     required T Function(_Union1ListBool2 v) listBool2,
//     required T Function(_Union1Success v) success,
//     required T Function(_Union1Success3 v) success3,
//     required T Function(_Union1ListBool v) listBool,
//     required T Function(_Union1Error_1 v) error_1,
//     required T Function(_Union1Error_2 v) error_2,
//   }) {
//     switch (_tag) {
//       case Union1Tag.listBool2:
//         return listBool2(
//           _Union1ListBool2(
//             _c3_listBool2,
//             _c1_listBool2!,
//             _c2_listBool2,
//             _c4_listBool2!,
//           ),
//         );
//       case Union1Tag.success:
//         return success(
//           _Union1Success(
//             _data_success!,
//             _data2_success!,
//           ),
//         );
//       case Union1Tag.success3:
//         return success3(
//           _Union1Success3(
//             _data_success3,
//             _a_success3!,
//           ),
//         );
//       case Union1Tag.listBool:
//         return listBool(
//           _Union1ListBool(
//             _list_bool_listBool,
//             _a_listBool!,
//           ),
//         );
//       case Union1Tag.error_1:
//         return error_1(
//           _Union1Error_1(
//             _message_error_1!,
//             _messsage_error_1!,
//             _mesdssage_error_1!,
//             _mesdfssage_error_1!,
//             _error_error_1!,
//           ),
//         );
//       case Union1Tag.error_2:
//         return error_2(
//           _Union1Error_2(
//             _message_error_2!,
//             _error_error_2,
//           ),
//         );
//     }
//   }

//   T maybeMap<T>({
//     required T Function() orElse,
//     T Function(_Union1ListBool2 v)? listBool2,
//     T Function(_Union1Success v)? success,
//     T Function(_Union1Success3 v)? success3,
//     T Function(_Union1ListBool v)? listBool,
//     T Function(_Union1Error_1 v)? error_1,
//     T Function(_Union1Error_2 v)? error_2,
//   }) {
//     switch (_tag) {
//       case Union1Tag.listBool2:
//         if (listBool2 != null) {
//           return listBool2(
//             _Union1ListBool2(
//               _c3_listBool2,
//               _c1_listBool2!,
//               _c2_listBool2,
//               _c4_listBool2!,
//             ),
//           );
//         }
//         return orElse();
//       case Union1Tag.success:
//         if (success != null) {
//           return success(
//             _Union1Success(
//               _data_success!,
//               _data2_success!,
//             ),
//           );
//         }
//         return orElse();
//       case Union1Tag.success3:
//         if (success3 != null) {
//           return success3(
//             _Union1Success3(
//               _data_success3,
//               _a_success3!,
//             ),
//           );
//         }
//         return orElse();
//       case Union1Tag.listBool:
//         if (listBool != null) {
//           return listBool(
//             _Union1ListBool(
//               _list_bool_listBool,
//               _a_listBool!,
//             ),
//           );
//         }
//         return orElse();
//       case Union1Tag.error_1:
//         if (error_1 != null) {
//           return error_1(
//             _Union1Error_1(
//               _message_error_1!,
//               _messsage_error_1!,
//               _mesdssage_error_1!,
//               _mesdfssage_error_1!,
//               _error_error_1!,
//             ),
//           );
//         }
//         return orElse();
//       case Union1Tag.error_2:
//         if (error_2 != null) {
//           return error_2(
//             _Union1Error_2(
//               _message_error_2!,
//               _error_error_2,
//             ),
//           );
//         }
//         return orElse();
//     }
//   }

//   T? mapOrNull<T>({
//     T? Function(_Union1ListBool2 v)? listBool2,
//     T? Function(_Union1Success v)? success,
//     T? Function(_Union1Success3 v)? success3,
//     T? Function(_Union1ListBool v)? listBool,
//     T? Function(_Union1Error_1 v)? error_1,
//     T? Function(_Union1Error_2 v)? error_2,
//   }) {
//     switch (_tag) {
//       case Union1Tag.listBool2:
//         return listBool2?.call(
//           _Union1ListBool2(
//             _c3_listBool2,
//             _c1_listBool2!,
//             _c2_listBool2,
//             _c4_listBool2!,
//           ),
//         );
//       case Union1Tag.success:
//         return success?.call(
//           _Union1Success(
//             _data_success!,
//             _data2_success!,
//           ),
//         );
//       case Union1Tag.success3:
//         return success3?.call(
//           _Union1Success3(
//             _data_success3,
//             _a_success3!,
//           ),
//         );
//       case Union1Tag.listBool:
//         return listBool?.call(
//           _Union1ListBool(
//             _list_bool_listBool,
//             _a_listBool!,
//           ),
//         );
//       case Union1Tag.error_1:
//         return error_1?.call(
//           _Union1Error_1(
//             _message_error_1!,
//             _messsage_error_1!,
//             _mesdssage_error_1!,
//             _mesdfssage_error_1!,
//             _error_error_1!,
//           ),
//         );
//       case Union1Tag.error_2:
//         return error_2?.call(
//           _Union1Error_2(
//             _message_error_2!,
//             _error_error_2,
//           ),
//         );
//     }
//   }

//   T? maybeMapOrNull<T>({
//     T? Function(_Union1ListBool2 v)? listBool2,
//     T? Function(_Union1Success v)? success,
//     T? Function(_Union1Success3 v)? success3,
//     T? Function(_Union1ListBool v)? listBool,
//     T? Function(_Union1Error_1 v)? error_1,
//     T? Function(_Union1Error_2 v)? error_2,
//   }) {
//     switch (_tag) {
//       case Union1Tag.listBool2:
//         if (listBool2 != null) {
//           return listBool2(
//             _Union1ListBool2(
//               _c3_listBool2,
//               _c1_listBool2!,
//               _c2_listBool2,
//               _c4_listBool2!,
//             ),
//           );
//         }
//         return null;
//       case Union1Tag.success:
//         if (success != null) {
//           return success(
//             _Union1Success(
//               _data_success!,
//               _data2_success!,
//             ),
//           );
//         }
//         return null;
//       case Union1Tag.success3:
//         if (success3 != null) {
//           return success3(
//             _Union1Success3(
//               _data_success3,
//               _a_success3!,
//             ),
//           );
//         }
//         return null;
//       case Union1Tag.listBool:
//         if (listBool != null) {
//           return listBool(
//             _Union1ListBool(
//               _list_bool_listBool,
//               _a_listBool!,
//             ),
//           );
//         }
//         return null;
//       case Union1Tag.error_1:
//         if (error_1 != null) {
//           return error_1(
//             _Union1Error_1(
//               _message_error_1!,
//               _messsage_error_1!,
//               _mesdssage_error_1!,
//               _mesdfssage_error_1!,
//               _error_error_1!,
//             ),
//           );
//         }
//         return null;
//       case Union1Tag.error_2:
//         if (error_2 != null) {
//           return error_2(
//             _Union1Error_2(
//               _message_error_2!,
//               _error_error_2,
//             ),
//           );
//         }
//         return null;
//     }
//   }

//   T when<T>({
//     required T Function(
//       Color? c3,
//       Color c1,
//       Color? c2,
//       Color c4,
//     ) listBool2,
//     required T Function(
//       List<int> data,
//       List<Map<int, String>> data2,
//     ) success,
//     required T Function(
//       List<String>? data,
//       String a,
//     ) success3,
//     required T Function(
//       List<bool>? list_bool,
//       String a,
//     ) listBool,
//     required T Function(
//       String message,
//       String messsage,
//       num mesdssage,
//       String mesdfssage,
//       String error,
//     ) error_1,
//     required T Function(
//       String message,
//       String? error,
//     ) error_2,
//   }) {
//     switch (_tag) {
//       case Union1Tag.listBool2:
//         return listBool2(
//           _c3_listBool2,
//           _c1_listBool2!,
//           _c2_listBool2,
//           _c4_listBool2!,
//         );
//       case Union1Tag.success:
//         return success(
//           _data_success!,
//           _data2_success!,
//         );
//       case Union1Tag.success3:
//         return success3(
//           _data_success3,
//           _a_success3!,
//         );
//       case Union1Tag.listBool:
//         return listBool(
//           _list_bool_listBool,
//           _a_listBool!,
//         );
//       case Union1Tag.error_1:
//         return error_1(
//           _message_error_1!,
//           _messsage_error_1!,
//           _mesdssage_error_1!,
//           _mesdfssage_error_1!,
//           _error_error_1!,
//         );
//       case Union1Tag.error_2:
//         return error_2(
//           _message_error_2!,
//           _error_error_2,
//         );
//     }
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     if (other is! Union1) return false;
//     if (other.runtimeType != runtimeType) return false;

//     switch (_tag) {
//       case Union1Tag.listBool2:
//         return _tag == other._tag &&
//             (identical(
//                   other._c3_listBool2,
//                   _c3_listBool2,
//                 ) ||
//                 other._c3_listBool2 == _c3_listBool2) &&
//             (identical(
//                   other._c1_listBool2,
//                   _c1_listBool2,
//                 ) ||
//                 other._c1_listBool2 == _c1_listBool2) &&
//             (identical(
//                   other._c2_listBool2,
//                   _c2_listBool2,
//                 ) ||
//                 other._c2_listBool2 == _c2_listBool2) &&
//             (identical(
//                   other._c4_listBool2,
//                   _c4_listBool2,
//                 ) ||
//                 other._c4_listBool2 == _c4_listBool2);
//       case Union1Tag.success:
//         return _tag == other._tag &&
//             const DeepCollectionEquality().equals(
//               other._data_success,
//               _data_success,
//             ) &&
//             const DeepCollectionEquality().equals(
//               other._data2_success,
//               _data2_success,
//             );
//       case Union1Tag.success3:
//         return _tag == other._tag &&
//             const DeepCollectionEquality().equals(
//               other._data_success3,
//               _data_success3,
//             ) &&
//             (identical(
//                   other._a_success3,
//                   _a_success3,
//                 ) ||
//                 other._a_success3 == _a_success3);
//       case Union1Tag.listBool:
//         return _tag == other._tag &&
//             const DeepCollectionEquality().equals(
//               other._list_bool_listBool,
//               _list_bool_listBool,
//             ) &&
//             (identical(
//                   other._a_listBool,
//                   _a_listBool,
//                 ) ||
//                 other._a_listBool == _a_listBool);
//       case Union1Tag.error_1:
//         return _tag == other._tag &&
//             (identical(
//                   other._message_error_1,
//                   _message_error_1,
//                 ) ||
//                 other._message_error_1 == _message_error_1) &&
//             (identical(
//                   other._messsage_error_1,
//                   _messsage_error_1,
//                 ) ||
//                 other._messsage_error_1 == _messsage_error_1) &&
//             (identical(
//                   other._mesdssage_error_1,
//                   _mesdssage_error_1,
//                 ) ||
//                 other._mesdssage_error_1 == _mesdssage_error_1) &&
//             (identical(
//                   other._mesdfssage_error_1,
//                   _mesdfssage_error_1,
//                 ) ||
//                 other._mesdfssage_error_1 == _mesdfssage_error_1) &&
//             (identical(
//                   other._error_error_1,
//                   _error_error_1,
//                 ) ||
//                 other._error_error_1 == _error_error_1);
//       case Union1Tag.error_2:
//         return _tag == other._tag &&
//             (identical(
//                   other._message_error_2,
//                   _message_error_2,
//                 ) ||
//                 other._message_error_2 == _message_error_2) &&
//             (identical(
//                   other._error_error_2,
//                   _error_error_2,
//                 ) ||
//                 other._error_error_2 == _error_error_2);
//     }
//   }

//   @override
//   int get hashCode {
//     switch (_tag) {
//       case Union1Tag.listBool2:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _c3_listBool2,
//             _c1_listBool2,
//             _c2_listBool2,
//             _c4_listBool2,
//           ],
//         );
//       case Union1Tag.success:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             const DeepCollectionEquality().hash(
//               _data_success,
//             ),
//             const DeepCollectionEquality().hash(
//               _data2_success,
//             ),
//           ],
//         );
//       case Union1Tag.success3:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             const DeepCollectionEquality().hash(
//               _data_success3,
//             ),
//             _a_success3,
//           ],
//         );
//       case Union1Tag.listBool:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             const DeepCollectionEquality().hash(
//               _list_bool_listBool,
//             ),
//             _a_listBool,
//           ],
//         );
//       case Union1Tag.error_1:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _message_error_1,
//             _messsage_error_1,
//             _mesdssage_error_1,
//             _mesdfssage_error_1,
//             _error_error_1,
//           ],
//         );
//       case Union1Tag.error_2:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _message_error_2,
//             _error_error_2,
//           ],
//         );
//     }
//   }

//   @override
//   String toString() {
//     switch (_tag) {
//       case Union1Tag.listBool2:
//         return 'Union1.listBool2(c3: $_c3_listBool2, c1: $_c1_listBool2, c2: $_c2_listBool2, c4: $_c4_listBool2)';
//       case Union1Tag.success:
//         return 'Union1.success(data: $_data_success, data2: $_data2_success)';
//       case Union1Tag.success3:
//         return 'Union1.success3(data: $_data_success3, a: $_a_success3)';
//       case Union1Tag.listBool:
//         return 'Union1.listBool(list_bool: $_list_bool_listBool, a: $_a_listBool)';
//       case Union1Tag.error_1:
//         return 'Union1.error_1(message: $_message_error_1, messsage: $_messsage_error_1, mesdssage: $_mesdssage_error_1, mesdfssage: $_mesdfssage_error_1, error: $_error_error_1)';
//       case Union1Tag.error_2:
//         return 'Union1.error_2(message: $_message_error_2, error: $_error_error_2)';
//     }
//   }
// }

// @immutable
// class _Union1ListBool2 extends Union1 {
//   const _Union1ListBool2(
//     this.c3,
//     this.c1,
//     this.c2,
//     this.c4,
//   ) : super.listBool2(
//           c3: c3,
//           c1: c1,
//           c2: c2,
//           c4: c4,
//         );
//   final Color? c3;
//   final Color c1;
//   final Color? c2;
//   final Color c4;

//   _Union1ListBool2 copyWith({
//     Color? c3,
//     Color? c1,
//     Color? c2,
//     Color? c4,
//   }) {
//     return _Union1ListBool2(
//       c3 ?? this.c3,
//       c1 ?? this.c1,
//       c2 ?? this.c2,
//       c4 ?? this.c4,
//     );
//   }
// }

// @immutable
// class _Union1Success extends Union1 {
//   const _Union1Success(
//     this.data,
//     this.data2,
//   ) : super.success(
//           data: data,
//           data2: data2,
//         );
//   final List<int> data;
//   final List<Map<int, String>> data2;

//   _Union1Success copyWith({
//     List<int>? data,
//     List<Map<int, String>>? data2,
//   }) {
//     return _Union1Success(
//       data ?? this.data,
//       data2 ?? this.data2,
//     );
//   }
// }

// @immutable
// class _Union1Success3 extends Union1 {
//   const _Union1Success3(
//     this.data,
//     this.a,
//   ) : super.success3(
//           data,
//           a,
//         );
//   final List<String>? data;
//   final String a;

//   _Union1Success3 copyWith({
//     List<String>? data,
//     String? a,
//   }) {
//     return _Union1Success3(
//       data ?? this.data,
//       a ?? this.a,
//     );
//   }
// }

// @immutable
// class _Union1ListBool extends Union1 {
//   const _Union1ListBool(
//     this.list_bool,
//     this.a,
//   ) : super.listBool(
//           list_bool,
//           a,
//         );
//   final List<bool>? list_bool;
//   final String a;

//   _Union1ListBool copyWith({
//     List<bool>? list_bool,
//     String? a,
//   }) {
//     return _Union1ListBool(
//       list_bool ?? this.list_bool,
//       a ?? this.a,
//     );
//   }
// }

// @immutable
// class _Union1Error_1 extends Union1 {
//   const _Union1Error_1(
//     this.message,
//     this.messsage,
//     this.mesdssage,
//     this.mesdfssage,
//     this.error,
//   ) : super.error_1(
//           message: message,
//           messsage: messsage,
//           mesdssage: mesdssage,
//           mesdfssage: mesdfssage,
//           error: error,
//         );
//   final String message;
//   final String messsage;
//   final num mesdssage;
//   final String mesdfssage;
//   final String error;

//   _Union1Error_1 copyWith({
//     String? message,
//     String? messsage,
//     num? mesdssage,
//     String? mesdfssage,
//     String? error,
//   }) {
//     return _Union1Error_1(
//       message ?? this.message,
//       messsage ?? this.messsage,
//       mesdssage ?? this.mesdssage,
//       mesdfssage ?? this.mesdfssage,
//       error ?? this.error,
//     );
//   }
// }

// @immutable
// class _Union1Error_2 extends Union1 {
//   const _Union1Error_2(
//     this.message,
//     this.error,
//   ) : super.error_2(
//           message: message,
//           error: error,
//         );
//   final String message;
//   final String? error;

//   _Union1Error_2 copyWith({
//     String? message,
//     String? error,
//   }) {
//     return _Union1Error_2(
//       message ?? this.message,
//       error ?? this.error,
//     );
//   }
// }
