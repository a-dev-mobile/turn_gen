import 'dart:io';

import 'package:turn_gen/src/src.dart';

/* 
генерируется в одном файле 
fromValue
T map<T>
T maybeMap<T>
T? maybeMapOrNull<T>



в файле должен быть указан стандартный enum и все

переносы должны быть указаны как >>>  LF

например
  enum LocaleEnum { ru, en }


 */

// ignore: prefer-static-class
Future<void> runEnumDefault({
  required String path,
  required FLILogger logger,
}) async {
  final contentFile = await UtilsString.readFile(path: path);

  if (contentFile.contains('GENERATED CODE')) {
    logger.info('File $path \nalready has generated data');

    return;
  }

  final nameEnum = _findText(
    start: 'enum',
    end: '{',
    oldContent: contentFile,
  );

  final argEnum = _findText(
    start: nameEnum,
    end: '}',
    oldContent: contentFile,
  ).replaceAll('{', '').replaceAll(' ', '').replaceAll('\n', '').split(',');

  _badCode(argEnum);

  final constructor = StringBuffer();
  final fromValue = StringBuffer();

  /// Pattern matching
  final mapStart = StringBuffer();
  final mapEnd = StringBuffer();
  final mapConstStart = StringBuffer();
  final mapConstEnd = StringBuffer();
  final maybeMapStart = StringBuffer();
  final maybeMapEnd = StringBuffer();
  final maybeMapOrNullStart = StringBuffer();
  final maybeMapOrNullEnd = StringBuffer();
  var v = '';
  var lastSymbolArg = '';

  for (var i = 0; i < argEnum.length; i++) {
    v = argEnum[i];

    if (v == '\n' || v.isEmpty) continue;

    lastSymbolArg = v == argEnum.last ? ';' : ',';
    constructor.write('''
  $v('$v')$lastSymbolArg
''');
    fromValue.write('''
      case '$v':
        return $v;
''');

    mapStart.write('''
    required T Function() $v,
''');

    mapEnd.write('''
      case $nameEnum.$v:
        return $v();     
''');
    mapConstStart.write('''
    required T $v,
''');

    mapConstEnd.write('''
      case $nameEnum.$v:
        return $v;     
''');

    maybeMapStart.write('''
    T Function()? $v,
''');

    maybeMapEnd.write('''
      $v: $v ?? orElse,     
''');

    maybeMapOrNullStart.write('''
    T Function()? $v,
''');

    maybeMapOrNullEnd.write('''
        $v: $v,  
''');
  }

  final file = File(path);

  final _ = await file.writeAsString('''
  // ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
  /*
  $contentFile
  */
  
${ConstConsole.GEN_MSG_START}

enum $nameEnum with Comparable<$nameEnum> { 
$constructor
  const $nameEnum(this.value);

  final String value;

  static $nameEnum fromValue(
    String? value, {
    $nameEnum? fallback,
  }) {
    switch (value) {
$fromValue
      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }


  T map<T>({
$mapStart
  }) {
    switch (this) {
$mapEnd
    }
  }

  T mapConst<T>({
$mapConstStart
  }) {
    switch (this) {
$mapConstEnd
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
$maybeMapStart
  }) =>
      map<T>(
$maybeMapEnd
      );

  T? maybeMapOrNull<T>({
$maybeMapOrNullStart
  }) =>
      maybeMap<T?>(
        orElse: () => null,
$maybeMapOrNullEnd        
      );

  @override
  int compareTo($nameEnum other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }\n''');

  logger.info(ConstConsole.GEN_MSG_END);
}

void _badCode(List<String> argEnum) {
  if (argEnum.last.isEmpty) argEnum.removeLast();
  if (argEnum.last.isEmpty) argEnum.removeLast();
  if (argEnum.last.isEmpty) argEnum.removeLast();
}

String _findText({
  required String oldContent,
  required String start,
  required String end,
}) {
  final startIndex = oldContent.indexOf(start.trim());
  final endIndex = oldContent.indexOf(end.trim(), startIndex + start.length);

  return oldContent
      .substring(startIndex + start.length, endIndex)
      .replaceAll(' ', '');
}

Future<String> readFile({required File file}) async {
  try {
    // Read the file
    final contents = await file.readAsString();

    return contents;
  } catch (e) {
    return 'ERROR $e';
  }
}
