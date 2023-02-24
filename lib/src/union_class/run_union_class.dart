// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:turn_gen/src/src.dart';

part 'union_write_file.dart';

const String _emptyUnionName = 'default_';

// ignore: prefer-static-class
Future<void> runUnion({required String path, required FLILogger logger}) async {
  final contentFile = await UtilsString.readFile(path: path);

  final classHeader = UtilsRegex.getTextRegexLastMatch(
    content: contentFile,
    regex: r'class[\s\S]+?{',
  );

  final className = _getNameClass(classHeader);

  _msgIfNotNameClass(className, logger);

  final classBrackets = contentFile.replaceAll(classHeader, '');

  final listUnionRawItem = UtilsRegex.getTextRegexListMatch(
    content: classBrackets,
    regex: '$className[\\s\\S]+?;',
  );

  final listFormatUnionItem = _getFormatItemUnion(listUnionRawItem);

  final listUnionName = _getUnionName(listFormatUnionItem, className);
  if (listUnionName.contains(_emptyUnionName)) {

    logger
      ..info('\n')
      ..error('TurnGen does not support default constructor, add factory name')
      ..info('\n');
    exit(0);

  }

  final listUnionItem = <UnionItemModel>[];

  final listStartWriteParams = <String>['final _${className}Tag _tag;'];
  final listParamsForMap = <String, String>{'_tag': 'null'};

  for (var i = 0; i < listFormatUnionItem.length; i++) {
    final v = listFormatUnionItem[i];
    final unionName = listUnionName[i];

    var textBrackets = UtilsRegex.getTextRegexLastMatch(
      content: v,
      regex: r'\([\s\S]+?\)',
    );
    if (textBrackets.isEmpty) textBrackets = '()';
    final enumParam = _getTypeParameter(textBrackets);

    final listParamRaw = textBrackets.split(',');
    final listParamFormat = <String>[];
    final listParamModel = <UnionParameterModel>[];
    for (var i = 0; i < listParamRaw.length; i++) {
      var v = _cleanParam(listParamRaw[i]);
      var isRequired = false;
      var initValue = '';

      //  узнаю required или нет
      if (v.contains(RegExp('^required '))) {
        isRequired = true;
        v = v.replaceAll(RegExp('^required '), '');
      }

      if (v.contains('<') && !v.contains('>')) {
        v = '$v, ${_cleanParam(listParamRaw[i + 1])}';
      } else if (v.contains('>') && !v.contains('<')) {
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
          // nameWithTag: nameWithTag,
          isCanNull: isCanNull,
        ),
      );
    }

    listUnionItem.add(
      UnionItemModel(
        paramStr: textBrackets,
        nameUnion: listUnionName[i],
        parameter: enumParam,
        listParameters: listParamModel,
      ),
    );
  }
  final commonModel = UnionCommonModel(
    nameClass: className,
    listParams: listStartWriteParams,
    listUnion: listUnionItem,
  );

// пересобираю общую модель всех параметров с уникальным параметром каждого union
  final newListUnion = <UnionItemModel>[];
  for (final u in commonModel.listUnion) {
    final newlistParamsForMap = Map<String, String>.from(listParamsForMap);
    newlistParamsForMap['_tag'] = '_${className}Tag.${u.nameUnion}';
    for (final p in u.listParameters) {
      newlistParamsForMap['_${p.name}_${u.nameUnion}'] = p.name;
    }
    newListUnion.add(u.copyWith(mapNameWithTag: newlistParamsForMap));
  }
  final newCommonModel = commonModel.copyWith(listUnion: newListUnion);

  final file = File(path);
  unionWriteToFile(logger, file, newCommonModel, contentFile);
}

String _cleanParam(String value) {
  return value
      .trim()
      .replaceAll('({', '')
      .replaceAll('})', '')
      .replaceAll('([', '')
      .replaceAll('])', '')
      .replaceAll(RegExp(r'^\['), '')
      .replaceAll(RegExp(r'^\{'), '')
      .replaceAll(RegExp(r'^\('), '')
      .replaceAll(RegExp(r'\)$'), '');
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
    final union =
        v.replaceAll(className, '').replaceAll('.', '').split(' ').first;

    if (union.isEmpty) {
      list.add(_emptyUnionName);
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

void _msgNotUnion(List<String> listUnion, FLILogger logger) {
  if (listUnion.isEmpty) {
    logger
      ..info('\n')
      ..error('Union not specified ')
      ..info('add for example: /* union: data loading error */')
      ..info('\n');
    exit(0);
  }
}

Map<EnumKeySettingUnion, String> _formatSettingVarable(String content) {
  // ignore: prefer-immediate-return
  var contentFormat = content
      .replaceAll(':', ': ')
      .replaceAll(',', ', ')
      .replaceAll('/*', '')
      .replaceAll('*/', '')
      .replaceAll(RegExp(r'\s+'), ' ')
      .replaceAll(' ,', ',')
      .replaceAll(' :', ':');

  final setting = [
    'init:',
    'INIT:',
    'TYPE:',
    'type:',
  ];

  for (final v in setting) {
    if (contentFormat.contains(v)) {
      contentFormat = contentFormat.replaceAll(v, '\n$v');
    }
  }
  final map = <EnumKeySettingUnion, String>{};
  final split = contentFormat.split('\n');
  var splitTemp = <String>[];
  var strKey = '';
  var strValue = '';
  var enumKey = EnumKeySettingUnion.none;

  for (var i = 0; i < split.length; i++) {
    enumKey = EnumKeySettingUnion.none;

    if (split[i].isEmpty || !split[i].contains(':')) continue;
    splitTemp = split[i].split(':');

    strKey = '${splitTemp.first.toLowerCase()}:';
    strValue = splitTemp.last.trim();
    enumKey = EnumKeySettingUnion.fromValue(
      strKey,
      fallback: EnumKeySettingUnion.none,
    );

    if (enumKey == EnumKeySettingDataClass.none) continue;

    map[enumKey] = strValue;
  }

  return map;
}

String _formatFinalVarablse(String content) {
  // ignore: prefer-immediate-return
  final contentFormat = content
      .replaceAll(RegExp(r'\s+'), ' ')
      .replaceAll(';', '')
      .replaceAll('final', '')
      .trim();

  return contentFormat;
}

List<String> _getSetting({
  required String content,
}) {
  final contentFormat = content
      .replaceAll(':', ': ')
      .replaceAll(',', ', ')
      .replaceAll('/*', '')
      .replaceAll('*/', '')
      .replaceAll(RegExp(r'\s+'), ' ')
      .replaceAll(' ,', '')
      .replaceAll(' :', ':')
      .replaceAll('union:', '')
      .trim();

  return contentFormat.split(' ');
}

List<String> _getFormatItemUnion(
  List<String> content,
) {
  final formatList = <String>[];
  for (final v in content) {
    formatList.add(
      v
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
          // .replaceAll('> ', '>')
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
