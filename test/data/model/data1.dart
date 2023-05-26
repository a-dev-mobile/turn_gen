// // ignore_for_file: avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
// // ignore_for_file: sort_constructors_first
// import 'dart:convert';

// import 'package:collection/collection.dart';
// import 'package:turn_gen/src/src.dart';

// // turngen
// class Data1 {
// /* init: EnumTypeRun.run */
//   final EnumTypeRun enumTypeRun_init;

// /* init: EnumTypeRun.run */
//   final EnumTypeRun? enumTypeRun_null_init;

//   final EnumTypeRun enumTypeRun;

//   final EnumTypeRun? enumTypeRun_null;

//   // end

// //          --TURN_GEN--
// //             (data)
// //  *************************************
// //         GENERATED CODE
// //  *************************************
//   const Data1({
//     required this.enumTypeRun,
//     this.enumTypeRun_init = EnumTypeRun.run,
//     this.enumTypeRun_null_init = EnumTypeRun.run,
//     this.enumTypeRun_null,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'enumTypeRun_init': enumTypeRun_init.index,
//       'enumTypeRun_null_init': enumTypeRun_null_init?.index,
//       'enumTypeRun': enumTypeRun.index,
//       'enumTypeRun_null': enumTypeRun_null?.index,
//     };
//   }

//   factory Data1.fromMap(Map<dynamic, dynamic> map) {
//     return Data1(
//       enumTypeRun_init: map['enumTypeRun_init'] != null
//           ? map['enumTypeRun_init'] is int
//               ? EnumTypeRun.values[map['enumTypeRun_init'] as int]
//               : map['enumTypeRun_init'] is String
//                   // ignore: prefer-enums-by-name
//                   ? EnumTypeRun.values.firstWhere(
//                       (e) =>
//                           e.toString().split('.').last ==
//                           map['enumTypeRun_init'].toString(),
//                       orElse: () => EnumTypeRun.run,
//                     )
//                   : EnumTypeRun.run
//           : EnumTypeRun.run,
//       enumTypeRun_null_init: map['enumTypeRun_null_init'] != null
//           ? map['enumTypeRun_null_init'] is int
//               ? EnumTypeRun.values[map['enumTypeRun_null_init'] as int]
//               : map['enumTypeRun_null_init'] is String
//                   // ignore: prefer-enums-by-name
//                   ? EnumTypeRun.values.firstWhere(
//                       (e) =>
//                           e.toString().split('.').last ==
//                           map['enumTypeRun_null_init'].toString(),
//                       orElse: () => EnumTypeRun.run,
//                     )
//                   : EnumTypeRun.run
//           : EnumTypeRun.run,
//       enumTypeRun: map['enumTypeRun'] != null
//           ? map['enumTypeRun'] is int
//               ? EnumTypeRun.values[map['enumTypeRun'] as int]
//               : map['enumTypeRun'] is String
//                   // ignore: prefer-enums-by-name
//                   ? EnumTypeRun.values.firstWhere(
//                       (e) =>
//                           e.toString().split('.').last ==
//                           map['enumTypeRun'].toString(),
//                       orElse: () => throw Exception(
//                         "EnumTypeRun - No matching value found for map['enumTypeRun']",
//                       ),
//                     )
//                   : throw Exception(
//                       "EnumTypeRun - Wrong type for map['enumTypeRun']'",
//                     )
//           : throw Exception(
//               "EnumTypeRun - map['enumTypeRun']' is null",
//             ),
//       enumTypeRun_null: map['enumTypeRun_null'] != null
//           ? map['enumTypeRun_null'] is int
//               ? EnumTypeRun.values[map['enumTypeRun_null'] as int]
//               : map['enumTypeRun_null'] is String
//                   // ignore: prefer-enums-by-name
//                   ? EnumTypeRun.values.firstWhereOrNull(
//                       (e) =>
//                           e.toString().split('.').last ==
//                           map['enumTypeRun_null'].toString(),
//                     )
//                   : null
//           : null,
//     );
//   }

//   Data1 copyWith({
//     EnumTypeRun? enumTypeRun_init,
//     EnumTypeRun? enumTypeRun_null_init,
//     EnumTypeRun? enumTypeRun,
//     EnumTypeRun? enumTypeRun_null,
//   }) {
//     return Data1(
//       enumTypeRun_init: enumTypeRun_init ?? this.enumTypeRun_init,
//       enumTypeRun_null_init:
//           enumTypeRun_null_init ?? this.enumTypeRun_null_init,
//       enumTypeRun: enumTypeRun ?? this.enumTypeRun,
//       enumTypeRun_null: enumTypeRun_null ?? this.enumTypeRun_null,
//     );
//   }

//   String toJson() => json.encode(toMap());
//   factory Data1.fromJson(String source) => Data1.fromMap(
//         json.decode(source) as Map<String, dynamic>,
//       );

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is Data1 &&
//             (identical(
//                   other.enumTypeRun_init,
//                   enumTypeRun_init,
//                 ) ||
//                 other.enumTypeRun_init == enumTypeRun_init) &&
//             (identical(
//                   other.enumTypeRun_null_init,
//                   enumTypeRun_null_init,
//                 ) ||
//                 other.enumTypeRun_null_init == enumTypeRun_null_init) &&
//             (identical(
//                   other.enumTypeRun,
//                   enumTypeRun,
//                 ) ||
//                 other.enumTypeRun == enumTypeRun) &&
//             (identical(
//                   other.enumTypeRun_null,
//                   enumTypeRun_null,
//                 ) ||
//                 other.enumTypeRun_null == enumTypeRun_null));
//   }

//   @override
//   int get hashCode => Object.hashAll([
//         runtimeType,
//         enumTypeRun_init,
//         enumTypeRun_null_init,
//         enumTypeRun,
//         enumTypeRun_null,
//       ]);

//   @override
//   String toString() {
//     return 'Data1(enumTypeRun_init: $enumTypeRun_init, enumTypeRun_null_init: $enumTypeRun_null_init, enumTypeRun: $enumTypeRun, enumTypeRun_null: $enumTypeRun_null, )';
//   }
// }
