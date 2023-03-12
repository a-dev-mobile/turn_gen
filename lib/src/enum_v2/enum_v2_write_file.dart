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
  final nameFile = model.nameFile;
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
/* ******************************* */

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
    final value = e.valueEnum;
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
    final value = e.valueEnum;
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
  /// {@macro $nameFile}
  const $nameClass(this.$nameValue);
  final $typeStr $nameValue;
''');

/* ****************************** */
/* ****************************** */
  final getValuesSb = StringBuffer();

  getValuesSb.write('''
  static List<$typeStr> getValues() => LocaleEnum.values.map((e) => e.value).toList();
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

  newContent.write('''
// ignore_for_file: avoid-non-null-assertion

enum $nameClass with Comparable<$nameClass>  {
$paramSb
$constructorSb
// end

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
$maybeMapValueCommonSb
$maybeMapNullCommonSb
$maybeMapNullValueCommonSb
$getValuesSb
$compareSToStringb


}
''');

  // final _ = file.writeAsString(newContent.toString());
  final _ = File('F:/DEV/FLUTTER/project/MY_GITHUB/turn_gen/test/enum_v2.dart')
      .writeAsString(newContent.toString());
}

String _getFromValue({
  required EnumV2CommonModel model,
  required StringBuffer fromValueString,
  required StringBuffer fromValueInt,
  required StringBuffer fromValueDouble,
}) {
  switch (model.typeEnum) {
    case EnumTypeVarable.string_:
      return fromValueString.toString();
    case EnumTypeVarable.int_:
      return fromValueInt.toString();
    case EnumTypeVarable.double_:
      return fromValueDouble.toString();

    case EnumTypeVarable.enum_:

    case EnumTypeVarable.bool_:

    case EnumTypeVarable.num_:

    case EnumTypeVarable.list_:

    case EnumTypeVarable.list_bool_:

    case EnumTypeVarable.list_other:

    case EnumTypeVarable.list_int_:

    case EnumTypeVarable.list_string_:

    case EnumTypeVarable.list_double_:

    case EnumTypeVarable.list_bool_null:

    case EnumTypeVarable.list_int_null:

    case EnumTypeVarable.list_string_null:

    case EnumTypeVarable.list_double_null:

    case EnumTypeVarable.list_dynamic_:

    case EnumTypeVarable.list_map_int_string_:

    case EnumTypeVarable.list_map_int_string_null:

    case EnumTypeVarable.list_map_int_dynamic_:

    case EnumTypeVarable.list_map_string_dynamic_:

    case EnumTypeVarable.set_:

    case EnumTypeVarable.set_string:

    case EnumTypeVarable.set_string_null:

    case EnumTypeVarable.set_int:

    case EnumTypeVarable.set_int_null:

    case EnumTypeVarable.set_bool:

    case EnumTypeVarable.set_bool_null:

    case EnumTypeVarable.set_double:

    case EnumTypeVarable.set_double_null:

    case EnumTypeVarable.map_:

    case EnumTypeVarable.map_string_dynamic_:

    case EnumTypeVarable.map_string_bool:

    case EnumTypeVarable.map_string_int:

    case EnumTypeVarable.map_string_string:

    case EnumTypeVarable.map_string_double_:

    case EnumTypeVarable.map_string_bool_null:

    case EnumTypeVarable.map_string_int_null:

    case EnumTypeVarable.map_string_string_null:

    case EnumTypeVarable.map_string_double_null:

    case EnumTypeVarable.map_int_string:

    case EnumTypeVarable.map_int_string_null:

    case EnumTypeVarable.map_int_double:

    case EnumTypeVarable.map_int_double_null:

    case EnumTypeVarable.map_int_bool:

    case EnumTypeVarable.map_int_bool_null:

    case EnumTypeVarable.map_int_dynamic_:

    case EnumTypeVarable.date_time:

    case EnumTypeVarable.map_dynamic_dynamic_:

    case EnumTypeVarable.data:

    case EnumTypeVarable.list_data:

    case EnumTypeVarable.list_data_null:

    case EnumTypeVarable.null_:

    case EnumTypeVarable.none:
      return '// INFO: method fromValue for ${model.typeEnum.value} is not supported yet\n';
  }
}

/// {@template enum_v2_write_file}
/// EnumV2WriteFile enumeration
/// {@endtemplate}
enum EnumV2WriteFile with Comparable<EnumV2WriteFile> {
  /// a
  a('a'),

  /// b
  b('b'),

  /// c
  c('c');

  /// {@macro enum_v2_write_file}
  const EnumV2WriteFile(this.value);

  /// Creates a new instance of [EnumV2WriteFile] from a given string.
  static EnumV2WriteFile fromValue(String? value, {EnumV2WriteFile? fallback}) {
    switch (value) {
      case 'a':
        return a;
      case 'b':
        return b;
      case 'c':
        return c;
      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Value of the enum
  final String value;

  /// Pattern matching
  T map<T>({
    required T Function() a,
    required T Function() b,
    required T Function() c,
  }) {
    switch (this) {
      case EnumV2WriteFile.a:
        return a();
      case EnumV2WriteFile.b:
        return b();
      case EnumV2WriteFile.c:
        return c();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? a,
    T Function()? b,
    T Function()? c,
  }) =>
      map<T>(
        a: a ?? orElse,
        b: b ?? orElse,
        c: c ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? a,
    T Function()? b,
    T Function()? c,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        a: a,
        b: b,
        c: c,
      );

  @override
  int compareTo(EnumV2WriteFile other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
