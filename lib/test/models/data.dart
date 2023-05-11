/* // ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
// ignore_for_file: public_member_api_docs, depend_on_referenced_packages, strict_raw_type, avoid_equals_and_hash_code_on_mutable_classes
// ignore_for_file:  non_constant_identifier_names

// turngen
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:turn_gen/test/models/enum_type_run.dart';

class DataTestModel {
  /* init: EnumTest.run */

  final EnumTest? enum_yes_null_default_yes;

  final EnumTest? enum_yes_null_default_no;
  /* init: EnumTest.data */

  final EnumTest enum_no_null_default_yes;
  final EnumTest enum_no_null_default_no;
//
  /* init: 10 */
  final int? int_yes_null_default_yes;
  final int? int_yes_null_default_no;
  /* init: 20 */
  final int int_no_null_default_yes;
  final int int_no_null_default_no;
//
  /* init: 10 */
  final num? num_yes_null_default_yes;
  final num? num_yes_null_default_no;
  /* init: 20000 */
  final num num_no_null_default_yes;
  final num num_no_null_default_no;
//
  /* init: '10' */
  final String? String_yes_null_default_yes;
  final String? String_yes_null_default_no;
  /* init: '20000' */
  final String String_no_null_default_yes;
  final String String_no_null_default_no;

  /* init:  {'10', '345'} */
  final Set? Set_yes_null_default_yes;
  final Set? Set_yes_null_default_no;
  /* init:  {12} */
  final Set Set_no_null_default_yes;
  final Set Set_no_null_default_no;
  //
  /* init:  {'10', '345'} */
  final Set<String>? Set_string_yes_null_default_yes;
  final Set<String>? Set_string_yes_null_default_no;
  /* init:  {'12'} */
  final Set<String> Set_string_no_null_default_yes;
  final Set<String> Set_string_no_null_default_no;

  //
  /* init:  {10, 345,} */
  final Set<int>? Set_int_yes_null_default_yes;
  final Set<int>? Set_int_yes_null_default_no;
  /* init:  {12} */
  final Set<int> Set_int_no_null_default_yes;
  final Set<int> Set_int_no_null_default_no;

  /* init:  {10, 345,} */
  final Set<int?>? Set_int_null_yes_null_default_yes;
  final Set<int?>? Set_int_null_yes_null_default_no;
  /* init:  {12,null} */
  final Set<int?> Set_int_null_no_null_default_yes;
  final Set<int?> Set_int_null_no_null_default_no;
  /* init:  {true, false,} */
  final Set<bool>? Set_bool_yes_null_default_yes;
  final Set<bool>? Set_bool_yes_null_default_no;
  /* init:  {false} */
  final Set<bool> Set_bool_no_null_default_yes;
  final Set<bool> Set_bool_no_null_default_no;
  /* init:  {true, false,null} */
  final Set<bool?>? Set_bool_null_yes_null_default_yes;
  final Set<bool?>? Set_bool_null_yes_null_default_no;
  /* init:  {false,null} */
  final Set<bool?> Set_bool_null_no_null_default_yes;
  final Set<bool?> Set_bool_null_no_null_default_no;

  final Set<double>? Set_double_yes_null_default_yes;
  final Set<double>? Set_double_yes_null_default_no;

  final Set<double> Set_double_no_null_default_yes;
  final Set<double> Set_double_no_null_default_no;

  /* init:  [true, false,] */
  final List<bool>? List_bool_yes_null_default_yes;
  final List<bool>? List_bool_yes_null_default_no;
  /* init: const  [false] */
  final List<bool> List_bool_no_null_default_yes;
  final List<bool> List_bool_no_null_default_no;
  /* init:  [true, false,null] */
  final List<bool?>? List_bool_null_yes_null_default_yes;
  final List<bool?>? List_bool_null_yes_null_default_no;
  /* init: const  [false,null] */
  final List<bool?> List_bool_null_no_null_default_yes;
  final List<bool?> List_bool_null_no_null_default_no;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DataTestModel({
    required this.enum_no_null_default_no,
    required this.int_no_null_default_no,
    required this.num_no_null_default_no,
    required this.String_no_null_default_no,
    required this.Set_no_null_default_no,
    required this.Set_string_no_null_default_no,
    required this.Set_int_no_null_default_no,
    required this.Set_int_null_no_null_default_no,
    required this.Set_bool_no_null_default_no,
    required this.Set_bool_null_no_null_default_no,
    required this.Set_double_no_null_default_yes,
    required this.Set_double_no_null_default_no,
    required this.List_bool_no_null_default_no,
    required this.List_bool_null_no_null_default_no,
    this.enum_yes_null_default_yes = EnumTest.run,
    this.enum_no_null_default_yes = EnumTest.data,
    this.int_yes_null_default_yes = 10,
    this.int_no_null_default_yes = 20,
    this.num_yes_null_default_yes = 10,
    this.num_no_null_default_yes = 20000,
    this.String_yes_null_default_yes = '10',
    this.String_no_null_default_yes = '20000',
    this.Set_yes_null_default_yes = const {'10', '345'},
    this.Set_no_null_default_yes = const {12},
    this.Set_string_yes_null_default_yes = const {'10', '345'},
    this.Set_string_no_null_default_yes = const {'12'},
    this.Set_int_yes_null_default_yes = const {
      10,
      345,
    },
    this.Set_int_no_null_default_yes = const {12},
    this.Set_int_null_yes_null_default_yes = const {
      10,
      345,
    },
    this.Set_int_null_no_null_default_yes = const {12, null},
    this.Set_bool_yes_null_default_yes = const {
      true,
      false,
    },
    this.Set_bool_no_null_default_yes = const {false},
    this.Set_bool_null_yes_null_default_yes = const {true, false, null},
    this.Set_bool_null_no_null_default_yes = const {false, null},
    this.List_bool_yes_null_default_yes = const [
      true,
      false,
    ],
    this.List_bool_no_null_default_yes = const [false],
    this.List_bool_null_yes_null_default_yes = const [true, false, null],
    this.List_bool_null_no_null_default_yes = const [false, null],
    this.enum_yes_null_default_no,
    this.int_yes_null_default_no,
    this.num_yes_null_default_no,
    this.String_yes_null_default_no,
    this.Set_yes_null_default_no,
    this.Set_string_yes_null_default_no,
    this.Set_int_yes_null_default_no,
    this.Set_int_null_yes_null_default_no,
    this.Set_bool_yes_null_default_no,
    this.Set_bool_null_yes_null_default_no,
    this.Set_double_yes_null_default_yes,
    this.Set_double_yes_null_default_no,
    this.List_bool_yes_null_default_no,
    this.List_bool_null_yes_null_default_no,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enum_yes_null_default_yes': enum_yes_null_default_yes?.index,
      'enum_yes_null_default_no': enum_yes_null_default_no?.index,
      'enum_no_null_default_yes': enum_no_null_default_yes.index,
      'enum_no_null_default_no': enum_no_null_default_no.index,
      'int_yes_null_default_yes': int_yes_null_default_yes,
      'int_yes_null_default_no': int_yes_null_default_no,
      'int_no_null_default_yes': int_no_null_default_yes,
      'int_no_null_default_no': int_no_null_default_no,
      'num_yes_null_default_yes': num_yes_null_default_yes,
      'num_yes_null_default_no': num_yes_null_default_no,
      'num_no_null_default_yes': num_no_null_default_yes,
      'num_no_null_default_no': num_no_null_default_no,
      'String_yes_null_default_yes': String_yes_null_default_yes,
      'String_yes_null_default_no': String_yes_null_default_no,
      'String_no_null_default_yes': String_no_null_default_yes,
      'String_no_null_default_no': String_no_null_default_no,
      'Set_yes_null_default_yes': Set_yes_null_default_yes?.toList(),
      'Set_yes_null_default_no': Set_yes_null_default_no?.toList(),
      'Set_no_null_default_yes': Set_no_null_default_yes.toList(),
      'Set_no_null_default_no': Set_no_null_default_no.toList(),
      'Set_string_yes_null_default_yes':
          Set_string_yes_null_default_yes?.toList(),
      'Set_string_yes_null_default_no':
          Set_string_yes_null_default_no?.toList(),
      'Set_string_no_null_default_yes': Set_string_no_null_default_yes.toList(),
      'Set_string_no_null_default_no': Set_string_no_null_default_no.toList(),
      'Set_int_yes_null_default_yes': Set_int_yes_null_default_yes?.toList(),
      'Set_int_yes_null_default_no': Set_int_yes_null_default_no?.toList(),
      'Set_int_no_null_default_yes': Set_int_no_null_default_yes.toList(),
      'Set_int_no_null_default_no': Set_int_no_null_default_no.toList(),
      'Set_int_null_yes_null_default_yes':
          Set_int_null_yes_null_default_yes?.toList(),
      'Set_int_null_yes_null_default_no':
          Set_int_null_yes_null_default_no?.toList(),
      'Set_int_null_no_null_default_yes':
          Set_int_null_no_null_default_yes.toList(),
      'Set_int_null_no_null_default_no':
          Set_int_null_no_null_default_no.toList(),
      'Set_bool_yes_null_default_yes': Set_bool_yes_null_default_yes?.toList(),
      'Set_bool_yes_null_default_no': Set_bool_yes_null_default_no?.toList(),
      'Set_bool_no_null_default_yes': Set_bool_no_null_default_yes.toList(),
      'Set_bool_no_null_default_no': Set_bool_no_null_default_no.toList(),
      'Set_bool_null_yes_null_default_yes':
          Set_bool_null_yes_null_default_yes?.toList(),
      'Set_bool_null_yes_null_default_no':
          Set_bool_null_yes_null_default_no?.toList(),
      'Set_bool_null_no_null_default_yes':
          Set_bool_null_no_null_default_yes.toList(),
      'Set_bool_null_no_null_default_no':
          Set_bool_null_no_null_default_no.toList(),
      'Set_double_yes_null_default_yes':
          Set_double_yes_null_default_yes?.toList(),
      'Set_double_yes_null_default_no':
          Set_double_yes_null_default_no?.toList(),
      'Set_double_no_null_default_yes': Set_double_no_null_default_yes.toList(),
      'Set_double_no_null_default_no': Set_double_no_null_default_no.toList(),
      'List_bool_yes_null_default_yes': List_bool_yes_null_default_yes,
      'List_bool_yes_null_default_no': List_bool_yes_null_default_no,
      'List_bool_no_null_default_yes': List_bool_no_null_default_yes,
      'List_bool_no_null_default_no': List_bool_no_null_default_no,
      'List_bool_null_yes_null_default_yes':
          List_bool_null_yes_null_default_yes,
      'List_bool_null_yes_null_default_no': List_bool_null_yes_null_default_no,
      'List_bool_null_no_null_default_yes': List_bool_null_no_null_default_yes,
      'List_bool_null_no_null_default_no': List_bool_null_no_null_default_no,
    };
  }

  factory DataTestModel.fromMap(Map<dynamic, dynamic> map) {
    return DataTestModel(
      enum_yes_null_default_yes: map['enum_yes_null_default_yes'] != null
          ? EnumTest.values[map['enum_yes_null_default_yes'] as int]
          : EnumTest.run,
      enum_yes_null_default_no: map['enum_yes_null_default_no'] != null
          ? EnumTest.values[map['enum_yes_null_default_no'] as int]
          : null,
      enum_no_null_default_yes: map['enum_no_null_default_yes'] != null
          ? EnumTest.values[map['enum_no_null_default_yes'] as int]
          : EnumTest.data,
      enum_no_null_default_no: map['enum_no_null_default_no'] != null
          ? EnumTest.values[map['enum_no_null_default_no'] as int]
          : throw Exception(
              "map['enum_no_null_default_no']_type_'Null'",
            ),
      int_yes_null_default_yes:
          (map['int_yes_null_default_yes'] as num?)?.toInt() ?? 10,
      int_yes_null_default_no:
          (map['int_yes_null_default_no'] as num?)?.toInt(),
      int_no_null_default_yes:
          (map['int_no_null_default_yes'] as num?)?.toInt() ?? 20,
      int_no_null_default_no: map['int_no_null_default_no'] != null
          ? (map['int_no_null_default_no'] as num).toInt()
          : throw Exception(
              "map['int_no_null_default_no']_type_'Null'",
            ),
      num_yes_null_default_yes: (map['num_yes_null_default_yes'] as num?) ?? 10,
      num_yes_null_default_no: map['num_yes_null_default_no'] as num?,
      num_no_null_default_yes:
          (map['num_no_null_default_yes'] as num?) ?? 20000,
      num_no_null_default_no: map['num_no_null_default_no'] != null
          ? map['num_no_null_default_no'] as num
          : throw Exception(
              "map['num_no_null_default_no']_type_'Null'",
            ),
      String_yes_null_default_yes:
          map['String_yes_null_default_yes'] as String? ?? '10',
      String_yes_null_default_no: map['String_yes_null_default_no'] as String?,
      String_no_null_default_yes:
          map['String_no_null_default_yes'] as String? ?? '20000',
      String_no_null_default_no: map['String_no_null_default_no'] != null
          ? map['String_no_null_default_no'] as String
          : throw Exception(
              "map['String_no_null_default_no']_type_'Null'",
            ),
      Set_yes_null_default_yes:
          (map['Set_yes_null_default_yes'] as List<dynamic>?)?.toSet() ??
              const {'10', '345'},
      Set_yes_null_default_no:
          (map['Set_yes_null_default_no'] as List<dynamic>?)?.toSet(),
      Set_no_null_default_yes:
          (map['Set_no_null_default_yes'] as List<dynamic>?)?.toSet() ??
              const {12},
      Set_no_null_default_no: map['Set_no_null_default_no'] != null
          ? (map['Set_no_null_default_no'] as List<dynamic>).toSet()
          : throw Exception(
              "map['Set_no_null_default_no']_type_'Null'",
            ),
      Set_string_yes_null_default_yes:
          (map['Set_string_yes_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toSet() ??
              const {'10', '345'},
      Set_string_yes_null_default_no:
          (map['Set_string_yes_null_default_no'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet(),
      Set_string_no_null_default_yes:
          (map['Set_string_no_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toSet() ??
              const {'12'},
      Set_string_no_null_default_no:
          map['Set_string_no_null_default_no'] != null
              ? (map['Set_string_no_null_default_no'] as List<dynamic>)
                  .map((e) => e as String)
                  .toSet()
              : throw Exception(
                  "map['Set_string_no_null_default_no']_type_'Null'",
                ),
      Set_int_yes_null_default_yes:
          (map['Set_int_yes_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toSet() ??
              const {
                10,
                345,
              },
      Set_int_yes_null_default_no:
          (map['Set_int_yes_null_default_no'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toSet(),
      Set_int_no_null_default_yes:
          (map['Set_int_no_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toSet() ??
              const {12},
      Set_int_no_null_default_no: map['Set_int_no_null_default_no'] != null
          ? (map['Set_int_no_null_default_no'] as List<dynamic>)
              .map((e) => e as int)
              .toSet()
          : throw Exception(
              "map['Set_int_no_null_default_no']_type_'Null'",
            ),
      Set_int_null_yes_null_default_yes:
          (map['Set_int_null_yes_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as int?)
                  .toSet() ??
              const {
                10,
                345,
              },
      Set_int_null_yes_null_default_no:
          (map['Set_int_null_yes_null_default_no'] as List<dynamic>?)
              ?.map((e) => e as int?)
              .toSet(),
      Set_int_null_no_null_default_yes:
          (map['Set_int_null_no_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as int?)
                  .toSet() ??
              const {12, null},
      Set_int_null_no_null_default_no:
          map['Set_int_null_no_null_default_no'] != null
              ? (map['Set_int_null_no_null_default_no'] as List<dynamic>)
                  .map((e) => e as int?)
                  .toSet()
              : throw Exception(
                  "map['Set_int_null_no_null_default_no']_type_'Null'",
                ),
      Set_bool_yes_null_default_yes:
          (map['Set_bool_yes_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as bool)
                  .toSet() ??
              const {
                true,
                false,
              },
      Set_bool_yes_null_default_no:
          (map['Set_bool_yes_null_default_no'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toSet(),
      Set_bool_no_null_default_yes:
          (map['Set_bool_no_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as bool)
                  .toSet() ??
              const {false},
      Set_bool_no_null_default_no: map['Set_bool_no_null_default_no'] != null
          ? (map['Set_bool_no_null_default_no'] as List<dynamic>)
              .map((e) => e as bool)
              .toSet()
          : throw Exception(
              "map['Set_bool_no_null_default_no']_type_'Null'",
            ),
      Set_bool_null_yes_null_default_yes:
          (map['Set_bool_null_yes_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as bool?)
                  .toSet() ??
              const {true, false, null},
      Set_bool_null_yes_null_default_no:
          (map['Set_bool_null_yes_null_default_no'] as List<dynamic>?)
              ?.map((e) => e as bool?)
              .toSet(),
      Set_bool_null_no_null_default_yes:
          (map['Set_bool_null_no_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as bool?)
                  .toSet() ??
              const {false, null},
      Set_bool_null_no_null_default_no:
          map['Set_bool_null_no_null_default_no'] != null
              ? (map['Set_bool_null_no_null_default_no'] as List<dynamic>)
                  .map((e) => e as bool?)
                  .toSet()
              : throw Exception(
                  "map['Set_bool_null_no_null_default_no']_type_'Null'",
                ),
      Set_double_yes_null_default_yes:
          (map['Set_double_yes_null_default_yes'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toSet(),
      Set_double_yes_null_default_no:
          (map['Set_double_yes_null_default_no'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toSet(),
      Set_double_no_null_default_yes:
          map['Set_double_no_null_default_yes'] != null
              ? (map['Set_double_no_null_default_yes'] as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toSet()
              : throw Exception(
                  "map['Set_double_no_null_default_yes']_type_'Null'",
                ),
      Set_double_no_null_default_no:
          map['Set_double_no_null_default_no'] != null
              ? (map['Set_double_no_null_default_no'] as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toSet()
              : throw Exception(
                  "map['Set_double_no_null_default_no']_type_'Null'",
                ),
      List_bool_yes_null_default_yes:
          (map['List_bool_yes_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as bool)
                  .toList() ??
              const [
                true,
                false,
              ],
      List_bool_yes_null_default_no:
          (map['List_bool_yes_null_default_no'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList(),
      List_bool_no_null_default_yes:
          (map['List_bool_no_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as bool)
                  .toList() ??
              const [false],
      List_bool_no_null_default_no: map['List_bool_no_null_default_no'] != null
          ? (map['List_bool_no_null_default_no'] as List<dynamic>)
              .map((e) => e as bool)
              .toList()
          : throw Exception(
              "map['List_bool_no_null_default_no']_type_'Null'",
            ),
      List_bool_null_yes_null_default_yes:
          (map['List_bool_null_yes_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as bool?)
                  .toList() ??
              const [true, false, null],
      List_bool_null_yes_null_default_no:
          (map['List_bool_null_yes_null_default_no'] as List<dynamic>?)
              ?.map((e) => e as bool?)
              .toList(),
      List_bool_null_no_null_default_yes:
          (map['List_bool_null_no_null_default_yes'] as List<dynamic>?)
                  ?.map((e) => e as bool?)
                  .toList() ??
              const [false, null],
      List_bool_null_no_null_default_no:
          map['List_bool_null_no_null_default_no'] != null
              ? (map['List_bool_null_no_null_default_no'] as List<dynamic>)
                  .map((e) => e as bool?)
                  .toList()
              : throw Exception(
                  "map['List_bool_null_no_null_default_no']_type_'Null'",
                ),
    );
  }

  DataTestModel copyWith({
    EnumTest? enum_yes_null_default_yes,
    EnumTest? enum_yes_null_default_no,
    EnumTest? enum_no_null_default_yes,
    EnumTest? enum_no_null_default_no,
    int? int_yes_null_default_yes,
    int? int_yes_null_default_no,
    int? int_no_null_default_yes,
    int? int_no_null_default_no,
    num? num_yes_null_default_yes,
    num? num_yes_null_default_no,
    num? num_no_null_default_yes,
    num? num_no_null_default_no,
    String? String_yes_null_default_yes,
    String? String_yes_null_default_no,
    String? String_no_null_default_yes,
    String? String_no_null_default_no,
    Set? Set_yes_null_default_yes,
    Set? Set_yes_null_default_no,
    Set? Set_no_null_default_yes,
    Set? Set_no_null_default_no,
    Set<String>? Set_string_yes_null_default_yes,
    Set<String>? Set_string_yes_null_default_no,
    Set<String>? Set_string_no_null_default_yes,
    Set<String>? Set_string_no_null_default_no,
    Set<int>? Set_int_yes_null_default_yes,
    Set<int>? Set_int_yes_null_default_no,
    Set<int>? Set_int_no_null_default_yes,
    Set<int>? Set_int_no_null_default_no,
    Set<int?>? Set_int_null_yes_null_default_yes,
    Set<int?>? Set_int_null_yes_null_default_no,
    Set<int?>? Set_int_null_no_null_default_yes,
    Set<int?>? Set_int_null_no_null_default_no,
    Set<bool>? Set_bool_yes_null_default_yes,
    Set<bool>? Set_bool_yes_null_default_no,
    Set<bool>? Set_bool_no_null_default_yes,
    Set<bool>? Set_bool_no_null_default_no,
    Set<bool?>? Set_bool_null_yes_null_default_yes,
    Set<bool?>? Set_bool_null_yes_null_default_no,
    Set<bool?>? Set_bool_null_no_null_default_yes,
    Set<bool?>? Set_bool_null_no_null_default_no,
    Set<double>? Set_double_yes_null_default_yes,
    Set<double>? Set_double_yes_null_default_no,
    Set<double>? Set_double_no_null_default_yes,
    Set<double>? Set_double_no_null_default_no,
    List<bool>? List_bool_yes_null_default_yes,
    List<bool>? List_bool_yes_null_default_no,
    List<bool>? List_bool_no_null_default_yes,
    List<bool>? List_bool_no_null_default_no,
    List<bool?>? List_bool_null_yes_null_default_yes,
    List<bool?>? List_bool_null_yes_null_default_no,
    List<bool?>? List_bool_null_no_null_default_yes,
    List<bool?>? List_bool_null_no_null_default_no,
  }) {
    return DataTestModel(
      enum_yes_null_default_yes:
          enum_yes_null_default_yes ?? this.enum_yes_null_default_yes,
      enum_yes_null_default_no:
          enum_yes_null_default_no ?? this.enum_yes_null_default_no,
      enum_no_null_default_yes:
          enum_no_null_default_yes ?? this.enum_no_null_default_yes,
      enum_no_null_default_no:
          enum_no_null_default_no ?? this.enum_no_null_default_no,
      int_yes_null_default_yes:
          int_yes_null_default_yes ?? this.int_yes_null_default_yes,
      int_yes_null_default_no:
          int_yes_null_default_no ?? this.int_yes_null_default_no,
      int_no_null_default_yes:
          int_no_null_default_yes ?? this.int_no_null_default_yes,
      int_no_null_default_no:
          int_no_null_default_no ?? this.int_no_null_default_no,
      num_yes_null_default_yes:
          num_yes_null_default_yes ?? this.num_yes_null_default_yes,
      num_yes_null_default_no:
          num_yes_null_default_no ?? this.num_yes_null_default_no,
      num_no_null_default_yes:
          num_no_null_default_yes ?? this.num_no_null_default_yes,
      num_no_null_default_no:
          num_no_null_default_no ?? this.num_no_null_default_no,
      String_yes_null_default_yes:
          String_yes_null_default_yes ?? this.String_yes_null_default_yes,
      String_yes_null_default_no:
          String_yes_null_default_no ?? this.String_yes_null_default_no,
      String_no_null_default_yes:
          String_no_null_default_yes ?? this.String_no_null_default_yes,
      String_no_null_default_no:
          String_no_null_default_no ?? this.String_no_null_default_no,
      Set_yes_null_default_yes:
          Set_yes_null_default_yes ?? this.Set_yes_null_default_yes,
      Set_yes_null_default_no:
          Set_yes_null_default_no ?? this.Set_yes_null_default_no,
      Set_no_null_default_yes:
          Set_no_null_default_yes ?? this.Set_no_null_default_yes,
      Set_no_null_default_no:
          Set_no_null_default_no ?? this.Set_no_null_default_no,
      Set_string_yes_null_default_yes: Set_string_yes_null_default_yes ??
          this.Set_string_yes_null_default_yes,
      Set_string_yes_null_default_no:
          Set_string_yes_null_default_no ?? this.Set_string_yes_null_default_no,
      Set_string_no_null_default_yes:
          Set_string_no_null_default_yes ?? this.Set_string_no_null_default_yes,
      Set_string_no_null_default_no:
          Set_string_no_null_default_no ?? this.Set_string_no_null_default_no,
      Set_int_yes_null_default_yes:
          Set_int_yes_null_default_yes ?? this.Set_int_yes_null_default_yes,
      Set_int_yes_null_default_no:
          Set_int_yes_null_default_no ?? this.Set_int_yes_null_default_no,
      Set_int_no_null_default_yes:
          Set_int_no_null_default_yes ?? this.Set_int_no_null_default_yes,
      Set_int_no_null_default_no:
          Set_int_no_null_default_no ?? this.Set_int_no_null_default_no,
      Set_int_null_yes_null_default_yes: Set_int_null_yes_null_default_yes ??
          this.Set_int_null_yes_null_default_yes,
      Set_int_null_yes_null_default_no: Set_int_null_yes_null_default_no ??
          this.Set_int_null_yes_null_default_no,
      Set_int_null_no_null_default_yes: Set_int_null_no_null_default_yes ??
          this.Set_int_null_no_null_default_yes,
      Set_int_null_no_null_default_no: Set_int_null_no_null_default_no ??
          this.Set_int_null_no_null_default_no,
      Set_bool_yes_null_default_yes:
          Set_bool_yes_null_default_yes ?? this.Set_bool_yes_null_default_yes,
      Set_bool_yes_null_default_no:
          Set_bool_yes_null_default_no ?? this.Set_bool_yes_null_default_no,
      Set_bool_no_null_default_yes:
          Set_bool_no_null_default_yes ?? this.Set_bool_no_null_default_yes,
      Set_bool_no_null_default_no:
          Set_bool_no_null_default_no ?? this.Set_bool_no_null_default_no,
      Set_bool_null_yes_null_default_yes: Set_bool_null_yes_null_default_yes ??
          this.Set_bool_null_yes_null_default_yes,
      Set_bool_null_yes_null_default_no: Set_bool_null_yes_null_default_no ??
          this.Set_bool_null_yes_null_default_no,
      Set_bool_null_no_null_default_yes: Set_bool_null_no_null_default_yes ??
          this.Set_bool_null_no_null_default_yes,
      Set_bool_null_no_null_default_no: Set_bool_null_no_null_default_no ??
          this.Set_bool_null_no_null_default_no,
      Set_double_yes_null_default_yes: Set_double_yes_null_default_yes ??
          this.Set_double_yes_null_default_yes,
      Set_double_yes_null_default_no:
          Set_double_yes_null_default_no ?? this.Set_double_yes_null_default_no,
      Set_double_no_null_default_yes:
          Set_double_no_null_default_yes ?? this.Set_double_no_null_default_yes,
      Set_double_no_null_default_no:
          Set_double_no_null_default_no ?? this.Set_double_no_null_default_no,
      List_bool_yes_null_default_yes:
          List_bool_yes_null_default_yes ?? this.List_bool_yes_null_default_yes,
      List_bool_yes_null_default_no:
          List_bool_yes_null_default_no ?? this.List_bool_yes_null_default_no,
      List_bool_no_null_default_yes:
          List_bool_no_null_default_yes ?? this.List_bool_no_null_default_yes,
      List_bool_no_null_default_no:
          List_bool_no_null_default_no ?? this.List_bool_no_null_default_no,
      List_bool_null_yes_null_default_yes:
          List_bool_null_yes_null_default_yes ??
              this.List_bool_null_yes_null_default_yes,
      List_bool_null_yes_null_default_no: List_bool_null_yes_null_default_no ??
          this.List_bool_null_yes_null_default_no,
      List_bool_null_no_null_default_yes: List_bool_null_no_null_default_yes ??
          this.List_bool_null_no_null_default_yes,
      List_bool_null_no_null_default_no: List_bool_null_no_null_default_no ??
          this.List_bool_null_no_null_default_no,
    );
  }

  String toJson() => json.encode(toMap());
  factory DataTestModel.fromJson(String source) => DataTestModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataTestModel &&
            (identical(
                  other.enum_yes_null_default_yes,
                  enum_yes_null_default_yes,
                ) ||
                other.enum_yes_null_default_yes == enum_yes_null_default_yes) &&
            (identical(
                  other.enum_yes_null_default_no,
                  enum_yes_null_default_no,
                ) ||
                other.enum_yes_null_default_no == enum_yes_null_default_no) &&
            (identical(
                  other.enum_no_null_default_yes,
                  enum_no_null_default_yes,
                ) ||
                other.enum_no_null_default_yes == enum_no_null_default_yes) &&
            (identical(
                  other.enum_no_null_default_no,
                  enum_no_null_default_no,
                ) ||
                other.enum_no_null_default_no == enum_no_null_default_no) &&
            (identical(
                  other.int_yes_null_default_yes,
                  int_yes_null_default_yes,
                ) ||
                other.int_yes_null_default_yes == int_yes_null_default_yes) &&
            (identical(
                  other.int_yes_null_default_no,
                  int_yes_null_default_no,
                ) ||
                other.int_yes_null_default_no == int_yes_null_default_no) &&
            (identical(
                  other.int_no_null_default_yes,
                  int_no_null_default_yes,
                ) ||
                other.int_no_null_default_yes == int_no_null_default_yes) &&
            (identical(
                  other.int_no_null_default_no,
                  int_no_null_default_no,
                ) ||
                other.int_no_null_default_no == int_no_null_default_no) &&
            (identical(
                  other.num_yes_null_default_yes,
                  num_yes_null_default_yes,
                ) ||
                other.num_yes_null_default_yes == num_yes_null_default_yes) &&
            (identical(
                  other.num_yes_null_default_no,
                  num_yes_null_default_no,
                ) ||
                other.num_yes_null_default_no == num_yes_null_default_no) &&
            (identical(
                  other.num_no_null_default_yes,
                  num_no_null_default_yes,
                ) ||
                other.num_no_null_default_yes == num_no_null_default_yes) &&
            (identical(
                  other.num_no_null_default_no,
                  num_no_null_default_no,
                ) ||
                other.num_no_null_default_no == num_no_null_default_no) &&
            (identical(
                  other.String_yes_null_default_yes,
                  String_yes_null_default_yes,
                ) ||
                other.String_yes_null_default_yes ==
                    String_yes_null_default_yes) &&
            (identical(
                  other.String_yes_null_default_no,
                  String_yes_null_default_no,
                ) ||
                other.String_yes_null_default_no ==
                    String_yes_null_default_no) &&
            (identical(
                  other.String_no_null_default_yes,
                  String_no_null_default_yes,
                ) ||
                other.String_no_null_default_yes ==
                    String_no_null_default_yes) &&
            (identical(
                  other.String_no_null_default_no,
                  String_no_null_default_no,
                ) ||
                other.String_no_null_default_no == String_no_null_default_no) &&
            const DeepCollectionEquality().equals(
              other.Set_yes_null_default_yes,
              Set_yes_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_yes_null_default_no,
              Set_yes_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_no_null_default_yes,
              Set_no_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_no_null_default_no,
              Set_no_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_string_yes_null_default_yes,
              Set_string_yes_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_string_yes_null_default_no,
              Set_string_yes_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_string_no_null_default_yes,
              Set_string_no_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_string_no_null_default_no,
              Set_string_no_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_int_yes_null_default_yes,
              Set_int_yes_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_int_yes_null_default_no,
              Set_int_yes_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_int_no_null_default_yes,
              Set_int_no_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_int_no_null_default_no,
              Set_int_no_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_int_null_yes_null_default_yes,
              Set_int_null_yes_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_int_null_yes_null_default_no,
              Set_int_null_yes_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_int_null_no_null_default_yes,
              Set_int_null_no_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_int_null_no_null_default_no,
              Set_int_null_no_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_bool_yes_null_default_yes,
              Set_bool_yes_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_bool_yes_null_default_no,
              Set_bool_yes_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_bool_no_null_default_yes,
              Set_bool_no_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_bool_no_null_default_no,
              Set_bool_no_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_bool_null_yes_null_default_yes,
              Set_bool_null_yes_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_bool_null_yes_null_default_no,
              Set_bool_null_yes_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_bool_null_no_null_default_yes,
              Set_bool_null_no_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_bool_null_no_null_default_no,
              Set_bool_null_no_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_double_yes_null_default_yes,
              Set_double_yes_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_double_yes_null_default_no,
              Set_double_yes_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_double_no_null_default_yes,
              Set_double_no_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.Set_double_no_null_default_no,
              Set_double_no_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.List_bool_yes_null_default_yes,
              List_bool_yes_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.List_bool_yes_null_default_no,
              List_bool_yes_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.List_bool_no_null_default_yes,
              List_bool_no_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.List_bool_no_null_default_no,
              List_bool_no_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.List_bool_null_yes_null_default_yes,
              List_bool_null_yes_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.List_bool_null_yes_null_default_no,
              List_bool_null_yes_null_default_no,
            ) &&
            const DeepCollectionEquality().equals(
              other.List_bool_null_no_null_default_yes,
              List_bool_null_no_null_default_yes,
            ) &&
            const DeepCollectionEquality().equals(
              other.List_bool_null_no_null_default_no,
              List_bool_null_no_null_default_no,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enum_yes_null_default_yes,
        enum_yes_null_default_no,
        enum_no_null_default_yes,
        enum_no_null_default_no,
        int_yes_null_default_yes,
        int_yes_null_default_no,
        int_no_null_default_yes,
        int_no_null_default_no,
        num_yes_null_default_yes,
        num_yes_null_default_no,
        num_no_null_default_yes,
        num_no_null_default_no,
        String_yes_null_default_yes,
        String_yes_null_default_no,
        String_no_null_default_yes,
        String_no_null_default_no,
        const DeepCollectionEquality().hash(
          Set_yes_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_yes_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_no_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_no_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_string_yes_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_string_yes_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_string_no_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_string_no_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_int_yes_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_int_yes_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_int_no_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_int_no_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_int_null_yes_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_int_null_yes_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_int_null_no_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_int_null_no_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_bool_yes_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_bool_yes_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_bool_no_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_bool_no_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_bool_null_yes_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_bool_null_yes_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_bool_null_no_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_bool_null_no_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_double_yes_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_double_yes_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          Set_double_no_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          Set_double_no_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          List_bool_yes_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          List_bool_yes_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          List_bool_no_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          List_bool_no_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          List_bool_null_yes_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          List_bool_null_yes_null_default_no,
        ),
        const DeepCollectionEquality().hash(
          List_bool_null_no_null_default_yes,
        ),
        const DeepCollectionEquality().hash(
          List_bool_null_no_null_default_no,
        ),
      ]);

  @override
  String toString() {
    return 'DataTestModel(enum_yes_null_default_yes: $enum_yes_null_default_yes, enum_yes_null_default_no: $enum_yes_null_default_no, enum_no_null_default_yes: $enum_no_null_default_yes, enum_no_null_default_no: $enum_no_null_default_no, int_yes_null_default_yes: $int_yes_null_default_yes, int_yes_null_default_no: $int_yes_null_default_no, int_no_null_default_yes: $int_no_null_default_yes, int_no_null_default_no: $int_no_null_default_no, num_yes_null_default_yes: $num_yes_null_default_yes, num_yes_null_default_no: $num_yes_null_default_no, num_no_null_default_yes: $num_no_null_default_yes, num_no_null_default_no: $num_no_null_default_no, String_yes_null_default_yes: $String_yes_null_default_yes, String_yes_null_default_no: $String_yes_null_default_no, String_no_null_default_yes: $String_no_null_default_yes, String_no_null_default_no: $String_no_null_default_no, Set_yes_null_default_yes: $Set_yes_null_default_yes, Set_yes_null_default_no: $Set_yes_null_default_no, Set_no_null_default_yes: $Set_no_null_default_yes, Set_no_null_default_no: $Set_no_null_default_no, Set_string_yes_null_default_yes: $Set_string_yes_null_default_yes, Set_string_yes_null_default_no: $Set_string_yes_null_default_no, Set_string_no_null_default_yes: $Set_string_no_null_default_yes, Set_string_no_null_default_no: $Set_string_no_null_default_no, Set_int_yes_null_default_yes: $Set_int_yes_null_default_yes, Set_int_yes_null_default_no: $Set_int_yes_null_default_no, Set_int_no_null_default_yes: $Set_int_no_null_default_yes, Set_int_no_null_default_no: $Set_int_no_null_default_no, Set_int_null_yes_null_default_yes: $Set_int_null_yes_null_default_yes, Set_int_null_yes_null_default_no: $Set_int_null_yes_null_default_no, Set_int_null_no_null_default_yes: $Set_int_null_no_null_default_yes, Set_int_null_no_null_default_no: $Set_int_null_no_null_default_no, Set_bool_yes_null_default_yes: $Set_bool_yes_null_default_yes, Set_bool_yes_null_default_no: $Set_bool_yes_null_default_no, Set_bool_no_null_default_yes: $Set_bool_no_null_default_yes, Set_bool_no_null_default_no: $Set_bool_no_null_default_no, Set_bool_null_yes_null_default_yes: $Set_bool_null_yes_null_default_yes, Set_bool_null_yes_null_default_no: $Set_bool_null_yes_null_default_no, Set_bool_null_no_null_default_yes: $Set_bool_null_no_null_default_yes, Set_bool_null_no_null_default_no: $Set_bool_null_no_null_default_no, Set_double_yes_null_default_yes: $Set_double_yes_null_default_yes, Set_double_yes_null_default_no: $Set_double_yes_null_default_no, Set_double_no_null_default_yes: $Set_double_no_null_default_yes, Set_double_no_null_default_no: $Set_double_no_null_default_no, List_bool_yes_null_default_yes: $List_bool_yes_null_default_yes, List_bool_yes_null_default_no: $List_bool_yes_null_default_no, List_bool_no_null_default_yes: $List_bool_no_null_default_yes, List_bool_no_null_default_no: $List_bool_no_null_default_no, List_bool_null_yes_null_default_yes: $List_bool_null_yes_null_default_yes, List_bool_null_yes_null_default_no: $List_bool_null_yes_null_default_no, List_bool_null_no_null_default_yes: $List_bool_null_no_null_default_yes, List_bool_null_no_null_default_no: $List_bool_null_no_null_default_no, )';
  }
}
 */
