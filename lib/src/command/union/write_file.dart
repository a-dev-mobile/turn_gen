// ignore: prefer-static-class
import 'dart:io';

import 'package:turn_gen/src/src.dart';

// ignore: prefer-static-class
void writeToFileUnion(
  FLILogger logger,
  File file,
  UnionCommonModel model,
) {
  // находим настройки
  final noSetting = model.listSettingClass
      .firstWhere(
        (v) => v.keySetting == EnumKeySetting.no,
        orElse: SettingClassModel.new,
      )
      .listValueSetting;
  var isActiveToMap = !noSetting.contains(EnumSettingClass.toMap);
  var isActiveToJson = !noSetting.contains(EnumSettingClass.toJson);
  var isActiveFromMap = !noSetting.contains(EnumSettingClass.fromMap);
  var isActiveFromJson = !noSetting.contains(EnumSettingClass.fromJson);

  if (!isActiveToMap || !isActiveToJson) {
    isActiveToJson = false;
    isActiveToMap = false;
  }

  if (!isActiveFromMap || !isActiveFromJson) {
    isActiveFromJson = false;
    isActiveFromMap = false;
  }

  /* ****************************** */
  final sbAllParams = StringBuffer();
  for (final v in model.listParams) {
    sbAllParams.write('''
  $v
''');
  }
  /* ****************************** */
  final sbUnionTag = StringBuffer();
  final sbUnionGetterIsType = StringBuffer();
  final nameClass = model.nameClass;
  for (final v in model.listUnion) {
    final nameUnion = v.nameUnion;
    sbUnionTag.write('''
  ${v.nameUnion},
''');

    sbUnionGetterIsType.write('''
   bool get is${nameUnion.toCapitalized()} => _tag == ${nameClass}Tag.$nameUnion;
''');
  }
  /* ****************************** */

  final sbUnionClass = StringBuffer();
  for (final l in model.listUnion) {
    final unionName =
        l.nameUnion == ConstHelper.emptyUnionName ? '' : '.${l.nameUnion}';
    sbUnionClass.write('''
${l.comment}
  const ${model.nameClass}$unionName${l.paramStr}:
''');

    for (var i = 0; i < l.mapNameWithTag.length; i++) {
      final isLast = l.mapNameWithTag.length - 1 == i;
      final k = l.mapNameWithTag.keys.elementAt(i);
      final v = l.mapNameWithTag.values.elementAt(i);
      sbUnionClass.write('''
        $k = $v${isLast ? ';' : ','}
''');
    }
  }
  /* ****************************** */

  final sbWhere = StringBuffer();
  // ignore: cascade_invocations
  sbWhere.write('''
  T when<T>({
''');

  final sbCase = StringBuffer();
  for (final l in model.listUnion) {
    final sbParam = StringBuffer();
    final sbReturn = StringBuffer();
    for (var i = 0; i < l.listParameters.length; i++) {
      final p = l.listParameters[i];
      final lastText = l.listParameters.length - 1 == i ? ',' : ', ';

      final letterNull = p.isCanNull ? '?' : '';
      final letterNotNull = p.isCanNull ? '' : '!';
      sbParam.write('${p.typeStr}$letterNull ${p.name}$lastText');
      sbReturn.write('_${p.name}_${l.nameUnion}$letterNotNull$lastText');
    }

    sbWhere.write('''
    required T Function ($sbParam) ${l.nameUnion},
''');

    sbCase.write('''
      case ${model.nameClass}Tag.${l.nameUnion}:
        return ${l.nameUnion}($sbReturn);
''');
  }
  sbWhere.write('''
}) {
    switch (_tag) {
$sbCase    }
  }
''');

  /* ****************************** */
  // toMap
  /* ****************************** */

  final sbMap = StringBuffer();
  // ignore: cascade_invocations
  sbMap.write('''
  T map<T>({
''');

  final sbMapCase = StringBuffer();
  for (final l in model.listUnion) {
    final nameClassExtends = _getNameExtendsClass(model, l);

    final sbReturn = StringBuffer();
    for (var i = 0; i < l.listParameters.length; i++) {
      final p = l.listParameters[i];
      final lastText = l.listParameters.length - 1 == i ? ',' : ', ';

      final addIsNull = p.isCanNull ? '' : '!';

      sbReturn.write('_${p.name}_${l.nameUnion}$addIsNull$lastText');
    }

    sbMap.write('''
    required T Function($nameClassExtends v) ${l.nameUnion},
''');
    final constText = sbReturn.isEmpty ? 'const ' : '';
    sbMapCase.write('''
      case ${model.nameClass}Tag.${l.nameUnion}:
        return ${l.nameUnion}($constText$nameClassExtends($sbReturn),);
''');
  }
  sbMap.write('''
  }) {
    switch (_tag) {
$sbMapCase    }
  }
''');

  /* ****************************** */
  // map or null
  /* ****************************** */

  final sbMapOrNull = StringBuffer();
  // ignore: cascade_invocations
  sbMapOrNull.write('''
  T? mapOrNull<T>({
''');

  final sbMapOrNullCase = StringBuffer();
  for (final l in model.listUnion) {
    final nameClassExtends = _getNameExtendsClass(model, l);

    final sbReturn = StringBuffer();
    for (var i = 0; i < l.listParameters.length; i++) {
      final p = l.listParameters[i];
      final lastText = l.listParameters.length - 1 == i ? ',' : ', ';
      final addIsNull = p.isCanNull ? '' : '!';

      sbReturn.write('_${p.name}_${l.nameUnion}$addIsNull$lastText');
    }

    sbMapOrNull.write('''
    T? Function($nameClassExtends v)? ${l.nameUnion},
''');
    final constText = sbReturn.isEmpty ? 'const ' : '';
    sbMapOrNullCase.write('''
      case ${model.nameClass}Tag.${l.nameUnion}:
        return ${l.nameUnion}?.call($constText$nameClassExtends($sbReturn),);
''');
  }
  sbMapOrNull.write('''
  }) {
    switch (_tag) {
$sbMapOrNullCase    }
  }
''');
  /* ****************************** */
  // maybeMap
  /* ****************************** */

  final sbMaybeMap = StringBuffer();
  // ignore: cascade_invocations
  sbMaybeMap.write('''
  T maybeMap<T>({
       required T Function() orElse,
''');

  final sbMaybeMapCase = StringBuffer();
  for (final l in model.listUnion) {
    final nameClassExtends = _getNameExtendsClass(model, l);
    final sbReturn = StringBuffer();
    for (var i = 0; i < l.listParameters.length; i++) {
      final p = l.listParameters[i];
      final lastText = l.listParameters.length - 1 == i ? ',' : ', ';

      final letterNotNull = p.isCanNull ? '' : '!';

      sbReturn.write('_${p.name}_${l.nameUnion}$letterNotNull$lastText');
    }

    sbMaybeMap.write('''
    T Function($nameClassExtends v)? ${l.nameUnion},
''');
    final constText = sbReturn.isEmpty ? 'const ' : '';
    sbMaybeMapCase.write('''
      case ${model.nameClass}Tag.${l.nameUnion}:
        if(${l.nameUnion} != null) { return ${l.nameUnion}($constText$nameClassExtends($sbReturn),); }
        return orElse();
''');
  }

  sbMaybeMap.write('''
  }) {
    switch (_tag) {
$sbMaybeMapCase    }
  }
''');
/* ****************************** */
  // maybeMapOrNull
  /* ****************************** */

  final sbCommonMaybeMapOrNull = StringBuffer();
  // ignore: cascade_invocations
  sbCommonMaybeMapOrNull.write('''
  T? maybeMapOrNull<T>({
''');

  final sbMaybeMapOrNull1 = StringBuffer();
  // final sbMaybeMapOrNull2 = StringBuffer();
  for (final l in model.listUnion) {
    final nameClassExtends = _getNameExtendsClass(model, l);
    final sbReturn = StringBuffer();
    sbCommonMaybeMapOrNull.write('''
    T? Function($nameClassExtends v)? ${l.nameUnion},
''');
    for (var i = 0; i < l.listParameters.length; i++) {
      final p = l.listParameters[i];
      final lastText = l.listParameters.length - 1 == i ? ',' : ', ';

      final addIsNull = p.isCanNull ? '' : '!';
      sbReturn.write('_${p.name}_${l.nameUnion}$addIsNull$lastText');
    }

    final constText = sbReturn.isEmpty ? 'const ' : '';
    sbMaybeMapOrNull1.write('''
      case ${model.nameClass}Tag.${l.nameUnion}:
        if(${l.nameUnion} != null) { return ${l.nameUnion}($constText$nameClassExtends($sbReturn),); }
        return null;
''');
  }

  sbCommonMaybeMapOrNull.write('''
  }) {
    switch (_tag) {
$sbMaybeMapOrNull1    }
  }
''');

  /* ****************************** */
  // toString
  /* ****************************** */
  final sbToString = StringBuffer();
  // ignore: cascade_invocations
  sbToString.write('''
  @override
  String toString() {
    switch (_tag) {
''');

  for (final l in model.listUnion) {
    final unionName =
        l.nameUnion == ConstHelper.emptyUnionName ? '' : '.${l.nameUnion}';
    sbToString.write('''

      case ${model.nameClass}Tag.${l.nameUnion}:
        return '${model.nameClass}$unionName(''');
    final length = l.listParameters.length;

    if (length == 0) sbToString.write(")';");

    for (var i = 0; i < length; i++) {
      final p = l.listParameters[i];
      final lastText = i + 1 == length ? ")';" : ', ';

      sbToString.write('${p.name}: \$_${p.name}_${l.nameUnion}$lastText');
    }
  }
  sbToString.write('''
  
  }
}''');

  /* ****************************** */
  //      Hash
  /* ****************************** */
  final sbHashTemp = StringBuffer();
  // ignore: cascade_invocations
  sbHashTemp.write('''
  @override
  int get hashCode {
    switch (_tag) {
''');

  for (final l in model.listUnion) {
    sbHashTemp.write('''

      case ${model.nameClass}Tag.${l.nameUnion}:
        return Object.hashAll([runtimeType,''');
    final length = l.listParameters.length;

    // if (length == 0) sbHash.write(']);');

    for (var i = 0; i < length; i++) {
      final p = l.listParameters[i];
      sbHashTemp.write(
        getHashCode(p.typeEnum, '_${p.name}_${l.nameUnion}')
            .replaceAll(RegExp(r'\s+'), ' '),
      );
    }
    sbHashTemp.write('''],);''');
  }
  sbHashTemp.write('''
  
  }
}''');

  final sbHash = StringBuffer(
    sbHashTemp
        .toString()
        .replaceAll(',]);', ']);')
        .replaceAll(', ]);', ']);')
        .replaceAll(',)]);', ')]);'),
  );

  /* ****************************** */
  //      Equals
  /* ****************************** */
  final sbEqualsTemp = StringBuffer();
  // ignore: cascade_invocations
  sbEqualsTemp.write('''
  @override
  bool operator ==(dynamic other) {
    switch (_tag) {
''');

  for (final l in model.listUnion) {
    final lastText = l.listParameters.isEmpty ? ');' : ' && ';
    sbEqualsTemp.write('''

      case ${model.nameClass}Tag.${l.nameUnion}:
        return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ${model.nameClass} $lastText 
''');
    final length = l.listParameters.length;

    // if (length == 0) sbHash.write(']);');

    // lastTextTemp = length == 0 ? ');' : '';
    for (var i = 0; i < length; i++) {
      final isLast = i + 1 == length;
      final p = l.listParameters[i];
      //  sbEqualsTemp.write(' && ');

      sbEqualsTemp.write(
        Equals.get(
          type: p.typeEnum,
          nameVar: '_${p.name}_${l.nameUnion}',
          isLast: isLast,
        ).replaceAll(RegExp(r'\s+'), ' '),
      );
    }
  }
  sbEqualsTemp.write('''
  
  }
}''');

  final sbEquals = StringBuffer(
    sbEqualsTemp.toString(),
  );

  /* ****************************** */
  final sbFromJson = StringBuffer();

  // если у нас есть один параметр и он лист в любом union
  //то добавляем метод fromlist
  if (model.isHaveOnlyList) {
    sbFromJson.write('''
  factory $nameClass.fromJson(dynamic source, [${model.nameClass}Tag? tag,]) {
    if (source is String && source.isEmpty) {
      throw ArgumentError('Source string is empty');
    }
    final raw = source is String ? json.decode(source) : source;

    if (raw is Map<String, dynamic>) {
      return $nameClass.fromMap(raw, tag);
    } else if (raw is List<dynamic>) {
          if (tag == null) {
        throw ArgumentError.notNull('tag');
      }

      return $nameClass.fromList(raw, tag);
    }

    return throw ArgumentError('Invalid type: \$raw');
  }


''');
  } else {
    sbFromJson.write('''

 factory $nameClass.fromJson(String source, [${model.nameClass}Tag? tag,])  => $nameClass.fromMap(
        json.decode(source) as Map<String, dynamic>, tag,
      );

''');
  }

  /* ****************************** */

  final sbExtendsClass = StringBuffer();

  final sbFromMap = StringBuffer();
  final sbFromMap_1 = StringBuffer();
  final sbToMap = StringBuffer();
  final sbToMap_1 = StringBuffer();

  final sbFromList = StringBuffer();
  final sbFromList_1 = StringBuffer();

  for (final l in model.listUnion) {
    final nameClass = _getNameExtendsClass(model, l);
    final nameCase = '${model.nameClass}Tag.${l.nameUnion}';
    final nameReturn = '${model.nameClass}.${l.nameUnion}';
    // example _UnionTestTag.a:
    final nameUnionWithTag = '${model.nameClass}Tag.${l.nameUnion}';
    final nameUnionWithoutTag = '${model.nameClass}.${l.nameUnion}';
    final sbParam = StringBuffer();
    final sbParamSuper = StringBuffer();
    final sbParamFinal = StringBuffer();

    final sbCopyWith = StringBuffer();
    final sbCopyWith_1 = StringBuffer();
    final sbCopyWith_2 = StringBuffer();

    sbToMap_1.write('''
 case $nameUnionWithTag:
    return {
     'tag': '${l.nameUnion}', 
''');
// ===============
    final isNotParam = l.listParameters.isEmpty;

    final addConst = isNotParam ? 'const' : '';

    sbFromMap_1.write('''
 case $nameUnionWithTag:
    return $addConst $nameUnionWithoutTag(
''');

//  from list
    sbFromList_1.write('''
      case $nameCase:
''');
    if (!l.isOnlyListData) {
      sbFromList_1.write('''
      throw ArgumentError('Invalid type for $nameCase: \$list',);
''');
    } else {
      sbFromList_1.write('''
        return $nameReturn(
''');
    }

// если параметров нету
    if (isNotParam) {
      sbFromMap_1.write(');');
      sbToMap_1.write('};');
      // sbFromList_1.write(');');
    }

    for (var i = 0; i < l.listParameters.length; i++) {
      final p = l.listParameters[i];

      final isLastText = l.listParameters.length - 1 == i;
      sbParam.write('this.${p.name},');

      var addRequiest = '';

      if (p.isRequired) {
        addRequiest = '${p.name}:';
      } else if (l.parameter == EnumParameter.defaultWithRequired &&
          p.initValue.isEmpty) {
        addRequiest = '';
      } else if (l.parameter == EnumParameter.required ||
          l.parameter == EnumParameter.defaultWithRequired &&
              p.initValue.isNotEmpty) {
        addRequiest = '${p.name}:';
      } else if (l.parameter == EnumParameter.defaultWithRequired) {
        addRequiest = '${p.name}:';
      } else if (l.parameter == EnumParameter.optional ||
          l.parameter == EnumParameter.defaultWithOptional ||
          l.parameter == EnumParameter.default_) {
        addRequiest = '';
      }

      sbParamSuper.write('$addRequiest ${p.name},');
      final addIsNull = p.isCanNull ? '?' : '';
      sbParamFinal.write('final ${p.typeStr}$addIsNull ${p.name};\n');

      final paramCopyWith = '${p.typeStr}? ${p.name}, ';
      // если не содержит текст. то добавляем
      sbCopyWith_1.write(paramCopyWith);

      sbCopyWith_2.write('''
${p.name}?? this.${p.name},
''');

      // переобразуем в модель которай уходит в метод
      var v = Varable(
        isCanNull: p.isCanNull,
        nameVar: p.name,
        type: p.typeEnum,
        initValueComment: p.initValue,
        nameData: p.typeStr,
      );

      final valueFromMap = getFromMap(v);

      sbFromMap_1.write('''
$addRequiest $valueFromMap,
''');
// здесь меняем fromlist
      final updateValueFromMap =
          valueFromMap.split('.map((e)').last.replaceAll('??', ':');
      if (l.isOnlyListData) {
        final addTextIsNotNull = p.isCanNull ? '' : 'list.isNotEmpty?';
        sbFromList_1.write('''
$addRequiest $addTextIsNotNull list.map((e)$updateValueFromMap,
''');
      }
// меняем название переменной
      v = v.copyWith(isCanNull: true, nameVar: '_${p.name}_${l.nameUnion}');
      final valueToMap = getToMapVarable(v);
      sbToMap_1.write('''
'${p.name}': $valueToMap,
''');

// добавить текст в конце итерации
      if (isLastText) {
        sbFromMap_1.write(');');
        if (l.isOnlyListData) sbFromList_1.write(');');
        sbToMap_1.write('};');
      }
    }

// собираем copyWith
    sbCopyWith.write('''

 $nameClass copyWith({
  $sbCopyWith_1
  }) {
    return $nameClass(
      $sbCopyWith_2
);

}
''');
// если нет параметров нет copy with
    if (isNotParam) sbCopyWith.clear();

    sbExtendsClass.write('''
@immutable
class $nameClass extends ${model.nameClass} {
  const $nameClass($sbParam) : super.${l.nameUnion}($sbParamSuper);
$sbParamFinal

$sbCopyWith

}''');
  }

  /* ****************************** */

// собрать fromMap

  sbFromMap.write('''
factory ${model.nameClass}.fromMap(Map<dynamic, dynamic> map, [${model.nameClass}Tag? tag,]) {
   tag ??= ${model.nameClass}Tag.values.byName(map['tag'].toString());
  switch (tag) {
$sbFromMap_1
  
}}      
''');

  /* ****************************** */
// собрать fromList

  if (model.isHaveOnlyList) {
    sbFromList.write('''
  factory $nameClass.fromList(List<dynamic> list, ${nameClass}Tag tag,) {
    switch (tag) {
$sbFromList_1

  }}
''');
  } else {
    sbFromList.clear();
  }

  /* ****************************** */
// собрать toMap

  sbToMap.write('''
  Map<String, dynamic> toMap() {
     switch (_tag) {   
$sbToMap_1
}}      
''');

  /* ****************************** */
  final newContent = '''
${model.contentToEnd}

${ConstConsole.GEN_MSG_START(EnumTypeRun.union)}
// coverage:ignore-file
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: avoid-non-null-assertion
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unnecessary_null_checks
// ignore_for_file: unused_element
// ignore_for_file: sort_constructors_first
// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: avoid_positional_boolean_parameters, 
// ignore_for_file: always_put_required_named_parameters_first

enum ${model.nameClass}Tag {
$sbUnionTag
}

@immutable
${model.comments}
${model.classHeader}
$sbAllParams
$sbUnionClass
$sbUnionGetterIsType


${isActiveFromJson ? sbFromJson : ''}
${isActiveFromJson ? sbFromList : ''}
${isActiveToMap ? sbToMap : ''}
${isActiveToMap ? 'String toJson() => json.encode(toMap());\n' : ''}
${isActiveFromMap ? sbFromMap : ''}
$sbMap
$sbMaybeMap
$sbMapOrNull
$sbCommonMaybeMapOrNull
$sbWhere
$sbEquals
$sbHash
$sbToString

}


$sbExtendsClass''';

  final _ = file.writeAsString(newContent);
  Terminal.runFormat(file.path);
  logger.info(ConstConsole.GEN_MSG_END(file.path));
}

String _getNameExtendsClass(UnionCommonModel model, UnionItemModel l) {
  return '_${model.nameClass}${l.nameUnion.toCapitalized()}';
}
