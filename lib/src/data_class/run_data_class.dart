// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:turn_gen/constants.dart';
import 'package:turn_gen/logger.dart';
import 'package:turn_gen/src/data_class/data_class.dart';

import 'package:turn_gen/utils.dart';

part 'to_map.dart';
part 'from_map.dart';
part 'equals.dart';
part 'hash_code.dart';
part 'factory_init.dart';
part 'write_file.dart';

// add /* end */ at the end of final variables to understand where the generation starts
// ignore: prefer-static-class
Future<void> runData({required String path, required FLILogger logger}) async {
  final contentFile = await UtilsString.readFile(path: path);

  if (!contentFile.contains(RegExp(r'(\/\/\s+end)'))) {
    logger
      ..info('')
      ..info('***')
      ..info('put a comment (// end ) where to start generating')
      ..info('***')
      ..info('');

    exit(0);
  }

  final firstSettingClass = UtilsRegex.getTextRegexLastMatch(
    content: contentFile,
    regex: r'\/\*[\s\S]+?\*\/\s+(class|@immutable)',
  );

  final firstSettingContent = UtilsRegex.getTextRegexLastMatch(
    content: firstSettingClass,
    regex: r'\/\*[\s\S]+?\*\/',
  );

  final listFirstSetting = <FirstSetting>[
    ..._getFirstSetting(
      content: firstSettingContent,
      isUse: true,
    ),
    ..._getFirstSetting(
      content: firstSettingContent,
      isUse: false,
    ),
  ];

  final classContent = UtilsString.replaceToEmpty(
    text: UtilsRegex.getTextRegexLastMatch(
      content: contentFile,
      regex: r'class\s+\w+\s+{[\s\S]+?(\/\/\s+end)',
    ),
    replaceable: [''],
  );
  final classHeader = UtilsRegex.getTextRegexLastMatch(
    content: classContent,
    regex: r'class\s+\w+\s+{',
  );

  final className = UtilsString.replaceToEmpty(
    text: classHeader,
    replaceable: ['class', ' ', '{'],
  );

  final classBrackets = UtilsString.replaceToEmpty(
    text: classContent,
    replaceable: [
      classHeader,
    ],
  );

  final listItemFinal = UtilsRegex.getTextRegexListMatch(
    content: classBrackets,
    regex: r'final.*$',
  );

  final listItemDef = UtilsRegex.getTextRegexListMatch(
    content: classBrackets,
    regex: r'\/\*[\s\S]+?\*\/',
  );

  if (listItemDef.length != listItemFinal.length) {
    logger
      ..info('')
      ..info('***')
      ..info('put a comment (/*   */) over each final variable')
      ..info('***')
      ..info('');
  }

  final listVar = <Varable>[];
  var listSplit = <String>[];

  var name = '';
  var nameObject = '';
  var finalLine = '';
  var isCanNull = false;
  var type = EnumTypeVarable.none_;
  var typeStr = '';
  var initValueTemp = '';
  var initValueDefault = '';
  var initValueComment = '';
  var toMap = '';
  var fromMap = '';

  final splitType = '${EnumUsedFeatures.type.value}:';
  final splitInit = '${EnumUsedFeatures.init.value}:';
  const splitToMap = 'toMap:';
  const splitFromMap = 'fromMap:';

  for (var i = 0; i < listItemFinal.length; i++) {
    isCanNull = false;

    finalLine = UtilsString.replaceToEmpty(
      text: listItemFinal[i],
      replaceable: ['final', '  ', ';'],
    ).trim();
    listSplit = finalLine.split(' ');

    name = listSplit.last.trim();
    final _ = listSplit.removeLast();

    typeStr = listSplit.join(' ').trim();
// determining whether null is a value or not
    if (typeStr.substring(typeStr.length - 1) == '?') {
      isCanNull = true;
      typeStr = typeStr.substring(0, typeStr.length - 1);
    }
    // picking up the type of
    type = EnumTypeVarable.fromValue(typeStr, fallback: EnumTypeVarable.none_);

    nameObject = '';
    // If it does not work, I see if there is a value in the commentary
    if (type == EnumTypeVarable.none_ && listItemDef[i].contains(splitType)) {
      final temp = _splitUsedFeatures(listItemDef, i, splitType);
      type = EnumTypeVarable.fromValue(temp, fallback: EnumTypeVarable.none_);
      nameObject = typeStr;
    }
    //

    //
    toMap = '';
    if (listItemDef[i].contains(splitToMap)) {
      toMap = _splitUsedFeatures(listItemDef, i, splitToMap);
    }

//
    //
    fromMap = '';
    if (listItemDef[i].contains(splitFromMap)) {
      fromMap =  _splitUsedFeatures(listItemDef, i, splitFromMap);
    }
    initValueTemp = '';
    initValueDefault = '';
    initValueComment = '';
    if (listItemDef[i].contains(splitInit)) {
      final temp = _splitUsedFeatures(listItemDef, i, splitInit);

      initValueTemp = temp;
      initValueComment = temp;
    }
    initValueDefault = _getDefaultInitValue(type, initValueTemp, isCanNull);

    // print('');

    listVar.add(
      Varable(
        isCanNull: isCanNull,
        name: name,
        nameObject: nameObject,
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

  for (var i = 0; i < listVar.length; i++) {
    v = listVar[i];

    if (v.initValueComment.isNotEmpty) {
      constructor.write('''
    this.${v.name} = ${v.initValueComment},
''');
    } else if (!v.isCanNull && v.initValueComment.isEmpty) {
      constructor.write('''
    required this.${v.name},
''');
    } else if (v.isCanNull && v.initValueComment.isEmpty) {
      constructor.write('''
    this.${v.name},
''');
    }

    if (v.isCanNull && v.initValueDefault.isNotEmpty) {
      logger
        ..info('')
        ..info('-- INFO --')
        ..info(
          '${v.type}? ${v.name} is null, but init value > ${v.initValueDefault}',
        );
    }

    if (v.initValueDefault.isNotEmpty && _getWordConst(v).isNotEmpty) {
      factoryInit.write('''
        ${v.name}: ${_getWordConst(v)},
''');
    }

    typeStrTemp = v.type == EnumTypeVarable.enum_ ? v.nameObject : v.type.value;
    if (v.nameObject.isNotEmpty) {
      typeStrTemp = v.nameObject;
    }

    copyWithStart.write('''
    $typeStrTemp? ${v.name},
''');

    copyWithEnd.write('''
      ${v.name}: ${v.name} ?? this.${v.name}, 
''');

    toMapSb.write('''
      '${v.name}': ${_getToMapVarable(v)}, 
''');

    fromMapSb.write('''
      ${v.name}: ${getFromMap(v)}, 
''');

    toString.write('${v.name}: \$${v.name}, ');

    equals.write(_getEquals(v, i == listVar.length - 1));
    hashCode.write(
      _getHashCode(
        v,
      ),
    );
  }

  final file = File(path);
  writeToFile(
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

List<FirstSetting> _getFirstSetting({
  required String content,
  required bool isUse,
}) {
  if (content.isEmpty || !content.contains('$isUse')) return <FirstSetting>[];

  final rawList = content
      .split('\n')
      .firstWhere((e) => e.contains('$isUse:'))
      .replaceAll('$isUse:', '')
      .replaceAll('//', '')
      .replaceAll('/*', '')
      .replaceAll('*/', '')
      .replaceAll(',', '')
      .replaceAll('-', '')
      .replaceAll('_', '')
      .replaceAll(RegExp(r'\s+'), ' ')
      .trim()
      .toLowerCase();
  final listFirstSetting = <FirstSetting>[];
  var en = EnumUsedFeatures.none;

  for (final v in rawList.split(' ')) {
    en = EnumUsedFeatures.fromValue(v.toLowerCase(),
        fallback: EnumUsedFeatures.none);
    //  do not record if not detected
    if (en == EnumUsedFeatures.none) continue;

    listFirstSetting.add(
      FirstSetting(
        isUsed: isUse,
        enumUsedFeatures: EnumUsedFeatures.fromValue(v.toLowerCase(),
            fallback: EnumUsedFeatures.none),
      ),
    );
  }

  return listFirstSetting;
}

String _splitUsedFeatures(List<String> listItemDef, int i, String split) {
  return listItemDef[i]
     
      .split('\n')
      .firstWhere((e) => e.contains(split))
      .replaceAll(split, '')
      .replaceAll('//', '')
      .replaceAll('/*', '')
      .replaceAll('*/', '')
      .trim();
}
