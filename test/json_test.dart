// ignore_for_file: cascade_invocations

import 'dart:io';

import 'package:test/test.dart';
// ignore_for_file: prefer_const_constructors

import 'models/data.dart';
import 'models/enum_type_run.dart';

Future<void> main() async {
  final testDataModel = DataTestModel(
    enum_no_null_default_no: EnumTest.assets,
    Set_no_null_default_no: {'asd'},
    String_no_null_default_no: '123',
    int_no_null_default_no: 10,
    num_no_null_default_no: 20.2,
    Set_string_no_null_default_no: {'asd'},
    Set_int_no_null_default_no: {123, 2323},
    Set_int_null_no_null_default_no: {null},
    Set_bool_no_null_default_no: {false, true},
    Set_bool_null_no_null_default_no: {null, false},
    Set_double_yes_null_default_yes: {123.333},
    Set_double_no_null_default_no: {123, 123.123},
    Set_double_no_null_default_yes: {123, 123.33},
    List_bool_no_null_default_no: [false, true, false],
    List_bool_null_no_null_default_no: [false, true, false, null],
  );

  final fileDataModel = File(r'test\json\data.json');

  fileDataModel.writeAsStringSync(testDataModel.toJson());

  final testDataModelRaw = await fileDataModel.readAsString();
  final testDataModelFromJson = DataTestModel.fromJson(testDataModelRaw);

  test('compare with json model', () {
    expect(testDataModel, testDataModelFromJson);
  });
  // final testDataModel2 = DataTestModel(
  //   enum_no_null_default_no: EnumTest.assets,
  //   Set_no_null_default_no: {'asd'},
  //   String_no_null_default_no: '123',
  //   int_no_null_default_no: 10,
  //   num_no_null_default_no: 20.2,
  //   Set_string_no_null_default_no: {'asd'},
  //   Set_int_no_null_default_no: {123, 2323},
  //   Set_int_null_no_null_default_no: {null},
  //   Set_bool_no_null_default_no: {false, true},
  //   Set_bool_null_no_null_default_no: {null, false}, Set_double_yes_null_default_yes: {123.333},  Set_double_no_null_default_no:{123,123.123}, Set_double_no_null_default_yes: {123,123.334},
  // );
  // test('compare two model identical', () {
  //   expect(testDataModel, testDataModel2);
  // });
}
