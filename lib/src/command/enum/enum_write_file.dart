// ignore_for_file: cascade_invocations

import 'dart:io';

import 'package:turn_gen/src/src.dart';

bool _isShowComment = false;
// ignore: prefer-static-class
void enumWriteToFile(
  FLILogger logger,
  File file,
  EnumCommonModel model,
) {
  final newContent = StringBuffer();
  final nameClass = model.nameClass;
  // final nameFile = model.nameFile;

  final typeStrFirst = model.listParam.first.enumTypeVarable.value;

  final listParam = model.listParam;

  _isShowComment = model.isShowComment;
/* ****************************** */
  final paramSb = StringBuffer();
  for (final e in model.listItem) {
    final name = e.nameEnum;
    final value = e.valueEnum;
    paramSb.write('  $name($value)');
// Check if this is the last iteration
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ';\n';
    paramSb.write(lastSymbol);
  }

/* ****************************** */
/* ****************************** */
  final fromValueSb = StringBuffer();
  final fromValueOrNullSb = StringBuffer();

/* ****************************** */

  for (final l in listParam) {
    final fromValueSbSwitch = StringBuffer();
    final fromValueOrNullSwitch = StringBuffer();
    final nameValue = l.name;
    final typeEnum = l.enumTypeVarable;
    final typeStr = typeEnum.value;
    // for double other value
    final switchVar = typeEnum.maybeMapValue(
      orElse: nameValue,
      double_: '$nameValue?.toString()',
      num_: '$nameValue?.toString()',
    );

    for (var i = 0; i < l.listValue.length; i++) {
      final valueRaw = l.listValue[i];
      // for double other value
// для значений с плавающей точкой используем преобразование в строку
      final valueFormat = typeEnum.maybeMapValue(
        orElse: valueRaw,
        num_: "'$valueRaw'",
        double_: "'$valueRaw'",
      );

      fromValueSbSwitch.write('case $valueFormat:\n');
      fromValueOrNullSwitch.write('case $valueFormat:\n');

      fromValueSbSwitch.write('return ${model.listItem[i].nameEnum}');
      fromValueOrNullSwitch.write('return ${model.listItem[i].nameEnum}');

      var lastSymbol = ';\n';
      if (valueRaw == l.listValue.last) lastSymbol = ';';

      fromValueSbSwitch.write(lastSymbol);
      fromValueOrNullSwitch.write(lastSymbol);
    }
/* ******************************* */
    final typeStrUpdate =
        typeEnum.maybeMapValue(orElse: '$typeStr?', dynamic_: typeStr);

    fromValueSb.write('''
  static $nameClass from${nameValue.toTitleCase()}($typeStrUpdate $nameValue, {$nameClass? fallback,}) {
    switch ($switchVar) {
$fromValueSbSwitch
      default:
        return fallback ?? (throw ArgumentError.value(
          $nameValue, '$nameValue', 'Value not found in $nameClass',));
    }
  }
''');
// копия чтобы вернула null
    fromValueOrNullSb.write('''
  static $nameClass? from${nameValue.toTitleCase()}OrNull($typeStrUpdate $nameValue,) {
    switch ($switchVar) {
$fromValueOrNullSwitch
      default:
        return null;
    }
  }
''');

    if (typeEnum.list_string_ || typeEnum.list_string_null) {
      fromValueSb.clear();
      fromValueOrNullSb.clear();

      fromValueSb.write('''

  static $nameClass from${nameValue.toTitleCase()}(
    String? $nameValue, {
    $nameClass? fallback,
  }) {
    for (final enumValue in $nameClass.values) {
      if (enumValue.$nameValue.contains($nameValue)) {
        return enumValue;
      }
    }

    return fallback ??
        (throw ArgumentError.value(
          $nameValue,
          '$nameClass',
          'Value not found in $nameClass',
        ));
  }

''');

      fromValueOrNullSb.write('''

  static $nameClass? from${nameValue.toTitleCase()}OrNull(
    String? $nameValue,) {
    for (final enumValue in $nameClass.values) {
      if (enumValue.$nameValue.contains($nameValue)) {
        return enumValue;
      }
    }

    return null;
  }

''');
    }
  }

/* ****************************** */

  final mapCommonSb = StringBuffer();
  final map1Sb = StringBuffer();
  final map2Sb = StringBuffer();
  for (final e in model.listItem) {
    final name = e.nameEnum;
    map1Sb.write('    required T Function() $name');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    map1Sb.write(lastSymbol);
  }

  for (final e in model.listItem) {
    final name = e.nameEnum;
    // final value = e.valueEnum;
    map2Sb.write('      case $nameClass.$name:\n');
    map2Sb.write('        return $name()');
    var lastSymbol = ';\n';
    if (e == model.listItem.last) lastSymbol = ';';
    map2Sb.write(lastSymbol);
  }
  mapCommonSb.write('''
  T map<T>({
$map1Sb
  }) {
    switch (this) {
$map2Sb
    }
  }
''');

/* ****************************** */
/* ****************************** */

  final mapValuesCommonSb = StringBuffer();
  final mapValues1Sb = StringBuffer();
  final mapValues2Sb = StringBuffer();
  for (final e in model.listItem) {
    final name = e.nameEnum;
    mapValues1Sb.write('    required T $name');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    mapValues1Sb.write(lastSymbol);
  }

  for (final e in model.listItem) {
    final name = e.nameEnum;
    // final value = e.valueEnum;
    mapValues2Sb.write('      case $nameClass.$name:\n');
    mapValues2Sb.write('        return $name');
    var lastSymbol = ';\n';
    if (e == model.listItem.last) lastSymbol = ';';
    mapValues2Sb.write(lastSymbol);
  }
  mapValuesCommonSb.write('''
  T mapValue<T>({
$mapValues1Sb
  }) {
    switch (this) {
$mapValues2Sb
    }
  }
''');

/* ****************************** */
/* ****************************** */
/* ****************************** */

  final maybeMapCommonSb = StringBuffer();
  final maybeMap1Sb = StringBuffer();
  final maybeMap2Sb = StringBuffer();
  for (final e in model.listItem) {
    final name = e.nameEnum;
    maybeMap1Sb.write('    T Function()? $name');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    maybeMap1Sb.write(lastSymbol);
  }

  for (final e in model.listItem) {
    final name = e.nameEnum;
    maybeMap2Sb.write('      $name: $name ?? orElse');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    maybeMap2Sb.write(lastSymbol);
  }
  maybeMapCommonSb.write('''
  T maybeMap<T>({
    required T Function() orElse,
$maybeMap1Sb
  }) =>
      map<T>(
$maybeMap2Sb
      );
''');
/* ****************************** */
/* ****************************** */

  final maybeMapValueCommonSb = StringBuffer();
  final maybeMapValueSb1 = StringBuffer();
  final maybeMapValueSb2 = StringBuffer();
  for (final e in model.listItem) {
    final name = e.nameEnum;
    maybeMapValueSb1.write('    T? $name');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    maybeMapValueSb1.write(lastSymbol);
  }

  for (final e in model.listItem) {
    final name = e.nameEnum;
    maybeMapValueSb2.write('      $name: $name ?? orElse');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    maybeMapValueSb2.write(lastSymbol);
  }
  maybeMapValueCommonSb.write('''
  T maybeMapValue<T>({
    required T orElse,
$maybeMapValueSb1
  }) =>
      mapValue<T>(
$maybeMapValueSb2
      );
''');
/* ****************************** */
  final maybeMapNullCommonSb = StringBuffer();
  final maybeMapNullSb1 = StringBuffer();
  final maybeMapNullSb2 = StringBuffer();
  for (final e in model.listItem) {
    final name = e.nameEnum;
    maybeMapNullSb1.write('    T Function()? $name');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    maybeMapNullSb1.write(lastSymbol);
  }

  for (final e in model.listItem) {
    final name = e.nameEnum;
    maybeMapNullSb2.write('        $name: $name');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    maybeMapNullSb2.write(lastSymbol);
  }
  maybeMapNullCommonSb.write('''
  T? maybeMapOrNull<T>({
$maybeMapNullSb1
  }) =>
      maybeMap<T?>(
        orElse: () => null,
$maybeMapNullSb2
      );
''');

/* ****************************** */
/* ****************************** */
  final extension = StringBuffer();
  extension.write('''
extension \$$nameClass on $nameClass {
''');

  for (final e in model.listItem) {
    var name = e.nameEnum;
    if (name.contains('_')) {
      name = 'is_$name';
    } else {
      name = 'is${name.toTitleCase()}';
    }

    extension.write(
      'bool get $name => this == $nameClass.${e.nameEnum};\n',
    );
  }
  extension.write('}');
/* ****************************** */
/* ****************************** */
  final maybeMapNullValueCommonSb = StringBuffer();
  final maybeMapNullValueSb1 = StringBuffer();
  final maybeMapNullValueSb2 = StringBuffer();
  for (final e in model.listItem) {
    final name = e.nameEnum;
    maybeMapNullValueSb1.write('    T? $name');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    maybeMapNullValueSb1.write(lastSymbol);
  }

  for (final e in model.listItem) {
    final name = e.nameEnum;
    maybeMapNullValueSb2.write('        $name: $name');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    maybeMapNullValueSb2.write(lastSymbol);
  }
  maybeMapNullValueCommonSb.write('''
  T? maybeMapOrNullValue<T>({
$maybeMapNullValueSb1
  }) =>
      maybeMapValue<T?>(
        orElse: null,
$maybeMapNullValueSb2
      );
''');

/* ****************************** */
/* ****************************** */
  final constructorSb = StringBuffer();
  final nameValueFirst = model.listParam.first.name;
  constructorSb.write('''
  const $nameClass(this.$nameValueFirst);
  final $typeStrFirst $nameValueFirst;
''');

/* ****************************** */
/* ****************************** */
  final getValuesSb = StringBuffer();

  for (final v in model.listParam) {
    getValuesSb.write('''
  static List<${v.enumTypeVarable.value}> getList${v.name.toTitleCase()}() => $nameClass.values.map((e) => e.${v.name}).toList();

''');
  }

/* ****************************** */
/* ****************************** */
  final compareSToStringb = StringBuffer();

  compareSToStringb.write('''
  @override
  int compareTo($nameClass other) => index.compareTo(other.index);

 

''');

  // @override
  // String toString() => '$nameClass.\$$nameValueFirst';
/* ****************************** */
/* ******************************* */

  final newHeader = 'enum $nameClass implements Comparable<$nameClass> {';
  var updateContentToEnd = '''
// turnGen
$newHeader

$paramSb
$constructorSb
// end''';
  if (!model.isDefault) {
    updateContentToEnd =
        model.contentToEnd.replaceAll(model.headerClass, newHeader);
  }

  newContent.write('''

$updateContentToEnd

${ConstConsole.GEN_MSG_START(EnumTypeRun.enum_)}
${_getComment('''
  /// Creates a new instance of [$nameClass] from a given $typeStrFirst value.
  ///
  /// If the given value matches one of the values defined in the [$nameClass] enumeration,
  /// a corresponding instance of [$nameClass] is returned.
  /// If the given value is null or does not match any of the enumeration values and a fallback
  /// value is not provided, an [ArgumentError] is thrown.
  ///
  /// The `fallback` parameter is an optional [$nameClass] value that will be returned if the
  /// given value does not match any of the enumeration values.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.fromValue('en', fallback: LocaleEnum.ru);
  /// print(locale); // Output: LocaleEnum.en(en)
  /// ```''')}
$fromValueSb
$fromValueOrNullSb
${_getComment('''
  /// Calls the appropriate function based on the value of this [$nameClass] instance.
  ///
  /// This method returns the result of calling the appropriate function for the value of the current [$nameClass] instance.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum ru = LocaleEnum.ru;
  /// String result = ru.map(
  ///   ru: () => 'Привет!',
  ///   en: () => 'Hello!',
  /// );
  /// print(result); // Output: 'Привет!'
  /// ```''')}
$mapCommonSb
${_getComment('''
  /// Calls the appropriate function based on the value of this [$nameClass] instance.
  ///
  /// This method returns the appropriate value for the value of the current [$nameClass] instance.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum en = LocaleEnum.en;
  /// String result = en.mapValue(
  ///   ru: 'Привет!',
  ///   en: 'Hello!',
  /// );
  /// print(result); // Output: 'Hello!'
  /// ```''')}
$mapValuesCommonSb
${_getComment('''
  /// Calls the appropriate function based on the value of this [$nameClass] instance.
  ///
  /// If the corresponding function for the value of this [$nameClass] instance is not provided,
  /// the `orElse` function will be called instead.
  /// This method returns the value returned by the appropriate function for the value of this [$nameClass] instance.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum ru = LocaleEnum.ru;
  /// String result = ru.maybeMap<String>(
  ///   orElse: () => 'Unknown',
  ///   ru: () => 'Привет!',
  /// );
  /// print(result); // Output: 'Привет!'
  /// ```''')}
$maybeMapCommonSb
${_getComment('''
  /// Maps the value of this [$nameClass] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [$nameClass] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [$nameClass], the
  /// `orElse` parameter is returned from this method.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.en;
  /// String message = locale.maybeMapValue<String>(
  ///   orElse: 'Unknown locale',
  ///   ru: 'Привет!',
  ///   en: 'Hello!',
  /// );
  /// print(message); // Output: 'Hello!'
  /// ```''')}
$maybeMapValueCommonSb
${_getComment('''
  /// Maps the value of this [$nameClass] to a new value of type [T], using the given
  /// functions to replace each possible value of the enumeration.
  /// 
  /// The function that corresponds to the value of this
  /// [$nameClass] is called and its result is returned from this method.
  ///
  /// If no corresponding function is provided for the value of this [$nameClass], `null`
  /// is returned from this method.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.en;
  /// String? message = locale.maybeMapOrNull<String>(
  ///   en: () => 'Hello!',
  /// );
  /// print(message); // Output: 'Hello!'
  /// ```''')}
$maybeMapNullCommonSb
${_getComment('''
  /// Maps the value of this [$nameClass] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [$nameClass] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [$nameClass], `null`
  /// is returned from this method.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.en;
  /// String? message = locale.maybeMapOrNullValue<String>(
  ///   en: 'Hello!',
  /// );
  /// print(message); // Output: 'Hello!'
  /// ```''')}
$maybeMapNullValueCommonSb
${_getComment('''
  /// Returns a list of all possible values of this enumeration.
  ///
  /// The values are returned as a list of strings, representing the value of each
  /// enumeration value in the same order as they were declared in the enumeration.
  ///
  /// Example usage:
  /// ```dart
  /// List<String> values = LocaleEnum.getValues();
  /// print(values); // Output: ['ru', 'en']
  /// ```''')}
$getValuesSb
$compareSToStringb
}
$extension

''');

  final _ = file.writeAsString(newContent.toString());
  Terminal.runFormat(file.path);
  logger.info(ConstConsole.GEN_MSG_END(file.path));
}

String _getComment(String comment) {
  return _isShowComment ? comment : '';
}
