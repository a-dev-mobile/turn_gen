// ignore_for_file: cascade_invocations

part of 'run_enum_v2.dart';

// ignore: prefer-static-class
void enumV2WriteToFile(
  FLILogger logger,
  File file,
  EnumV2CommonModel model,
) {
  final newContent = StringBuffer();
  final nameClass = model.nameClass;
  // final nameFile = model.nameFile;
  final typeStr = model.typeEnum.value;
  final nameValue = model.nameValue;
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

/* ****************************** */
  final fromValueSb1 = StringBuffer();
  for (final e in model.listItem) {
    final name = e.nameEnum;
    final value = e.valueEnum;
    fromValueSb1.write('      case $value:\n');
    fromValueSb1.write('        return $name');
    var lastSymbol = ';\n';
    if (e == model.listItem.last) lastSymbol = ';';
    fromValueSb1.write(lastSymbol);
  }
/* ******************************* */

  fromValueSb.write('''
  static $nameClass fromValue($typeStr? value, {$nameClass? fallback}) {
    switch (value) {
$fromValueSb1
      default:
        return fallback ?? (throw ArgumentError.value(
          value, '', 'Value not found in $nameClass',));
    }
  }
''');
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

  constructorSb.write('''
  const $nameClass(this.$nameValue);
  final $typeStr $nameValue;
''');

/* ****************************** */
/* ****************************** */
  final getValuesSb = StringBuffer();

  getValuesSb.write('''
  static List<$typeStr> getValues() => $nameClass.values.map((e) => e.value).toList();
''');

/* ****************************** */
/* ****************************** */
  final compareSToStringb = StringBuffer();

  compareSToStringb.write('''
  @override
  int compareTo($nameClass other) => index.compareTo(other.index);

  @override
  String toString() => '$nameClass.\$name(\$${model.nameValue})';
''');

/* ****************************** */
/* ******************************* */

  final newHeader = 'enum $nameClass with Comparable<$nameClass>  {';
  var updateContentToEnd = '''
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

${ConstConsole.GEN_MSG_START}
  /// Creates a new instance of [$nameClass] from a given $typeStr value.
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
  /// ```
$fromValueSb

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
  /// ```
$mapCommonSb
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
  /// ```
$mapValuesCommonSb
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
  /// ```
$maybeMapCommonSb
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
  /// ```
$maybeMapValueCommonSb
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
  /// ```
$maybeMapNullCommonSb
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
  /// ```
$maybeMapNullValueCommonSb
  /// Returns a list of all possible values of this enumeration.
  ///
  /// The values are returned as a list of strings, representing the value of each
  /// enumeration value in the same order as they were declared in the enumeration.
  ///
  /// Example usage:
  /// ```dart
  /// List<String> values = LocaleEnum.getValues();
  /// print(values); // Output: ['ru', 'en']
  /// ```
$getValuesSb
$compareSToStringb


}
''');

  var _ = file.writeAsString(newContent.toString());
  _ = File('F:/DEV/FLUTTER/project/MY_GITHUB/turn_gen/test/enum_v2.dart')
      .writeAsString(newContent.toString());
}
