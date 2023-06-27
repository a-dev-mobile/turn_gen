// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:turn_gen/src/src.dart';

// ignore: prefer-static-class
Future<void> enumStart({
  required String path,
  required FLILogger logger,
}) async {
  final contentFile = await UtilsString.readFile(path: path);
  final isShowComment =
      YamlRead().isShowComment(filePath: path, logger: logger);

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
  final contentToEndWithoutComment =
      '${contentToEnd.replaceAll(RegExp(r'[\s]//.*'), '')} \n\n// end';

  final enumToEndRaw = UtilsRegex.getTextRegexMatch(
    content: contentToEndWithoutComment,
    regex: r'enum[\s\S]+?(\/\/\s+end)',
  );

  // final enumToEndFormat = enumToEndRaw.replaceAll(RegExp(r'\s+'), ' ').replaceAll('// end', '');

  final enumBracketsEnd = UtilsRegex.getTextRegexMatch(
    content: contentToEndWithoutComment,
    regex: r'\{[\s\S]+(\/\/\s+end)',
  );

  final isDefault = !enumToEndRaw.contains('(');

  var regexEnumNameRaw = r'\w+';

  if (!isDefault) {
    regexEnumNameRaw = r'^\s{0,3}\b(\w+)\(';
  }

// получаю название  enum item
  final listEnumNameRaw = UtilsRegex.getTextRegexListMatch(
    content: enumBracketsEnd,
    regex: regexEnumNameRaw,
  );
  final listEnumNameFormat =
      listEnumNameRaw.map((e) => e.replaceAll('(', '').trim()).toList();

  // удаляю лишнее поле

  if (listEnumNameFormat.isNotEmpty && isDefault) {
    final _ = listEnumNameFormat.removeLast();
  }

// ******************************
// получаю значения

  final listEnumValueRaw = <String>[];

  final length = listEnumNameFormat.length;

  for (var i = 0; i < length; i++) {
    final isLast = i + 1 >= length;

    final item = listEnumNameFormat[i];
    final itemPlus = isLast ? '' : listEnumNameFormat[i + 1];

// тк переменные иногда похожи - заменяем сначала текстом с кол символов больше
    final replaceTextStart =
        item.length > itemPlus.length ? '$item(' : '$itemPlus(';

    final regex =
        isLast ? '$item\\(([\\w\\W]+?);' : '$item\\(([\\w\\W]*?)$itemPlus\\(';
    listEnumValueRaw.add(
      UtilsRegex.getTextRegexMatch(
        content: enumToEndRaw,
        isLast: false,
        regex: regex,
      )
          .replaceAll(replaceTextStart, '')
          .replaceAll('$item(', '')
          .replaceAll('$itemPlus(', ''),
    );
  }

  final listEnumValueFormat = _getFormatEnumRaw(listEnumValueRaw);
  // final listEnumValueFormat =listEnumValueRaw;

  final listItemFinal = getFinalParamList(contentToEndWithoutComment);

// значение по умолчанию
  final listParameterMain = <EnumParamItemModel>[
    const EnumParamItemModel(
      enumTypeVarable: EnumTypeVarable.string_,
      name: 'value',
    ),
  ];

  // перебор параметров если enum не по умолчанию
  if (!isDefault) {
    listParameterMain.clear();
    for (var i = 0; i < listItemFinal.length; i++) {
      final varWithoutFinal = getVarWithoutFinal(listItemFinal[i]);

      final listSplit = varWithoutFinal.split(' ');
      // take the name and delete it
      final name = listSplit.last;
      final _ = listSplit.removeLast();

      var typeStr = listSplit.join(' ').trim();

      if (typeStr.isEmpty) msgErrorParsingVarable(listItemFinal[i], logger);
      var isCanNull = false;
// determining whether null is a value or not
      if (typeStr.substring(typeStr.length - 1) == '?') {
        isCanNull = true;
        typeStr = typeStr.substring(0, typeStr.length - 1);
      }
      // picking up the type of
      var enumType =
          EnumTypeVarable.fromValue(typeStr, fallback: EnumTypeVarable.none);

      var nameObject = '';
      if (enumType == EnumTypeVarable.none) {
        msgTitleAnotherType(logger);
        enumType = autoUpdateType(enumType, typeStr, logger);
        nameObject = typeStr;
      }

      listParameterMain.add(
        EnumParamItemModel(
          isCanNull: isCanNull,
          name: name,
          enumTypeVarable: enumType,
          nameObject: nameObject,
        ),
      );
    }
  }
  if (listEnumValueFormat.isNotEmpty) {
    // final _ = listEnumValueFormat.removeLast();
  }

  final enumItem = <EnumItemModel>[];
  for (var i = 0; i < listEnumNameFormat.length; i++) {
    final name = listEnumNameFormat[i];

    var valueClean = isDefault ? "'$name'" : listEnumValueFormat[i].trim();
    if (!isDefault && listItemFinal.length > 1) {
      final value = listEnumValueFormat[i].trim();

// если у нас 2 параметра в enum
//   payed('status.schedule.payed', 'оплачен');
// чтобы 2 ой пропустить

      valueClean = value.split(',').first;

// если тип число удаляем кавычки
      // if (typeEnum.int_ || typeEnum.double_ || typeEnum.num_) {
      //   valueClean = value.replaceAll("'", '').replaceAll('"', '');
      // }
    }
    enumItem.add(
      EnumItemModel(
        nameEnum: name,
        valueEnum: isDefault ? "'$name'" : valueClean,
      ),
    );
  }

  final enumCommon = EnumCommonModel(
    nameClass: enumName,
    headerClass: enumHeader,
    listItem: enumItem,
    isDefault: isDefault,
    contentFile: contentFile,
    listParam: listParameterMain,
    contentToEnd: contentToEnd,
    isShowComment: isShowComment,
  );

  final file = File(path);
  enumWriteToFile(logger, file, enumCommon);
}

List<String> _getFormatEnumRaw(
  List<String> content,
) {
  final formatList = <String>[];
  for (var v in content) {
    v = v.replaceAll(RegExp(r'\s{2,}'), ' ').trim();

    if (!v.contains('(') && v.contains(')')) {
      v = v.replaceAll(RegExp(r'\);$'), '').replaceAll(RegExp(r'\),$'), '');
    }

    formatList.add(
      v
          .replaceAll(RegExp(r', \), \($'), '')
          .replaceAll(RegExp(r'\), \($'), '')
          .replaceAll(RegExp(r', \);$'), '')
          .replaceAll(RegExp(r'^\('), ''),
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
