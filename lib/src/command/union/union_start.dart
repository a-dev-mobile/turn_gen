// ignore_for_file: public_member_api_docs, sort_constructors_first, parameter_assignments
import 'dart:io';

import 'package:turn_gen/src/src.dart';

// ignore: prefer-static-class
Future<void> unionStart({
  required String path,
  required FLILogger logger,
}) async {
  final contentFile = await UtilsString.readFile(path: path);

  var classHeader = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'class[\s\S]+?{',
    isLast: false,
  );
// remove underscores
  final className = _getNameClass(classHeader).replaceAll(RegExp('^_'), '');
  classHeader = classHeader.replaceAll('_$className', className);
//
  _msgIfNotNameClass(className, logger);
  msgIfNodEnd(contentFile, logger);

  final contentToEnd = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'[\s\S]+?(\/\/\s+end)',
  );

  final contentBeforeClass = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'[\s\S]+?class',
    isLast: false,
  );

  final commentDocClass = _getCommentDoc(contentBeforeClass);

  var classToEnd = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'class[\s\S]+?(\/\/\s+end)',
  );

  final rawSettingClass = getSettingClass(contentFile);

  final listSettingClass = [
    ...getListSettingClass(
      content: rawSettingClass,
    ),
  ];
  // remove comment
  classToEnd = classToEnd.replaceAll(RegExp(r'[\s]//.*'), '');

  final classBrackets = UtilsRegex.getTextRegexMatch(
    content: classToEnd,
    regex: r'\{[\s\S]+\}',
  );

  final listUnionRawItem = UtilsRegex.getTextRegexListMatch(
    content: classBrackets,
    regex: '(.*)_$className[\\s\\S]+?;',
  );

  final listFormatUnionItem = _getFormatItemUnion(className, listUnionRawItem);

  final listUnionName = _getUnionName(listFormatUnionItem, className);
  _msgYesDefConstructor(listUnionName, logger);

  final listUnionItem = <UnionItemModel>[];

  final listStartWriteParams = <String>['final ${className}Tag _tag;'];
  final listParamsForMap = <String, String>{'_tag': 'null'};
  msgTitleAnotherType(logger);
  for (var i = 0; i < listFormatUnionItem.length; i++) {
    final v = listFormatUnionItem[i];
    final unionName = listUnionName[i];

    var textBrackets = UtilsRegex.getTextRegexMatch(
      content: v,
      regex: r'\((.*?)\);',
    ).replaceAll(RegExp(r'\;$'), '');
    if (textBrackets.isEmpty) textBrackets = '()';
    final enumParam = _getTypeParameter(textBrackets);

    // final listParamRaw = textBrackets.split(',');
    final params = textBrackets.split(',');

    final listParamRaw = <String>[];
    final listIndex = <int>[];
    var isHaveOpenBracket = false;
    for (var i = 0; i < params.length; i++) {
      var v = params[i].trim();

      v = _replaceOtherSymbol(v);

      if (v.length <= 3) continue;
      if (isHaveOpenBracket) {
        final sum = listIndex.map((e) => params[e]).toList().join(',');
        v = '$sum, $v';

        v = _replaceOtherSymbol(v);

        if (v.contains('<') && !v.contains('>')) {
          listIndex.add(i);
          continue;
        }
        if (v.contains('[') && !v.contains(']')) {
          listIndex.add(i);
          continue;
        }
        if (v.contains('{') && !v.contains('}')) {
          listIndex.add(i);
          continue;
        }

        isHaveOpenBracket = false;

        listIndex.clear();
//
        // v = v.replaceAll('  ', ' ');
        listParamRaw.add(v);
        continue;
      }

      if ((v.contains('<') && !v.contains('>')) ||
          (v.contains('[') && !v.contains(']')) ||
          (v.contains('{') && !v.contains('}'))) {
        isHaveOpenBracket = true;
        listIndex.add(i);
        continue;
      }

      listIndex.clear();
      listParamRaw.add(v.trim());
    }

    final listParamFormat = <String>[];
    final listParamModel = <UnionParameterModel>[];
// get comment
    var regexRawDocCommentUnion = '';
    regexRawDocCommentUnion = i == 0
        ? '{[\\s\\S]*_$className(|[\\n\\r\\s]+)\\.(|[\\n\\r\\s]+)$unionName'
        : '_$className(|[\\n\\r\\s]+)\\.(|[\\n\\r\\s]+)${listUnionName[i - 1]}[\\s\\S]*_$className(|[\\n\\r\\s]+)\\.(|[\\n\\r\\s]+)${listUnionName[i]}';
    final rawDocCommentUnion = UtilsRegex.getTextRegexMatch(
      content: classBrackets,
      regex: regexRawDocCommentUnion,
    );
    final docCommentUnion = _getCommentDoc(rawDocCommentUnion);

    // переменная показывает что параметр один и имеет тип list. Для метода fromjson
    var isOnlyListDate = false;

    for (var i = 0; i < listParamRaw.length; i++) {
      // var v = cleanParam(listParamRaw[i]);
      var v = listParamRaw[i];
      var isRequired = false;
      var initValue = '';

      final rawSetting = UtilsRegex.getTextRegexMatch(
        content: v,
        regex: r'\/\*[\s\S]+?\*\/',
      );
      // очистка настроек
      v = v.replaceAll(rawSetting, '').trim();
      textBrackets = textBrackets.replaceAll(rawSetting, '').trim();

      final mapSettingParam = getMapSettingVarable(rawSetting);
      //  узнаю required или нет
      if (v.contains(RegExp('^required '))) {
        isRequired = true;
        v = v.replaceAll(RegExp('^required '), '');
      }

      if (v.contains('<') && !v.contains('>') ||
          v.contains('[') && !v.contains(']')) {
        v = '$v, ${cleanParam(listParamRaw[i + 1])}';
      } else if (v.contains('>') && !v.contains('<') ||
          v.contains(']') && !v.contains('[')) {
        continue;
      } else {
        if (v.isEmpty) continue;
      }

      // получаю initvalue
      const separator = ' = ';
      final arrayInit = v.split(separator);
      if (v.contains(separator)) {
        if (arrayInit.length > 2) {
          initValue = (arrayInit[arrayInit.length - 2] +
                  separator +
                  arrayInit[arrayInit.length - 1])
              .trim();
        } else {
          initValue = arrayInit.last.trim();
        }
        v = v.replaceAll(initValue, '').replaceAll(separator, '').trim();
      }

      final nameVar = v.split(' ').last;
      var typeVar = v.replaceAll(' $nameVar', '').trim();
      var isCanNull = false;
      if (typeVar[typeVar.length - 1] == '?') {
        isCanNull = true;
        typeVar = typeVar.replaceAll(RegExp(r'\?$'), '');
      }
      var typeEnum =
          EnumTypeVarable.fromValue(typeVar, fallback: EnumTypeVarable.none);
      // если есть ручной тип
      if (mapSettingParam.keys.contains(EnumKeySetting.type)) {
        typeEnum = EnumTypeVarable.fromValue(
          mapSettingParam[EnumKeySetting.type],
          fallback: EnumTypeVarable.none,
        );
      }

      if (typeEnum == EnumTypeVarable.none) {
        typeEnum = autoUpdateType(typeEnum, typeVar, logger);
      }

      final nameWithTag = '_${nameVar}_$unionName';

      listStartWriteParams.add('final $typeVar? $nameWithTag;');
      listParamsForMap[nameWithTag] = 'null';
      listParamFormat.add(v);
      listParamModel.add(
        UnionParameterModel(
          isRequired: isRequired,
          initValue: initValue.trim(),
          name: nameVar.trim(),
          typeStr: typeVar.trim(),
          typeEnum: typeEnum,
          mapSetting: mapSettingParam,
          isCanNull: isCanNull,
        ),
      );
      // проверка что значение одно и имеет тип list. Для метода fromjson
      isOnlyListDate = typeEnum.maybeMapValue(
            orElse: false,
            list_data: true,
            list_data_null: true,
            list_string_: true,
            list_string_null: true,
            list_: true,
            list_bool_: true,
            list_bool_null: true,
            list_double_: true,
            list_double_null: true,
            list_dynamic_: true,
            list_enum: true,
            list_enum_null: true,
            list_int_: true,
            list_int_null: true,
            list_map_int_dynamic_: true,
            list_map_int_string_: true,
            list_map_int_string_null: true,
            list_map_string_dynamic_: true,
            list_other: true,
          ) &&
          listParamRaw.length == 1;
    }

    listUnionItem.add(
      UnionItemModel(
        isOnlyListData: isOnlyListDate,
        comment: docCommentUnion,
        paramStr: textBrackets,
        nameUnion: listUnionName[i],
        parameter: enumParam,
        listParameters: listParamModel,
      ),
    );
  }

  final isHaveOnlyList = listUnionItem
      .firstWhere((e) => e.isOnlyListData, orElse: () => const UnionItemModel())
      .isOnlyListData;

  final commonModel = UnionCommonModel(
    // глобально  если есть только 1 парвметр и он является листом
    isHaveOnlyList: isHaveOnlyList,
    contentToEnd: contentToEnd,
    nameClass: className,
    listParams: listStartWriteParams,
    listUnion: listUnionItem,
    listSettingClass: listSettingClass,
  );

// rebuild the general model of all parameters with a unique parameter for each union
  final newListUnion = <UnionItemModel>[];
  for (final u in commonModel.listUnion) {
    final newlistParamsForMap = Map<String, String>.from(listParamsForMap);
    newlistParamsForMap['_tag'] = '${className}Tag.${u.nameUnion}';
    for (final p in u.listParameters) {
      newlistParamsForMap['_${p.name}_${u.nameUnion}'] = p.name;
    }
    newListUnion.add(u.copyWith(mapNameWithTag: newlistParamsForMap));
  }
  final newCommonModel = commonModel.copyWith(
    listUnion: newListUnion,
    classHeader: classHeader,
    comments: commentDocClass,
  );

  final file = File(path);
  writeToFileUnion(logger, file, newCommonModel);
}

String _replaceOtherSymbol(String v) {
  v = v.replaceAll(RegExp(r'^\(\{'), '');
  v = v.replaceAll(RegExp(r'^\(\['), '');
  v = v.replaceAll(RegExp(r'\]\)$'), '');
  v = v.replaceAll(RegExp(r'\}\)$'), '');
// для значений типа Color? c3 = const Color (0x00FFFFFF)
  if (!v.contains(RegExp(r'\(.*\)$'))) {
    v = v.replaceAll(RegExp(r'\)$'), '');
  }

  v = v.replaceAll(RegExp(r'^\('), '');
  v = v.replaceAll(RegExp(r'^\['), '');
  v = v.replaceAll(RegExp(r'^\{'), '');
  v = v.replaceAll(RegExp(r'\}$'), '');

  return v;
}

String _getCommentDoc(String content) {
  final commentDocClassList = UtilsRegex.getTextRegexListMatch(
    regex: r'\/\/\/.*',
    content: content,
  );

  return commentDocClassList.join('_-_').replaceAll('_-_', '\n');
}

void _msgYesDefConstructor(List<String> listUnionName, FLILogger logger) {
  if (listUnionName.contains(ConstHelper.emptyUnionName)) {
    logger
      ..info('\n')
      ..error(
        'TurnGen does not support default constructor or privat constructor',
      )
      ..info('\n');
    exit(0);
  }
}

EnumParameter _getTypeParameter(String textBrackets) {
  var returnValue = EnumParameter.none;

  if (textBrackets.contains('([') && textBrackets.endsWith('])')) {
    returnValue = EnumParameter.optional;
  } else if (!textBrackets.contains('([') && textBrackets.endsWith('])')) {
    returnValue = EnumParameter.defaultWithOptional;
  } else if (textBrackets.contains('({') && textBrackets.endsWith('})')) {
    returnValue = EnumParameter.required;
  } else if (!textBrackets.contains('({') && textBrackets.endsWith('})')) {
    returnValue = EnumParameter.defaultWithRequired;
  } else {
    returnValue = EnumParameter.default_;
  }

  return returnValue;
}

List<String> _getUnionName(
  List<String> listFormatUnionRawItem,
  String className,
) {
  final list = <String>[];

  for (final v in listFormatUnionRawItem) {
    final union = v.replaceAll('$className.', '').split('(').first;

    if (union.isEmpty) {
      list.add(ConstHelper.emptyUnionName);
      continue;
    }

    list.add(union);
  }

  return list;
}

void _msgIfNotNameClass(String className, FLILogger logger) {
  if (className.isEmpty) {
    logger
      ..info('\n')
      ..error('TurnGen did not define the name of the class')
      ..info('\n');
    exit(0);
  }
}

List<String> _getFormatItemUnion(
  String className,
  List<String> content,
) {
  final formatList = <String>[];
  for (var v in content) {
    v = v
        .trim()
        .replaceAll(RegExp('^const '), '')
        .replaceAll('_$className', className)
        .replaceAll('=', ' = ')
        .trim();
    v = replaceOutsideQuotes(v);

    formatList.add(v);
  }

  return formatList;
}

String replaceOutsideQuotes(String v) {
  final result = StringBuffer();
  var inSingleQuotes = false;
  var inDoubleQuotes = false;
  var inTripleSingleQuotes = false;
  var inTripleDoubleQuotes = false;

  for (var i = 0; i < v.length; i++) {
    if (!inSingleQuotes && !inDoubleQuotes && v.startsWith("'''", i)) {
      inTripleSingleQuotes = !inTripleSingleQuotes;
      result.write("'''");
      i += 2;
    } else if (!inSingleQuotes && !inDoubleQuotes && v.startsWith('"""', i)) {
      inTripleDoubleQuotes = !inTripleDoubleQuotes;
      result.write('"""');
      i += 2;
    } else if (!inTripleSingleQuotes &&
        !inTripleDoubleQuotes &&
        v.startsWith("'", i)) {
      inSingleQuotes = !inSingleQuotes;
      result.write("'");
    } else if (!inTripleSingleQuotes &&
        !inTripleDoubleQuotes &&
        v.startsWith('"', i)) {
      inDoubleQuotes = !inDoubleQuotes;
      result.write('"');
    } else if (!inSingleQuotes &&
        !inDoubleQuotes &&
        !inTripleSingleQuotes &&
        !inTripleDoubleQuotes) {
      if (v[i].trim().isEmpty &&
          (i + 1 < v.length) &&
          v[i + 1].trim().isEmpty) {
        continue;
      }
      result.write(v[i].trim().isEmpty ? ' ' : v[i]);
    } else {
      result.write(v[i]);
    }
  }

  return result.toString();
}

String _getNameClass(String classHeader) {
  final splitHeaderClass =
      classHeader.replaceAll(RegExp(r'\s+'), ' ').trim().split(' ');

  for (var i = 0; i < splitHeaderClass.length; i++) {
    final v = splitHeaderClass[i];
    if (v == 'class') return splitHeaderClass[i + 1];
  }

  return '';
}
