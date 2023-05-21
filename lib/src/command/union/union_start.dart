// ignore_for_file: public_member_api_docs, sort_constructors_first
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

  final listStartWriteParams = <String>['final _${className}Tag _tag;'];
  final listParamsForMap = <String, String>{'_tag': 'null'};
  msgTitleAnotherType(logger);
  for (var i = 0; i < listFormatUnionItem.length; i++) {
    final v = listFormatUnionItem[i];
    final unionName = listUnionName[i];

    var textBrackets = UtilsRegex.getTextRegexMatch(
      content: v,
      regex: r'\([\s\S]+?\)',
    );
    if (textBrackets.isEmpty) textBrackets = '()';
    final enumParam = _getTypeParameter(textBrackets);

    // final listParamRaw = textBrackets.split(',');
    final params = textBrackets.split(',');

    final listParamRaw = <String>[];
    final listIndex = <int>[];
    var isHaveOpenBracket = false;
    for (var i = 0; i < params.length; i++) {
      var v = params[i];
      v = v.replaceAll(RegExp(r'^\(\{'), '');
      if (isHaveOpenBracket) {
        final sum = listIndex.map((e) => params[e]).toList().join(',');
        v = '$sum,$v';

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
      listParamRaw.add(v);
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

    for (var i = 0; i < listParamRaw.length; i++) {
      var v = cleanParam(listParamRaw[i]);
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
      if (v.contains('=')) {
        initValue = v.split('=').last.trim();
        v = v.replaceAll(initValue, '').replaceAll('=', '').trim();
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
    }

    listUnionItem.add(
      UnionItemModel(
        comment: docCommentUnion,
        paramStr: textBrackets,
        nameUnion: listUnionName[i],
        parameter: enumParam,
        listParameters: listParamModel,
      ),
    );
  }
  final commonModel = UnionCommonModel(
    contentToEnd: contentToEnd,
    nameClass: className,
    listParams: listStartWriteParams,
    listUnion: listUnionItem,
  );

// rebuild the general model of all parameters with a unique parameter for each union
  final newListUnion = <UnionItemModel>[];
  for (final u in commonModel.listUnion) {
    final newlistParamsForMap = Map<String, String>.from(listParamsForMap);
    newlistParamsForMap['_tag'] = '_${className}Tag.${u.nameUnion}';
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
  writeToFileUnion(logger, file, newCommonModel, contentFile);
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
    final union = v.replaceAll('$className.', '').split(' ').first;

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
          .replaceAll(RegExp('^const '), '')
          .replaceAll('_$className', className)
          .trim(),
    );
  }

  return formatList;
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
