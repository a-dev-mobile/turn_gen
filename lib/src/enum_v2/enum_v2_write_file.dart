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
  final fromValueStringSb = StringBuffer();

  // ignore: cascade_invocations
  fromValueStringSb.write('''
  static $nameClass fromValue(String? value, {$nameClass? fallback}) {
    final valueMap = <String, $nameClass>{};

    for (final v in $nameClass.values) {
      final _ = valueMap.putIfAbsent(v.toString().toLowerCase(), () => v);
    }

    final lowercaseValue = value?.toLowerCase();
    final result = valueMap[lowercaseValue];

    if (result == null && fallback == null) {
      throw ArgumentError.value(
          value, 'value', 'Value not found in $nameClass',);
    }

    return result ?? fallback!;
  }

''');
/* ****************************** */
/* ****************************** */

/* ******************************* */

/* ****************************** */
  final fromValueCommonIntSb = StringBuffer();

  final fromValue1IntSb = StringBuffer();
  for (final e in model.listItem) {
    final name = e.nameEnum;
    final value = e.valueEnum;
    fromValue1IntSb.write('$value: $nameClass.$name');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    fromValue1IntSb.write(lastSymbol);
  }

  fromValueCommonIntSb.write('''
  static $nameClass fromValue(int value, {$nameClass? fallback}) {
    final valueMap = <int, LocaleEnum>{
      $fromValue1IntSb
    };

    if (valueMap.containsKey(value)) {
      return valueMap[value]!;
    } else if (fallback == null) {
      throw ArgumentError.value(
        value,
        'value',
        'Value not found in $nameClass',
      );
    } else {
      return fallback;
    }
  }
''');
/* ****************************** */
/* ****************************** */

  final mapCommonSb = StringBuffer();
  final map1Sb = StringBuffer();
  final map2Sb = StringBuffer();
  for (final e in model.listItem) {
    final name = e.nameEnum;
    map1Sb.write('    required T Function($nameClass value) $name');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    map1Sb.write(lastSymbol);
  }

  for (final e in model.listItem) {
    final name = e.nameEnum;
    map2Sb.write('      $nameClass.$name: $name');

    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    map2Sb.write(lastSymbol);
  }
  mapCommonSb.write('''
  T map<T>({
$map1Sb
  }) {
    final valueMap = {
$map2Sb
    };

    final result = valueMap[this];

    return result != null
        ? result(this)
        : throw ArgumentError.value(
            this,
            'value',
            'Value not found in $nameClass',
          );
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
    maybeMap1Sb.write('    T Function($nameClass value)? $name');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    maybeMap1Sb.write(lastSymbol);
  }

  for (final e in model.listItem) {
    final name = e.nameEnum;
    maybeMap2Sb.write('      $nameClass.$name: $name ?? orElse');
    var lastSymbol = ',\n';
    if (e == model.listItem.last) lastSymbol = ',';
    maybeMap2Sb.write(lastSymbol);
  }
  maybeMapCommonSb.write('''
  T maybeMap<T>({
    required T Function($nameClass value) orElse,
$maybeMap1Sb
  }) {
    final valueMap = <$nameClass, T Function($nameClass value)>{
$maybeMap2Sb
    };

    final result = valueMap[this];

    return result != null
        ? result(this)
        : throw ArgumentError.value(
            this,
            'value',
            'Value not found in $nameClass',
          );
  }
''');

/* ****************************** */
  final constructorSb = StringBuffer();

  constructorSb.write('''
  const $nameClass(this.$nameValue);
  final $typeStr $nameValue;
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
${_getFromValue(fromValueInt: fromValueCommonIntSb, fromValueString: fromValueStringSb, model: model)}
$mapCommonSb
$maybeMapCommonSb
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
}) {
  switch (model.typeEnum) {
    case EnumTypeVarable.string_:
      return fromValueString.toString();
    case EnumTypeVarable.int_:
      return fromValueInt.toString();

    case EnumTypeVarable.enum_:

    case EnumTypeVarable.bool_:

    case EnumTypeVarable.double_:

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
      return '// ERROR: method fromValue for ${model.typeEnum.value} is not supported yet\n';
  }
}
