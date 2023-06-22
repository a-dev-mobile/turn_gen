// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:turn_gen/src/src.dart';

// ignore: prefer-static-class
Future<void> dataStart({
  required String path,
  required FLILogger logger,
}) async {
  final contentFile = await UtilsString.readFile(path: path);

  final isShowComment =
      YamlRead().isShowComment(filePath: path, logger: logger);

  msgIfNodEnd(contentFile, logger);
// prepare settings for splitting

  final rawSettingClass = getSettingClass(contentFile);

  final listFirstSetting = <SettingClassModel>[
    ...getListSettingClass(
      content: rawSettingClass,
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
  classContent = classContent.replaceAll(RegExp(r'[\s]//.*'), '');

  final listItemFinal = getFinalParamList(classBrackets);
// для проверки финальных переменных
  final listItemRow = getRowParamList(classBrackets);

  if (listItemFinal.isEmpty || listItemFinal.length != listItemRow.length) {
    msgErrorParsingFinalVarable(logger);
  }

  final listParameterMain = <Parameter>[];
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

  const emptySettingVar = '/*  */';
  msgTitleAnotherType(logger);
  for (var i = 0; i < listItemFinal.length; i++) {
    final varWithoutFinal = getVarWithoutFinal(listItemFinal[i]);

    var settingVarable = emptySettingVar;

    final regexBetwen = i == 0
        ? '$className[\\s\\S]+?final'
        : '[\\s]${listParameterMain[i - 1].nameVar};[\\s\\S]+?final';

    final betwenText = UtilsRegex.getTextRegexMatch(
      isLast: false,
      content: classContent,
      regex: regexBetwen,
    );
    settingVarable = UtilsRegex.getTextRegexMatch(
      isLast: false,
      content: betwenText,
      regex: r'\/\*[\s\S]+?\*\/',
    );
    if (settingVarable.isEmpty) settingVarable = emptySettingVar;

    final settingVarableMap = getMapSettingVarable(settingVarable);
    isCanNull = false;

    listSplit = varWithoutFinal.split(' ');
    // take the name and delete it
    name = listSplit.last;
    final _ = listSplit.removeLast();

    typeStr = listSplit.join(' ').trim();

    if (typeStr.isEmpty) msgErrorParsingVarable(listItemFinal[i], logger);

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

      // добавляю const если его нет
      if (initValueComment.contains(RegExp(r'(^{.*}|^\[.*\])'))) {
        initValueComment = 'const $initValueComment';
      }
    }
    initValueDefault = getDefaultInitValue(type, initValueTemp, isCanNull);

    if (type == EnumTypeVarable.none) {
      logger.error('($varWithoutFinal) - type is not defined');
    }

    var typeInList = '';
    // define the type in the List
    if (typeStr.contains(RegExp('^List'))) {
      typeInList =
          UtilsRegex.getTextRegexMatch(regex: r'<\w+', content: typeStr)
              .replaceAll('<', '');
    }

    listParameterMain.add(
      Parameter(
        isCanNull: isCanNull,
        nameVar: name,
        nameData: nameObject,
        type: type,
        toMap_: toMap,
        fromMap_: fromMap,
        typeInList: typeInList,
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
  final fromMapDynamic = StringBuffer();
  final toString = StringBuffer();
  final equals = StringBuffer();
  final hashCode = StringBuffer();

  var typeStrTemp = '';
  var v = const Parameter();

// I sort the Required varable first
  final listVarSort = [...listParameterMain];

  final listRequired = listParameterMain
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
  for (var i = 0; i < listParameterMain.length; i++) {
    v = listParameterMain[i];
    // if (v.isCanNull && v.initValueDefault.isNotEmpty) {
    //   logger
    //     ..info('')
    //     ..info('-- INFO --')
    //     ..info(
    //       '(${v.type}? ${v.nameVar}) is null, but init value > ${v.initValueDefault}',
    //     );
    // }

    if (v.initValueDefault.isNotEmpty && getWordConst(v).isNotEmpty) {
      factoryInit.write('''
        ${v.nameVar}: ${getWordConst(v)},
''');
    }
// v.nameData это название класса а v.type.value это название типа
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

    equals.write(
      Equals.get(
        type: v.type,
        nameVar: v.nameVar,
        isLast: i == listVarSort.length - 1,
      ),
    );
    hashCode.write(
      getHashCode(
        v.type,
        v.nameVar,
      ),
    );
  }
  final listNameSortVar = listVarSort.map((e) => e.nameVar).toList();
  final file = File(path);
  writeToFileData(
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
    fromMapDynamic,
    toString,
    equals,
    hashCode,
    isShowComment,
    file,
  );
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
