// import 'dart:io';

// import 'package:test/test.dart';
// import 'package:turn_gen/src/enum_type_run.dart';

// import 'model/data1.dart';

// void main() {
//   group('Enum', () {
//     late String data1;
//     test('проверка json, что он не пустой', () async {
//       final file1 = File(r'test\data\json\data1.json');

//       expect(file1.existsSync(), isTrue, reason: 'File does not exist');

//       data1 = await file1.readAsString();
//       expect(data1, isNotEmpty, reason: 'File is empty');
//     });

//     test('простая проверка методов to json from json', () {
//       var model1 = Data1(enumTypeRun: EnumTypeRun.assets);
//       var json = model1.toJson();

//       var model2 = Data1.fromJson(json);

//       expect(model1, model2);

//       model1 = Data1.fromJson('''
// {
//   "enumTypeRun_init": 1,
//   "enumTypeRun_null_init": "data",
//   "enumTypeRun": 0,
//   "enumTypeRun_null": "assets"
// }
// ''');
//       json = model1.toJson();

//       model2 = Data1.fromJson(json);

//       expect(model1, model2);
//     });

//     test('проверка методов to json from json', () {
//       final model1 = Data1.fromJson('''
// {
//   "enumTypeRun": "sss",
//   "enumTypeRun_init": 1,
//   "enumTypeRun_null_init": "data",
//   "enumTypeRun_null": "assets"
// }
// ''');
//       final json = model1.toJson();

//       final model2 = Data1.fromJson(json);

//       expect(model1, model2);
//     });

//     test(' проверка из файла json ', () {
//       final model1 = Data1.fromJson(data1);
//       final json = model1.toJson();

//       final model2 = Data1.fromJson(json);

//       expect(model1, model2);
//     });
//   });
// }
// enum EnumA {a,b}
