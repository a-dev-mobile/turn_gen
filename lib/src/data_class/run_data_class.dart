// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:turn_gen/src/src.dart';

part 'method/factory_init.dart';
part 'write_file.dart';

// ignore: prefer-static-class
Future<void> runData({required String path, required FLILogger logger}) async {
  final contentFile = await UtilsString.readFile(path: path);

  msgIfNodEnd(contentFile, logger);
// prepare settings for splitting

  final rawSettingClass = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'\/\*[\s\S]+?\*\/\s+(class|@immutable)',
  );

  final settingClass = UtilsRegex.getTextRegexMatch(
    content: rawSettingClass,
    regex: r'\/\*[\s\S]+?\*\/',
  );

  final listFirstSetting = <FirstSetting>[
    ..._getSetting(
      content: settingClass,
    ),
  ];

  var classContent = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'class[\s\S]+?(\/\/\s+end)',
  );

  final classHeader = UtilsRegex.getTextRegexMatch(
    content: classContent,
    regex: r'class[\s\S]+?{',
  );

  final className = _getNameClass(classHeader);

  msgIfNotNameClass(className, logger);

  final classBrackets = UtilsString.replaceToEmpty(
    text: classContent,
    replaceable: [
      classHeader,
    ],
  );
// delete all comments, for parsing purity
  classContent = classContent.replaceAll(RegExp('//.*'), '');

  final listItemFinalRaw = UtilsRegex.getTextRegexListMatch(
    content: classBrackets,
    regex: r'^[\s\s]+?final[\w\W]+?;',
  );
  final listItemFinal = _getFormatFinalItem(listItemFinalRaw);

  final listVarMain = <Varable>[];
  var listSplit = <String>[];

  var name = '';
  var nameObject = '';

  var isCanNull = false;
  var type = EnumTypeVarable.none;
  var typeStr = '';
  var initValueTemp = '';
  var initValueDefault = '';
  var initValueComment = '';
  var toMap = '';
  var fromMap = '';
/* init: null type: enum */ /* 
init: Map<t , v> 
type: asda fromMap: asdasd*/
  const emptySettingVar = '/*  */';
  for (var i = 0; i < listItemFinal.length; i++) {
    final finalVarable = _formatFinalVarablse(listItemFinal[i]);

    var settingVarable = emptySettingVar;
    var betwen = '';

    betwen = i == 0
        ? UtilsRegex.getTextRegexMatch(
            isLast: false,
            content: classContent,
            regex: '$className[\\s\\S]+?final',
          )
        : UtilsRegex.getTextRegexMatch(
            isLast: false,
            content: classContent,
            regex: '${listVarMain[i - 1].nameVar};[\\s\\S]+?final',
          );

    settingVarable = UtilsRegex.getTextRegexMatch(
      isLast: false,
      content: betwen,
      regex: r'\/\*[\s\S]+?\*\/',
    );
    if (settingVarable.isEmpty) settingVarable = emptySettingVar;

    final settingVarableMap = getMapSettingVarable(settingVarable);
    isCanNull = false;

    listSplit = finalVarable.split(' ');
    // take the name and delete it
    name = listSplit.last;
    final _ = listSplit.removeLast();

    typeStr = listSplit.join(' ').trim();

    if (typeStr.isEmpty) _msgErrorParsingVarable(listItemFinalRaw[i], logger);

// determining whether null is a value or not
    if (typeStr.substring(typeStr.length - 1) == '?') {
      isCanNull = true;
      typeStr = typeStr.substring(0, typeStr.length - 1);
    }
    // picking up the type of
    type = EnumTypeVarable.fromValue(typeStr, fallback: EnumTypeVarable.none);

    nameObject = '';

    // If it does not work, I see if there is a value in the commentary
    if (type == EnumTypeVarable.none &&
        settingVarableMap.containsKey(EnumKeySetting.type)) {
      type = EnumTypeVarable.fromValue(
        settingVarableMap[EnumKeySetting.type],
        fallback: EnumTypeVarable.none,
      );
      nameObject = typeStr;
    }

    if (type == EnumTypeVarable.none) {
      type = autoUpdateType(type, typeStr, logger);
      nameObject = typeStr;
    }

    //
    // toMap
    toMap = '';
    if (settingVarableMap.containsKey(EnumKeySetting.toMap)) {
      toMap = settingVarableMap[EnumKeySetting.toMap] ?? '';
    }

//
    //
    fromMap = '';
    if (settingVarableMap.containsKey(EnumKeySetting.fromMap)) {
      fromMap = settingVarableMap[EnumKeySetting.fromMap] ?? '';
    }
    initValueTemp = '';
    initValueDefault = '';
    initValueComment = '';
    if (settingVarableMap.containsKey(EnumKeySetting.init)) {
      final temp = settingVarableMap[EnumKeySetting.init] ?? '';

      initValueTemp = temp;
      initValueComment = temp;
    }
    initValueDefault = _getDefaultInitValue(type, initValueTemp, isCanNull);

    if (type == EnumTypeVarable.none) {
      logger.error('($finalVarable) - type is not defined');
    }
    listVarMain.add(
      Varable(
        isCanNull: isCanNull,
        nameVar: name,
        nameData: nameObject,
        type: type,
        toMap_: toMap,
        fromMap_: fromMap,
        initValueComment: initValueComment,
        initValueDefault: initValueDefault,
      ),
    );
  }

  final constructor = StringBuffer();
  final factoryInit = StringBuffer();
  final copyWithStart = StringBuffer();
  final copyWithEnd = StringBuffer();
  final toMapSb = StringBuffer();
  final fromMapSb = StringBuffer();
  final toString = StringBuffer();
  final equals = StringBuffer();
  final hashCode = StringBuffer();

  var typeStrTemp = '';
  var v = const Varable();

// I sort the Required varable first
  final listVarSort = [...listVarMain];

  final listRequired = listVarMain
      .where((v) => !v.isCanNull && v.initValueComment.isEmpty)
      .toList();
  listVarSort.removeWhere(listRequired.contains);

  final listYesInit =
      listVarSort.where((v) => v.initValueComment.isNotEmpty).toList();
  listVarSort.removeWhere(listYesInit.contains);

  final listNoInit = [...listVarSort];

  listVarSort
    ..clear()
    ..addAll(listRequired)
    ..addAll(listYesInit)
    ..addAll(listNoInit);
// listRequired
  for (var i = 0; i < listRequired.length; i++) {
    v = listRequired[i];
    constructor.write('''
    required this.${v.nameVar},
''');
  }
  // listYesInit
  for (var i = 0; i < listYesInit.length; i++) {
    v = listYesInit[i];
    constructor.write('''
    this.${v.nameVar} = ${v.initValueComment},
''');
  }
  // listNoInit
  for (var i = 0; i < listNoInit.length; i++) {
    v = listNoInit[i];
    constructor.write('''
    this.${v.nameVar},
''');
  }

  // Showing warning is null var, but init value have
  for (var i = 0; i < listVarMain.length; i++) {
    v = listVarMain[i];
    if (v.isCanNull && v.initValueDefault.isNotEmpty) {
      logger
        ..info('')
        ..info('-- INFO --')
        ..info(
          '(${v.type}? ${v.nameVar}) is null, but init value > ${v.initValueDefault}',
        );
    }

    if (v.initValueDefault.isNotEmpty && _getWordConst(v).isNotEmpty) {
      factoryInit.write('''
        ${v.nameVar}: ${_getWordConst(v)},
''');
    }

    typeStrTemp = v.type == EnumTypeVarable.enum_ ? v.nameData : v.type.value;
    if (v.nameData.isNotEmpty) {
      typeStrTemp = v.nameData;
    }

    copyWithStart.write('''
    $typeStrTemp? ${v.nameVar},
''');

    copyWithEnd.write('''
      ${v.nameVar}: ${v.nameVar} ?? this.${v.nameVar}, 
''');

    toMapSb.write('''
      '${v.nameVar}': ${getToMapVarable(v)}, 
''');

    fromMapSb.write('''
      ${v.nameVar}: ${getFromMap(v)}, 
''');

    toString.write('${v.nameVar}: \$${v.nameVar}, ');

    equals.write(getEquals(v.type, v.nameVar, i == listVarSort.length - 1));
    hashCode.write(
      getHashCode(
        v.type,
        v.nameVar,
      ),
    );
  }
  final listNameSortVar = listVarSort.map((e) => e.nameVar).toList();
  final file = File(path);
  writeToFile(
    logger,
    listNameSortVar,
    listFirstSetting,
    contentFile,
    classHeader,
    className,
    classBrackets,
    constructor,
    factoryInit,
    copyWithStart,
    copyWithEnd,
    toMapSb,
    fromMapSb,
    toString,
    equals,
    hashCode,
    file,
  );
}



void _msgErrorParsingVarable(String varable, FLILogger logger) {
  logger
    ..info('\n')
    ..error('check the variable - `$varable`')
    ..info('\n');
  exit(0);
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

List<FirstSetting> _getSetting({
  required String content,
}) {
  final settingRegExp = RegExp(r'(\w+\s+:)|(\w+:)');
  final listFirstSetting = <FirstSetting>[];

  if (!content.contains(settingRegExp)) return listFirstSetting;

  final contentFormat = content
      .replaceAll(':', ': ')
      .replaceAll(',', ', ')
      .replaceAll('/*', '')
      .replaceAll('*/', '')
      .replaceAll(RegExp(r'\s+'), ' ')
      .replaceAll(' ,', '')
      .replaceAll(' :', ':')
      .trim();

  var keySetting = EnumKeySetting.none;

  for (final key in EnumKeySetting.values) {
    keySetting = EnumKeySetting.none;

    // if it contains settings, then continue
    if (contentFormat.contains(key.value)) {
      keySetting = key;

      final tempList = contentFormat.split(' ');
      final indexKey = tempList.indexOf(key.value);
      final listSetting = <EnumValueSettingDataClass>[];
      for (var i = indexKey + 1; i < tempList.length; i++) {
        if (tempList[i].contains(':')) break;
        final setting = tempList[i];
        final tempEnum = EnumValueSettingDataClass.fromValue(
          setting.toLowerCase(),
          fallback: EnumValueSettingDataClass.none,
        );
        if (tempEnum != EnumValueSettingDataClass.none) {
          listSetting.add(tempEnum);
        }
      }

      listFirstSetting.add(
        FirstSetting(keySetting: keySetting, listValueSetting: listSetting),
      );
    } else {
      continue;
    }
  }

  return listFirstSetting;
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

List<String> _getFormatFinalItem(
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
          .trim(),
    );
  }

  return formatList;
}
