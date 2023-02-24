import 'package:turn_gen/src/src.dart';

// ignore: prefer-static-class
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
