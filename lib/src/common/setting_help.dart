// ignore_for_file: prefer-static-class
import 'dart:io';

import 'package:turn_gen/src/src.dart';

// получит не форматированную строку первоночальных настроек класса
String getSettingClass(String contentFile) {
  final raw = UtilsRegex.getTextRegexMatch(
    content: contentFile,
    regex: r'\/\*[\s\S]+?\*\/\s+(class|@immutable)',
  );

  return UtilsRegex.getTextRegexMatch(
    content: raw,
    regex: r'\/\*[\s\S]+?\*\/',
  );
}

List<String> getFinalParamList(String contentFile) {
  final listItemFinalRaw = UtilsRegex.getTextRegexListMatch(
    content: contentFile,
    regex: r'^[\s\s]+?final[\w\W]+?;',
  );

  return _getFormatFinalItem(listItemFinalRaw);
}

List<String> getRowParamList(String contentFile) {
  final listItemFinalRaw = UtilsRegex.getTextRegexListMatch(
    content: contentFile,
    regex: r'^[\s\s]+?[\w\W]+?;',
  );

  return _getFormatFinalItem(listItemFinalRaw);
}

/// получает final String name;
///
/// возвращает String name
String getVarWithoutFinal(String content) {
  // ignore: prefer-immediate-return
  final contentFormat = content
      .replaceAll(RegExp(r'\s+'), ' ')
      .replaceAll(';', '')
      .replaceAll('final', '')
      .trim();

  return contentFormat;
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

// преобразовать не форматированную строку первоночальных настроек класса
// в model
List<SettingClassModel> getListSettingClass({
  required String content,
}) {
  final settingRegExp = RegExp(r'(\w+\s+:)|(\w+:)');
  final listFirstSetting = <SettingClassModel>[];

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
      final listSetting = <EnumSettingClass>[];
      for (var i = indexKey + 1; i < tempList.length; i++) {
        if (tempList[i].contains(':')) break;
        final setting = tempList[i];
        final tempEnum = EnumSettingClass.fromValue(
          setting.toLowerCase(),
          fallback: EnumSettingClass.none,
        );
        if (tempEnum != EnumSettingClass.none) {
          listSetting.add(tempEnum);
        }
      }

      listFirstSetting.add(
        SettingClassModel(
          keySetting: keySetting,
          listValueSetting: listSetting,
        ),
      );
    } else {
      continue;
    }
  }

  return listFirstSetting;
}

Map<EnumKeySetting, String> getMapSettingVarable(String content) {
  var contentFormat = content
      .replaceAll(':', ': ')
      .replaceAll(',', ', ')
      .replaceAll('/*', '')
      .replaceAll('*/', '')
      .replaceAll(RegExp(r'\s+'), ' ')
      .replaceAll(' ,', ',')
      .replaceAll(' :', ':')
      .replaceAll('https: ', 'https:');

  final setting = [
    'init:',
    'INIT:',
    'TYPE:',
    'type:',
    'fromMap:',
    'toMap:',
    'tomap:',
    'TOMAP:',
    'toMAP:',
    'frommap:',
    'FROMMAP:',
    'fromMAP:',
  ];

  for (final v in setting) {
    if (contentFormat.contains(v)) {
      contentFormat = contentFormat.replaceAll(v, '\n$v');
    }
  }
  final map = <EnumKeySetting, String>{};
  final split = contentFormat.split('\n');
  var splitTemp = <String>[];
  var strKey = '';
  var strValue = '';
  var enumKey = EnumKeySetting.none;

  for (var i = 0; i < split.length; i++) {
    enumKey = EnumKeySetting.none;

    if (split[i].isEmpty || !split[i].contains(':')) continue;

    splitTemp = split[i].split(':');

    strKey = '${splitTemp.first.toLowerCase()}:';

    final _ = splitTemp.removeAt(0);

    strValue = splitTemp.join(':').trim();
    enumKey = EnumKeySetting.fromValue(
      strKey,
      fallback: EnumKeySetting.none,
    );

    if (enumKey == EnumKeySetting.none) continue;

    map[enumKey] = strValue;
  }

  return map;
}

String cleanParam(String value) {
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

void msgIfNotNameClass(String className, FLILogger logger) {
  if (className.isEmpty) {
    logger
      ..info('\n')
      ..error('TurnGen did not define the name of the class')
      ..info('\n');
    exit(0);
  }
}

void msgIfNodEnd(String contentFile, FLILogger logger) {
  if (!contentFile.contains(RegExp(r'\/\/\s+end'))) {
    logger
      ..info('')
      ..info('***')
      ..info('put a comment (// end ) where to start generating')
      ..info('***')
      ..info('');

    exit(0);
  }
}

EnumTypeVarable autoUpdateType(
  EnumTypeVarable typeEnum,
  String typeVar,
  FLILogger logger,
) {
  if (typeVar.contains(RegExp(r'List<.*(e|E)num.*\?>'))) {
    // ignore: parameter_assignments
    typeEnum = EnumTypeVarable.list_enum_null;
    msgAnotherType(logger, typeEnum, typeVar);
  } else if (typeVar.contains(RegExp(r'List<.*(e|E)num(\w+|)>'))) {
    // ignore: parameter_assignments
    typeEnum = EnumTypeVarable.list_enum;
    msgAnotherType(logger, typeEnum, typeVar);
  } else if (typeVar.contains(RegExp(r'List<.*\?>'))) {
    // ignore: parameter_assignments
    typeEnum = EnumTypeVarable.list_data_null;
    msgAnotherType(logger, typeEnum, typeVar);
  } else if (typeVar.contains(RegExp('List<.*>'))) {
    // ignore: parameter_assignments
    typeEnum = EnumTypeVarable.list_data;
    msgAnotherType(logger, typeEnum, typeVar);
  } else if (typeVar.contains(RegExp('[eE][nN][uU][mM]')) ||
      typeVar.contains('ThemeMode')) {
    // ignore: parameter_assignments
    typeEnum = EnumTypeVarable.enum_;
    msgAnotherType(logger, typeEnum, typeVar);
  } else {
    // ignore: parameter_assignments
    typeEnum = EnumTypeVarable.data;
    msgAnotherType(logger, typeEnum, typeVar);
  }

  return typeEnum;
}

void msgAnotherType(
  FLILogger logger,
  EnumTypeVarable typeEnum,
  String typeVar,
) {
  logger
    ..info('')
    ..info('-- INFO --')
    ..info('TurnGen did not define a variable type for `$typeVar`')
    ..info('Type was assigned: `${typeEnum.value}`');
}

void msgErrorParsingVarable(String varable, FLILogger logger) {
  logger
    ..info('\n')
    ..error('check the variable - `$varable`')
    ..info('\n');
  exit(0);
}

void msgErrorParsingFinalVarable(FLILogger logger) {
  logger
    ..info('\n')
    ..error('final - must be before each variable')
    ..info('\n');
  exit(0);
}

void msgTitleAnotherType(
  FLILogger logger,
) {
  logger
    ..info('')
    ..info('TurnGen will try to determine the type of variable')
    ..info(
      'If the type is not defined correctly, specify it this way:',
    )
    ..info(
      'Example: /* type: `enum` | `data` | `List<data>` | `List<data?>` | `List<enum>` | `List<enum?>` */',
    );
}
