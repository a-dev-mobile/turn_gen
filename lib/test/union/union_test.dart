import 'dart:io';

import 'package:test/test.dart';

import 'package:turn_gen/test/union/models/union_1.dart';

void main() {
  group('union_1', () {
    late String successStr1;
    late String successStr2;
    late String successStr3;
    late String errorStr;
    test('проверка json, что он не пустой', () async {
      final fileSuccess1 = File(r'lib\test\union\json\success_1.json');
      final fileSuccess2 = File(r'lib\test\union\json\success_2.json');
      final fileSuccess3 = File(r'lib\test\union\json\success_3.json');
      final fileError = File(r'lib\test\union\json\error_1.json');
      expect(fileSuccess1.existsSync(), isTrue, reason: 'File does not exist');
      expect(fileSuccess2.existsSync(), isTrue, reason: 'File does not exist');
      expect(fileSuccess3.existsSync(), isTrue, reason: 'File does not exist');

      expect(fileError.existsSync(), isTrue, reason: 'File does not exist');

      successStr1 = await fileSuccess1.readAsString();
      successStr2 = await fileSuccess2.readAsString();
      successStr3 = await fileSuccess3.readAsString();
      errorStr = await fileError.readAsString();

      expect(successStr1, isNotEmpty, reason: 'File is empty');
      expect(successStr2, isNotEmpty, reason: 'File is empty');
      expect(successStr3, isNotEmpty, reason: 'File is empty');
      expect(errorStr, isNotEmpty, reason: 'File is empty');
    });

    test('Десерилизовать error json', () {
      final errorModel = Union1.fromJson(errorStr, Union1Tag.error);

      expect(errorModel, isA<Union1>());

      expect(
        errorModel.mapOrNull(
          error: (v) => v.message,
        ),
        isNotEmpty,
      );
    });

    test('Десерилизовать success json', () {
      final successModel3 = Union1.fromJson(successStr3, Union1Tag.success3);
      final successModel2 = Union1.fromJson(successStr2, Union1Tag.success);
      final successModel1 = Union1.fromJson(successStr1, Union1Tag.success);
      final a = successModel1.maybeMapOrNull(
        error: (v) => v.copyWith(error: 'test'),
      );
      expect(successModel1, successModel2);
      // var a;
    });
  });
}
