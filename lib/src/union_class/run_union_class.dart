// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:turn_gen/src/src.dart';
import 'package:turn_gen/src/union_class/enum/enum_key_setting.dart';

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

  for (var i = 0; i < listFormatUnionItem.length; i++) {
    final listUnionItem = <UnionItemModel>[];
    final v = listFormatUnionItem[i];
    final textBrackets = UtilsRegex.getTextRegexLastMatch(
      content: v,
      regex: r'\([\s\S]+?\)',
    );
    // todo

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
      listParamFormat.add(v);
      listParamModel.add(
          UnionParameterModel(isRequired: isRequired, initValue: initValue));
    }

    listUnionItem.add(UnionItemModel(
        nameUnion: listUnionName[i],
        parameter: enumParam,
        listParameters: listParamModel));

    var a;
  }

  final listItemDef = UtilsRegex.getTextRegexListMatch(
    content: classBrackets,
    regex: r'\/\*[\s\S]+?\*\/',
  );

  if (listItemDef.length != listItemDef.length) {
    logger
      ..info('')
      ..info('***')
      ..info('put a comment (/*   */) over each final variable')
      ..info('***')
      ..info('');
    exit(0);
  }

//   final listVarMain = <Varable>[];
//   var listSplit = <String>[];

//   var name = '';
//   var nameObject = '';

//   var isCanNull = false;
//   var type = EnumTypeVarable.none;
//   var typeStr = '';
//   var initValueTemp = '';
//   var initValueDefault = '';
//   var initValueComment = '';
//   var toMap = '';
//   var fromMap = '';
// /* init: null type: enum */ /*
// init: Map<t , v>
// type: asda fromMap: asdasd*/
//   for (var i = 0; i < listItemFinal.length; i++) {
//     final finalVarable = _formatFinalVarablse(listItemFinal[i]);
//     final settingVarableMap = _formatSettingVarable(listItemDef[i]);
//     isCanNull = false;

//     listSplit = finalVarable.split(' ');
//     // take the name and delete it
//     name = listSplit.last;
//     final _ = listSplit.removeLast();

//     typeStr = listSplit.join(' ').trim();
// // determining whether null is a value or not
//     if (typeStr.substring(typeStr.length - 1) == '?') {
//       isCanNull = true;
//       typeStr = typeStr.substring(0, typeStr.length - 1);
//     }
//     // picking up the type of
//     type = EnumTypeVarable.fromValue(typeStr, fallback: EnumTypeVarable.none);

//     nameObject = '';

//     // If it does not work, I see if there is a value in the commentary
//     if (type == EnumTypeVarable.none &&
//         settingVarableMap.containsKey(EnumKeySettingUnion.type)) {
//       type = EnumTypeVarable.fromValue(
//         settingVarableMap[EnumKeySettingDataClass.type],
//         fallback: EnumTypeVarable.none,
//       );

//       nameObject = typeStr;
//     }
//     //

//     // toMap

// //
//     //

//     initValueTemp = '';
//     initValueDefault = '';
//     initValueComment = '';
//     if (settingVarableMap.containsKey(EnumKeySettingDataClass.init)) {
//       final temp = settingVarableMap[EnumKeySettingDataClass.init] ?? '';

//       initValueTemp = temp;
//       initValueComment = temp;
//     }

//     if (type == EnumTypeVarable.none) {
//       logger.error('($finalVarable) - type is not defined');
//     }
//     listVarMain.add(
//       Varable(
//         isCanNull: isCanNull,
//         nameVar: name,
//         nameData: nameObject,
//         type: type,
//         toMap_: toMap,
//         fromMap_: fromMap,
//         initValueComment: initValueComment,
//         initValueDefault: initValueDefault,
//       ),
//     );
//   }

//   final constructor = StringBuffer();
//   final factoryInit = StringBuffer();
//   final copyWithStart = StringBuffer();
//   final copyWithEnd = StringBuffer();
//   final toMapSb = StringBuffer();
//   final fromMapSb = StringBuffer();
//   final toString = StringBuffer();
//   final equals = StringBuffer();
//   final hashCode = StringBuffer();

//   var typeStrTemp = '';
//   var v = const Varable();

// // I sort the Required varable first
//   final listVarSort = [...listVarMain];

//   final listRequired = listVarMain
//       .where((v) => !v.isCanNull && v.initValueComment.isEmpty)
//       .toList();
//   listVarSort.removeWhere(listRequired.contains);

//   final listYesInit =
//       listVarSort.where((v) => v.initValueComment.isNotEmpty).toList();
//   listVarSort.removeWhere(listYesInit.contains);

//   final listNoInit = [...listVarSort];

//   listVarSort
//     ..clear()
//     ..addAll(listRequired)
//     ..addAll(listYesInit)
//     ..addAll(listNoInit);
// // listRequired
//   for (var i = 0; i < listRequired.length; i++) {
//     v = listRequired[i];
//     constructor.write('''
//     required this.${v.nameVar},
// ''');
//   }
//   // listYesInit
//   for (var i = 0; i < listYesInit.length; i++) {
//     v = listYesInit[i];
//     constructor.write('''
//     this.${v.nameVar} = ${v.initValueComment},
// ''');
//   }
//   // listNoInit
//   for (var i = 0; i < listNoInit.length; i++) {
//     v = listNoInit[i];
//     constructor.write('''
//     this.${v.nameVar},
// ''');
//   }

//   // Showing warning is null var, but init value have
//   for (var i = 0; i < listVarMain.length; i++) {
//     v = listVarMain[i];
//     if (v.isCanNull && v.initValueDefault.isNotEmpty) {
//       logger
//         ..info('')
//         ..info('-- INFO --')
//         ..info(
//           '(${v.type}? ${v.nameVar}) is null, but init value > ${v.initValueDefault}',
//         );
//     }

//     typeStrTemp = v.type == EnumTypeVarable.enum_ ? v.nameData : v.type.value;
//     if (v.nameData.isNotEmpty) {
//       typeStrTemp = v.nameData;
//     }

//     copyWithStart.write('''
//     $typeStrTemp? ${v.nameVar},
// ''');

//     copyWithEnd.write('''
//       ${v.nameVar}: ${v.nameVar} ?? this.${v.nameVar},
// ''');

//     toString.write('${v.nameVar}: \$${v.nameVar}, ');
//   }
//   final listNameSortVar = listVarSort.map((e) => e.nameVar).toList();
//   final file = File(path);
//   // writeToFile(
//   //   logger,
//   //   listNameSortVar,
//   //   // listFirstSetting,
//   //   contentFile,
//   //   classHeader,
//   //   className,
//   //   classBrackets,
//   //   constructor,
//   //   factoryInit,
//   //   copyWithStart,
//   //   copyWithEnd,
//   //   toMapSb,
//   //   fromMapSb,
//   //   toString,
//   //   equals,
//   //   hashCode,
//   //   file,
//   // );
// }
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
    List<String> listFormatUnionRawItem, String className) {
  final list = <String>[];

  for (final v in listFormatUnionRawItem) {
    list.add(v.replaceAll(className, '').replaceAll('.', '').split(' ').first);
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
    enumKey = EnumKeySettingUnion.fromValue(strKey,
        fallback: EnumKeySettingUnion.none);

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
    formatList.add(v
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
        .trim());
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
