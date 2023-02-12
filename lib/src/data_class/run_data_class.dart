// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:turn_gen/constants.dart';
import 'package:turn_gen/logger.dart';
import 'package:turn_gen/src/data_class/type_variable_enum.dart';
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

    return;
  }

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
  var type = TypeVarable.none_;
  var typeStr = '';
  var initValueTemp = '';
  var initValueDefault = '';
  var initValueComment = '';
  var toMap = '';
  var fromMap = '';

  const splitType = 'type:';
  const splitInit = 'init:';
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
// определяю null значение или нет
    if (typeStr.substring(typeStr.length - 1) == '?') {
      isCanNull = true;
      typeStr = typeStr.substring(0, typeStr.length - 1);
    }
    // подбираю тип
    type = TypeVarable.fromValue(typeStr, fallback: TypeVarable.none_);

    nameObject = '';
    // если не получилось подобрать смотрю есть ли значение в комментарии
    if (type == TypeVarable.none_ && listItemDef[i].contains(splitType)) {
      final temp = listItemDef[i]
          .split('\n')
          .firstWhere((e) => e.contains(splitType))
          .replaceAll(splitType, '')
          .replaceAll('//', '')
          .replaceAll('/*', '')
          .replaceAll('*/', '')
          .trim();
      type = TypeVarable.fromValue(temp, fallback: TypeVarable.none_);
      nameObject = typeStr;
    }
    //

    //
    toMap = '';
    if (listItemDef[i].contains(splitToMap)) {
      final temp = listItemDef[i]
          .split('\n')
          .firstWhere((e) => e.contains(splitToMap))
          .replaceAll(splitToMap, '')
          .replaceAll('//', '')
          .replaceAll('/*', '')
          .replaceAll('*/', '')
          .trim();

      toMap = temp;
    }

//
    //
    fromMap = '';
    if (listItemDef[i].contains(splitFromMap)) {
      final temp = listItemDef[i]
          .split('\n')
          .firstWhere((e) => e.contains(splitFromMap))
          .replaceAll(splitFromMap, '')
          .replaceAll('//', '')
          .replaceAll('/*', '')
          .replaceAll('*/', '')
          .trim();

      fromMap = temp;
    }
    initValueTemp = '';
    initValueDefault = '';
    initValueComment = '';
    if (listItemDef[i].contains(splitInit)) {
      final temp = listItemDef[i]
          .split('\n')
          .firstWhere((e) => e.contains(splitInit))
          .replaceAll(splitInit, '')
          .replaceAll('//', '')
          .replaceAll('/*', '')
          .replaceAll('*/', '')
          .trim();

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
        toMap: toMap,
        fromMap: fromMap,
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
  var v = Varable();

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

    typeStrTemp = v.type == TypeVarable.enum_ ? v.nameObject : v.type.value;
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
      '${v.name}': ${_getToMap(v)}, 
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

class Varable {
  // enum
  final TypeVarable type;
  final String name;
  final String nameObject;
  final String initValueDefault;
  final String initValueComment;
  final String toMap;
  final String fromMap;
  final bool isCanNull;
  Varable({
    this.type = TypeVarable.none_,
    this.name = '',
    this.nameObject = '',
    this.initValueDefault = '',
    this.initValueComment = '',
    this.toMap = '',
    this.fromMap = '',
    this.isCanNull = false,
  });

  Varable copyWith({
    TypeVarable? type,
    String? name,
    String? nameObject,
    String? initValueDefault,
    String? initValueComment,
    String? toMap,
    String? fromMap,
    bool? isCanNull,
  }) {
    return Varable(
      type: type ?? this.type,
      name: name ?? this.name,
      nameObject: nameObject ?? this.nameObject,
      initValueDefault: initValueDefault ?? this.initValueDefault,
      initValueComment: initValueComment ?? this.initValueComment,
      toMap: toMap ?? this.toMap,
      fromMap: fromMap ?? this.fromMap,
      isCanNull: isCanNull ?? this.isCanNull,
    );
  }

  @override
  String toString() {
    return 'Varable(type: $type, name: $name, nameObject: $nameObject, initValueDefault: $initValueDefault, initValueComment: $initValueComment, toMap: $toMap, fromMap: $fromMap, isCanNull: $isCanNull)';
  }
}
