// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:mirrors';

import 'package:turn_gen/src/enum_v2/enum_v2.dart';
import 'package:turn_gen/src/src.dart';

part 'enum_v2_write_file.dart';

// ignore: prefer-static-class
Future<void> runEnumV2({
  required String path,
  required FLILogger logger,
}) async {
  final contentFile = await UtilsString.readFile(path: path);

  final enumHeader = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'enum[\s\S]+?{',
    isLast: false,
  );
// remove underscores
  final enumName = _getEnumName(enumHeader);

//
  msgIfNotNameClass(enumName, logger);

  // msgIfNodEnd(contentFile, logger);

  // final contentToEnd = UtilsRegex.getTextRegexMatch(
  //   content: contentFile,
  //   regex: r'[\s\S]+?(\/\/\s+end)',
  // );

  final enumToEnd = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'enum[\s\S]+?(\/\/\s+end)',
  );
  final enumBracketsRaw = UtilsRegex.getTextRegexMatch(
    content: enumToEnd,
    regex: r'\{[\s\S]+\}',
  );

  final isDefault = !enumBracketsRaw.contains('(');

  var regexEnumNameRaw = r'\w+';

  if (!isDefault) {
    regexEnumNameRaw = r'\w+(|[\n\r\s]+)\(';
  }

// получаю название  enum item
  final listEnumNameRaw = UtilsRegex.getTextRegexListMatch(
    content: enumBracketsRaw,
    regex: regexEnumNameRaw,
  );
  final listEnumNameFormat =
      listEnumNameRaw.map((e) => e.replaceAll('(', '').trim()).toList();

  if (!isDefault) {
    // удаляю название enum
    final _ = listEnumNameFormat.removeLast();
  }
// ******************************
// получаю значения
  final listEnumValueRaw = UtilsRegex.getTextRegexListMatch(
    content: enumToEnd,
    regex: r'\(([\w\W]+?)\)',
  );

  final listEnumValueFormat = _getFormatEnumRaw(listEnumValueRaw);
  var nameVar = '';
  var typeEnum = EnumTypeVarable.none;

  var isCanNull = false;
  if (!isDefault) {
    nameVar = listEnumValueFormat.last.split(' ').last;
    var typeVar = listEnumValueFormat.last.replaceAll(' $nameVar', '').trim();
    if (typeVar[typeVar.length - 1] == '?') {
      isCanNull = true;
      typeVar = typeVar.replaceAll(RegExp(r'\?$'), '');
    }
    // удаляю значение
    final _ = listEnumValueFormat.removeLast();

    typeEnum =
        EnumTypeVarable.fromValue(typeVar, fallback: EnumTypeVarable.none);
    if (typeEnum == EnumTypeVarable.none) {
      typeEnum = autoUpdateType(typeEnum, typeVar, logger);
    }
  }
  final enumItem = <EnumV2ItemModel>[];
  for (var i = 0; i < listEnumNameFormat.length; i++) {
    enumItem.add(EnumV2ItemModel(
      nameEnum: listEnumNameFormat[i],
      valueEnum: isDefault ? '' : listEnumValueFormat[i],
    ));
  }

  final enumCommon = EnumV2CommonModel(
    // contentToEnd: contentToEnd,
    nameClass: enumName,
    headerClass: enumHeader,
    nameValue: nameVar,
    typeEnum: typeEnum,
    listItem: enumItem,
    isDefault: isDefault,
    isCanNull: isCanNull,
  );

  final file = File(path);
  // unionWriteToFile(logger, file, newCommonModel, contentFile);
}


List<String> _getFormatEnumRaw(
  List<String> content,
) {
  final formatList = <String>[];
  for (final v in content) {
    formatList.add(
      v
          .trim()
          .replaceAll(':', ' : ')
          .replaceAll('?', ' ? ')
          .replaceAll(',', ' , ')
          .replaceAll('>', ' > ')
          .replaceAll('<', ' < ')
          .replaceAll('(', ' ( ')
          .replaceAll(')', ' ) ')
          .replaceAll(']', ' ] ')
          .replaceAll('[', ' [ ')
          .replaceAll('}', ' } ')
          .replaceAll('{', ' { ')
          .replaceAll('=', ' = ')
          .replaceAll(':', ' : ')
          .replaceAll(',', ' , ')
          .replaceAll(';', ' ; ')
          .replaceAll('.', ' . ')
          .replaceAll(',', ' , ')
          .replaceAll(RegExp(r'\s+'), ' ')
          .replaceAll(' :', ':')
          .replaceAll(' ? ', '? ')
          .replaceAll(' >', '>')
          .replaceAll(' <', '<')
          .replaceAll('< ', '<')
          .replaceAll('( ', '(')
          .replaceAll(' )', ')')
          .replaceAll(' ]', ']')
          .replaceAll('] ', ']')
          .replaceAll(' [', '[')
          .replaceAll('[ ', '[')
          .replaceAll(' }', '}')
          .replaceAll('{ ', '{')
          .replaceAll(' ;', ';')
          .replaceAll(' .', '.')
          .replaceAll('. ', '.')
          .replaceAll(' :', ':')
          .replaceAll(' ,', ',')
          .replaceAll(',[', ', [')
          .replaceAll(',{', ', {')
          .trim()
          .replaceAll(RegExp(r'^\('), '')
          .replaceAll(RegExp(r'\)$'), '')
          .trim(),
    );
  }

  return formatList;
}

String _getEnumName(String header) {
  final splitHeaderClass =
      header.replaceAll(RegExp(r'\s+'), ' ').trim().split(' ');

  for (var i = 0; i < splitHeaderClass.length; i++) {
    final v = splitHeaderClass[i];
    if (v == 'enum') return splitHeaderClass[i + 1];
  }

  return '';
}
