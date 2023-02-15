import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:turn_gen/constants.dart';
import 'package:turn_gen/logger.dart';
import 'package:turn_gen/utils.dart';

/* 
генерируется в одном файле 
fromValue
T map<T>
T maybeMap<T>
T? maybeMapOrNull<T>

в отдельном файле должен указать enum со значениями по умолчанию

например без конструктора

enum LocaleEnum {
  ru('ru_RU'),
  en('en_US'),
}

или с конструктором

enum LocaleEnum {
  ru('ru_RU'),
  en('en_US');

  const LocaleEnum(this.value);

  final String value;
}

переносы должны быть указаны как >>>  LF
 */

// ignore: prefer-static-class
Future<void> runEnumInt({
  required String path,
  required FLILogger logger,
}) async {
  final contentFile = await UtilsString.readFile(path: path);

  if (contentFile.contains('GENERATED CODE')) {
    logger.info('Файл $path \nуже имеет генерированные данные');

    return;
  }

  final enumContent = UtilsString.replaceToEmpty(
    text: UtilsRegex.getTextRegexLastMatch(
      content: contentFile,
      regex: r'enum\s+\w+\s+{[\s\S]+?}',
    ),
    replaceable: [
      '\n',
      '  ',
    ],
  );

  final enumHeader = UtilsRegex.getTextRegexLastMatch(
    content: enumContent,
    regex: r'enum\s+\w+\s+{',
  );

  final enumName = UtilsString.replaceToEmpty(
    text: enumHeader,
    replaceable: [
      'enum',
      ' ',
      '{',
    ],
  );

  final enumBrackets = UtilsString.replaceToEmpty(
    text: enumContent,
    replaceable: [
      enumHeader,
      '}',
    ],
  );
  var enumBracketsWithoutFinalAndConst = enumBrackets;

  if (enumBrackets.contains('const') && enumBrackets.contains('final')) {
    enumBracketsWithoutFinalAndConst = UtilsString.replaceToEmpty(
      text: enumBrackets,
      replaceable: [
        UtilsRegex.getTextRegexLastMatch(
          content: enumContent,
          regex: r'const[\s\S]+?;',
        ),
        UtilsRegex.getTextRegexLastMatch(
          content: enumContent,
          regex: r'final[\s\S]+?;',
        ),
      ],
    );
  }
  final listItemValue = UtilsRegex.getTextRegexListMatch(
    content: enumBracketsWithoutFinalAndConst,
    regex: r'\([\s\S]+?\)',
  );

  final listItemName = UtilsRegex.getTextRegexListMatch(
    content: enumBracketsWithoutFinalAndConst,
    regex: r'\w+(\s+|)\(',
  );
  var key = '';
  var value = '';
  final map = <String, String>{};

  for (var i = 0; i < listItemName.length; i++) {
    key = UtilsString.replaceToEmpty(
      text: listItemName[i],
      replaceable: [
        '(',
      ],
    );
    value = UtilsString.replaceToEmpty(
      text: listItemValue[i],
      replaceable: [
        '(',
        ')',
        "'",
        '"',
      ],
    );
    map[key] = value;
  }

  final constructor = StringBuffer();
  final fromValue = StringBuffer();

  /// Pattern matching
  final mapStart = StringBuffer();
  final mapEnd = StringBuffer();
  final maybeMapStart = StringBuffer();
  final maybeMapEnd = StringBuffer();
  final maybeMapOrNullStart = StringBuffer();
  final maybeMapOrNullEnd = StringBuffer();
  var lastSymbolArg = '';
  map.forEach((k, v) {
    {
      lastSymbolArg = k == map.keys.last ? ';' : ',';
      constructor.write('''
  $k($v)$lastSymbolArg
''');
      fromValue.write('''
      case $v:
        return $k;
''');

      mapStart.write('''
    required T Function() $k,
''');

      mapEnd.write('''
      case $enumName.$k:
        return $k();     
''');
      maybeMapStart.write('''
    T Function()? $k,
''');

      maybeMapEnd.write('''
      $k: $k ?? orElse,     
''');

      maybeMapOrNullStart.write('''
    T Function()? $k,
''');

      maybeMapOrNullEnd.write('''
        $k: $k,  
''');
    }
  });

  final file = File(path);

final _ =  await file.writeAsString('''
  // ignore_for_file:no-magic-number, constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
  /*
  $contentFile
  */
  
${ConstConsole.GEN_MSG}

enum $enumName with Comparable<$enumName> { 
$constructor
  const $enumName(this.value);

  final int value;

  static $enumName fromValue(
    int? value, {
    $enumName? fallback,
  }) {
    switch (value) {
$fromValue
      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
$mapStart
  }) {
    switch (this) {
$mapEnd
    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
$maybeMapStart
  }) =>
      map<T>(
$maybeMapEnd
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
$maybeMapOrNullStart
  }) =>
      maybeMap<T?>(
        orElse: () => null,
$maybeMapOrNullEnd       
      );

  @override
  int compareTo($enumName other) => index.compareTo(other.index);

  @override
  String toString() => value.toString();
   }\n''');

  logger
    ..info('***')
    ..info('✓ Successfully generated extra features for enum with int value')
    ..info('***');
}
