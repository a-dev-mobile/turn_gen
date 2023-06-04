// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
// ignore_for_file: public_member_api_docs, depend_on_referenced_packages, strict_raw_type, avoid_equals_and_hash_code_on_mutable_classes
// ignore_for_file:  non_constant_identifier_names

// turngen

// import 'package:collection/collection.dart';

/* no: frommap only: copywith*/
class DataTestModel {
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
    required this.int_no_null_default_yes,
    required this.int_no_null_default_no,
    required this.num_no_null_default_yes,
    required this.num_no_null_default_no,
    required this.String_no_null_default_yes,
    required this.String_no_null_default_no,
    required this.Set_no_null_default_yes,
    required this.Set_no_null_default_no,
    required this.Set_string_no_null_default_yes,
    required this.Set_string_no_null_default_no,
    required this.Set_int_no_null_default_yes,
    required this.Set_int_no_null_default_no,
    required this.Set_int_null_no_null_default_yes,
    required this.Set_int_null_no_null_default_no,
    required this.Set_bool_no_null_default_yes,
    required this.Set_bool_no_null_default_no,
    required this.Set_bool_null_no_null_default_yes,
    required this.Set_bool_null_no_null_default_no,
    required this.Set_double_no_null_default_yes,
    required this.Set_double_no_null_default_no,
    required this.List_bool_no_null_default_yes,
    required this.List_bool_no_null_default_no,
    required this.List_bool_null_no_null_default_yes,
    required this.List_bool_null_no_null_default_no,
    this.int_yes_null_default_yes,
    this.int_yes_null_default_no,
    this.num_yes_null_default_yes,
    this.num_yes_null_default_no,
    this.String_yes_null_default_yes,
    this.String_yes_null_default_no,
    this.Set_yes_null_default_yes,
    this.Set_yes_null_default_no,
    this.Set_string_yes_null_default_yes,
    this.Set_string_yes_null_default_no,
    this.Set_int_yes_null_default_yes,
    this.Set_int_yes_null_default_no,
    this.Set_int_null_yes_null_default_yes,
    this.Set_int_null_yes_null_default_no,
    this.Set_bool_yes_null_default_yes,
    this.Set_bool_yes_null_default_no,
    this.Set_bool_null_yes_null_default_yes,
    this.Set_bool_null_yes_null_default_no,
    this.Set_double_yes_null_default_yes,
    this.Set_double_yes_null_default_no,
    this.List_bool_yes_null_default_yes,
    this.List_bool_yes_null_default_no,
    this.List_bool_null_yes_null_default_yes,
    this.List_bool_null_yes_null_default_no,
  });

  DataTestModel copyWith({
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
}
