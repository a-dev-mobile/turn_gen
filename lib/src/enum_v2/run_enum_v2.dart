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
    // final slash = Platform.isWindows ? r'\' : '/';
  // final nameFile = path.split(slash).last.split('.').first;
//
  msgIfNotNameClass(enumName, logger);

  msgIfNodEnd(contentFile, logger);

  final contentToEnd = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'[\s\S]+?(\/\/\s+end)',
  );

  final enumToEndRaw = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'enum[\s\S]+?(\/\/\s+end)',
  );

  // final enumToEndFormat = enumToEndRaw.replaceAll(RegExp(r'\s+'), ' ').replaceAll('// end', '');

  final enumBracketsEnd = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'\{[\s\S]+(\/\/\s+end)',
  );

  final isDefault = !enumToEndRaw.contains('(');

  var regexEnumNameRaw = r'\w+';

  if (!isDefault) {
    regexEnumNameRaw = r'\w+(|[\n\r\s]+)\(';
  }

// получаю название  enum item
  final listEnumNameRaw = UtilsRegex.getTextRegexListMatch(
    content: enumBracketsEnd,
    regex: regexEnumNameRaw,
  );
  final listEnumNameFormat =
      listEnumNameRaw.map((e) => e.replaceAll('(', '').trim()).toList();

  // удаляю лишнее поле

  if (listEnumNameFormat.isNotEmpty) {
    final _ = listEnumNameFormat.removeLast();
  }

// ******************************
// получаю значения
  final listEnumValueRaw = UtilsRegex.getTextRegexListMatch(
    content: enumToEndRaw,
    regex: r'\(([\w\W]+?)\)',
  );

  final listEnumValueFormat = _getFormatEnumRaw(listEnumValueRaw);
  // получаю значения
  final listEnumTypeValueRaw = UtilsRegex.getTextRegexListMatch(
    content: enumToEndRaw,
    regex: r'final[\s\S]+?;',
  );

  var nameVar = 'value';
  var typeEnum = EnumTypeVarable.string_;
  var isCanNull = false;
  if (listEnumValueFormat.isNotEmpty) {
    final _ = listEnumValueFormat.removeLast();
  }
  if (!isDefault) {
    //
    final enumTypeValueFormat = _getFormatEnumRaw(listEnumTypeValueRaw).first;

    if (!isDefault) {
      nameVar = enumTypeValueFormat.split(' ').last.replaceAll(';', '');
      var typeVar = enumTypeValueFormat
          .replaceAll(' $nameVar', '')
          .replaceAll('final', '')
          .replaceAll(';', '')
          .trim();
      if (typeVar[typeVar.length - 1] == '?') {
        isCanNull = true;
        typeVar = typeVar.replaceAll(RegExp(r'\?$'), '');
      }

      typeEnum =
          EnumTypeVarable.fromValue(typeVar, fallback: EnumTypeVarable.none);
      if (typeEnum == EnumTypeVarable.none) {
        typeEnum = autoUpdateType(typeEnum, typeVar, logger);
      }
    }
  }
  final enumItem = <EnumV2ItemModel>[];
  for (var i = 0; i < listEnumNameFormat.length; i++) {
    enumItem.add(
      EnumV2ItemModel(
        nameEnum: listEnumNameFormat[i],
        valueEnum:
            isDefault ? "'${listEnumNameFormat[i]}'" : listEnumValueFormat[i],
      ),
    );
  }

  final enumCommon = EnumV2CommonModel(
    // contentToEnd: contentToEnd,
    nameClass: enumName,
    headerClass: enumHeader,
    nameValue: nameVar,
    typeEnum: typeEnum, 
    listItem: enumItem,
    isDefault: isDefault, contentFile: contentFile,
    isCanNull: isCanNull, contentToEnd: contentToEnd,
  );

  final file = File(path);
  enumV2WriteToFile(logger, file, enumCommon);
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
