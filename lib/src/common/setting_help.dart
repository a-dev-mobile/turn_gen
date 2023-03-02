// ignore_for_file: prefer-static-class
import 'dart:io';

import 'package:turn_gen/src/src.dart';

Map<EnumKeySetting, String> getMapSettingVarable(String content) {
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
    strValue = splitTemp.last.trim();
    enumKey = EnumKeySetting.fromValue(
      strKey,
      fallback: EnumKeySetting.none,
    );

    if (enumKey == EnumKeySetting.none) continue;

    map[enumKey] = strValue;
  }

  return map;
}

void msgIfNodEnd(String contentFile, FLILogger logger) {
  if (!contentFile.contains(RegExp(r'(\/\/\s+end)'))) {
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
    EnumTypeVarable typeEnum, String typeVar, FLILogger logger,) {

    if (typeVar.contains(RegExp(r'^List<.*\?>'))) {
      // ignore: parameter_assignments
      typeEnum = EnumTypeVarable.list_data_null;
      msgAnotherType(logger, typeEnum, typeVar);
    } else if (typeVar.contains(RegExp('^List<.*>'))) {
      // ignore: parameter_assignments
      typeEnum = EnumTypeVarable.list_data;
      msgAnotherType(logger, typeEnum, typeVar);
    } else if (typeVar.contains(RegExp(r'(|\w)(e|E)num\w'))) {
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
    ..info('Type was assigned: `${typeEnum.value}`')
    ..info('')
    ..info('To specify another, use a comment:')
    ..info(
      'Example: /* type: `enum` or `data` or `List<data>` or `List<data?>` */ >>> for the variable: `$typeVar`',
    );
}
