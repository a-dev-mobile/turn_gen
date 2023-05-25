// import 'dart:io';

// // import 'package:test/test.dart';

// import 'package:turn_gen/test/union/models/union_1.dart';

// void main() {
//   group('union_1', () {
//     late String successStr1;
//     late String successStr2;
//     late String successStr3;
//     late String errorStr1;
//     late String errorStr2;
//     late String listBool;
//     late String listBool2;
//     test('проверка json, что он не пустой', () async {
//       final fileSuccess1 = File(r'lib\test\union\json\success_1.json');
//       final fileSuccess2 = File(r'lib\test\union\json\success_2.json');
//       final fileSuccess3 = File(r'lib\test\union\json\success_3.json');
//       final fileError1 = File(r'lib\test\union\json\error_1.json');
//       final fileError2 = File(r'lib\test\union\json\error_2.json');
//       final fileListBool = File(r'lib\test\union\json\list_bool.json');
//       final fileListBool2 = File(r'lib\test\union\json\list_bool_2.json');
//       expect(fileSuccess1.existsSync(), isTrue, reason: 'File does not exist');
//       expect(fileSuccess2.existsSync(), isTrue, reason: 'File does not exist');
//       expect(fileSuccess3.existsSync(), isTrue, reason: 'File does not exist');

//       expect(fileError1.existsSync(), isTrue, reason: 'File does not exist');
//       expect(fileError2.existsSync(), isTrue, reason: 'File does not exist');
//       expect(fileListBool.existsSync(), isTrue, reason: 'File does not exist');
//       expect(fileListBool2.existsSync(), isTrue, reason: 'File does not exist');

//       successStr1 = await fileSuccess1.readAsString();
//       successStr2 = await fileSuccess2.readAsString();
//       successStr3 = await fileSuccess3.readAsString();
//       errorStr1 = await fileError1.readAsString();
//       errorStr2 = await fileError2.readAsString();
//       listBool = await fileListBool.readAsString();
//       listBool2 = await fileListBool2.readAsString();

//       expect(successStr1, isNotEmpty, reason: 'File is empty');
//       expect(successStr2, isNotEmpty, reason: 'File is empty');
//       expect(successStr3, isNotEmpty, reason: 'File is empty');
//       expect(errorStr1, isNotEmpty, reason: 'File is empty');
//       expect(errorStr2, isNotEmpty, reason: 'File is empty');
//       expect(listBool, isNotEmpty, reason: 'File is empty');
//       expect(listBool2, isNotEmpty, reason: 'File is empty');
//     });

//     test('Десерилизовать и серилизовать error_1 json', () {
//       final errorModel = Union1.fromJson(errorStr1, Union1Tag.error_1);

//       final errorJson = errorModel.toJson();
//       final errorModel_2 = Union1.fromJson(errorJson);

//       expect(errorModel, errorModel_2);

//       expect(errorModel, isA<Union1>());
//     });

//     test('Десерилизовать и серилизовать error_2 json', () {
//       final errorModel = Union1.fromJson(errorStr2, Union1Tag.error_2);

//       final errorJson = errorModel.toJson();
//       final errorModel_2 = Union1.fromJson(errorJson);

//       expect(errorModel, errorModel_2);

//       expect(errorModel, isA<Union1>());
//     });
//     test('Десерилизовать и серилизовать list bool json', () {
//       final model = Union1.fromJson(listBool, Union1Tag.listBool);

//       final json = model.toJson();
//       final model2 = Union1.fromJson(json);

//       expect(model, model2);

//       expect(model, isA<Union1>());
//     });

//     test('Десерилизовать и серилизовать list bool_2 json', () {
//       final model = Union1.fromJson(listBool2, Union1Tag.listBool2);

//       final json = model.toJson();
//       final model2 = Union1.fromJson(json);

//       expect(model, model2);

//       expect(model, isA<Union1>());
//     });
//     test('Десерилизовать success json', () {
//       final successModel3 = Union1.fromJson(successStr3, Union1Tag.success3);
//       final successModel2 = Union1.fromJson(successStr2, Union1Tag.success);
//       final successModel1 = Union1.fromJson(successStr1, Union1Tag.success);

//       expect(successModel1, successModel2);
//       // var a;
//     });
//   });
// }
