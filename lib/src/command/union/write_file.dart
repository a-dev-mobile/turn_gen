// ignore: prefer-static-class
import 'dart:io';

import 'package:turn_gen/src/src.dart';

// ignore: prefer-static-class
void writeToFileUnion(
  FLILogger logger,
  File file,
  UnionCommonModel model,
  String contentFile,
) {
  /* ****************************** */
  final sbAllParams = StringBuffer();
  for (final v in model.listParams) {
    sbAllParams.write('''
  $v
''');
  }
  /* ****************************** */
  final sbUnionTag = StringBuffer();
  for (final v in model.listUnion) {
    sbUnionTag.write('''
  ${v.nameUnion},
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
      case _${model.nameClass}Tag.${l.nameUnion}:
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

      const letterNotNull = '!';

      sbReturn.write('_${p.name}_${l.nameUnion}$letterNotNull$lastText');
    }

    sbMap.write('''
    required T Function($nameClassExtends v) ${l.nameUnion},
''');
    final constText = sbReturn.isEmpty ? 'const ' : '';
    sbMapCase.write('''
      case _${model.nameClass}Tag.${l.nameUnion}:
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

      const letterNotNull = '!';

      sbReturn.write('_${p.name}_${l.nameUnion}$letterNotNull$lastText');
    }

    sbMapOrNull.write('''
    T? Function($nameClassExtends v)? ${l.nameUnion},
''');
    final constText = sbReturn.isEmpty ? 'const ' : '';
    sbMapOrNullCase.write('''
      case _${model.nameClass}Tag.${l.nameUnion}:
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
''');

  final sbMaybeMapCase = StringBuffer();
  for (final l in model.listUnion) {
    final nameClassExtends = _getNameExtendsClass(model, l);
    final sbReturn = StringBuffer();
    for (var i = 0; i < l.listParameters.length; i++) {
      final p = l.listParameters[i];
      final lastText = l.listParameters.length - 1 == i ? ',' : ', ';

      final letterNotNull = p.isCanNull ? '!' : '!';

      sbReturn.write('_${p.name}_${l.nameUnion}$letterNotNull$lastText');
    }

    sbMaybeMap.write('''
    T Function($nameClassExtends v)? ${l.nameUnion},
''');
    final constText = sbReturn.isEmpty ? 'const ' : '';
    sbMaybeMapCase.write('''
      case _${model.nameClass}Tag.${l.nameUnion}:
        if(${l.nameUnion} != null) return ${l.nameUnion}($constText$nameClassExtends($sbReturn),);
        return orElse();
''');
  }

  sbMaybeMap.write('''
      required T Function() orElse,
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

      sbReturn.write('_${p.name}_${l.nameUnion}!$lastText');
    }

    final constText = sbReturn.isEmpty ? 'const ' : '';
    sbMaybeMapOrNull1.write('''
      case _${model.nameClass}Tag.${l.nameUnion}:
        if(${l.nameUnion} != null) return ${l.nameUnion}($constText$nameClassExtends($sbReturn),);
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

      case _${model.nameClass}Tag.${l.nameUnion}:
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

      case _${model.nameClass}Tag.${l.nameUnion}:
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

      case _${model.nameClass}Tag.${l.nameUnion}:
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
    /* .replaceAll(',]);', ']);')
      .replaceAll(', ]);', ']);')
      .replaceAll(',)]);', ')]);') */
  );

  /* ****************************** */

  final sbExtendsClass = StringBuffer();

  final sbCopyWith = StringBuffer();
  final sbCopyWith_1 = StringBuffer();
  final sbCopyWith_2 = StringBuffer();

  final sbFromMap = StringBuffer();
  final sbFromMap_1 = StringBuffer();
  final sbToMap = StringBuffer();
  final sbToMap_1 = StringBuffer();
  for (final l in model.listUnion) {
    final nameClass = _getNameExtendsClass(model, l);
    // example _UnionTestTag.a:
    final nameUnionWithTag = '_${model.nameClass}Tag.${l.nameUnion}';
    final nameUnionWithoutTag = '${model.nameClass}.${l.nameUnion}';
    final sbParam = StringBuffer();
    final sbParamSuper = StringBuffer();
    final sbParamFinal = StringBuffer();

    sbToMap_1.write('''
 case $nameUnionWithTag:
    return {
     'tag': '${l.nameUnion}', 
''');

    sbFromMap_1.write('''
 case '${l.nameUnion}':
    return $nameUnionWithoutTag(
''');

// ===============
    sbCopyWith_2.write('''
 case $nameUnionWithTag:
    return $nameUnionWithoutTag(
''');

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
      } else if (l.parameter == EnumParameter.required &&
              p.initValue.isNotEmpty ||
          l.parameter == EnumParameter.defaultWithRequired &&
              p.initValue.isNotEmpty) {
        addRequiest = '${p.name}:';
      } else if (l.parameter == EnumParameter.defaultWithRequired) {
        addRequiest = '${p.name}:';
      } else if (l.parameter == EnumParameter.optional ||
          l.parameter == EnumParameter.defaultWithOptional ||
          l.parameter == EnumParameter.default_) {
        addRequiest = '';
      } else {
        addRequiest = '${p.name}:';
      }

      sbParamSuper.write('$addRequiest ${p.name},');

      sbParamFinal.write('  final ${p.typeStr} ${p.name};\n');

      final paramCopyWith = '${p.typeStr}? ${p.name}, ';
      // если не содержит текст. то добавляем
      if (!sbCopyWith_1.toString().contains(paramCopyWith)) {
        sbCopyWith_1.write(paramCopyWith);
      }

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
${p.name}: $valueFromMap,
''');

// меняем название переменной
      v = v.copyWith(nameVar: '_${p.name}_${l.nameUnion}!');
      final valueToMap = getToMapVarable(v);
      sbToMap_1.write('''
'${p.name}': $valueToMap,
''');

      sbCopyWith_2.write('''
${p.name}: ${p.name}?? _${p.name}_${l.nameUnion}!,
''');
// добавить текст в конце итерации
      if (isLastText) {
        sbCopyWith_2.write(');');
        sbFromMap_1.write(');');
        sbToMap_1.write('};');
      }
    }

    sbExtendsClass.write('''
@immutable
class $nameClass extends ${model.nameClass} {
  const $nameClass($sbParam) : super.${l.nameUnion}($sbParamSuper);
$sbParamFinal}\n''');
  }

  /* ****************************** */
// собрать copywith

  sbCopyWith.write('''
${model.nameClass} copyWith({
$sbCopyWith_1
  }) {
    switch (_tag) {
$sbCopyWith_2
}}      
''');

  /* ****************************** */
// собрать fromJson

  sbFromMap.write('''
static ${model.nameClass} fromMap(Map<dynamic, dynamic> map) {
     final tag = map['tag'];
     switch (tag) {
$sbFromMap_1
  default:
        throw ArgumentError('Invalid map: \$map');
 
}}      
''');

  /* ****************************** */
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
// ignore_for_file: avoid_unused_constructor_parameters, unused_element, avoid-non-null-assertion,  library_private_types_in_public_api,non_constant_identifier_names, always_put_required_named_parameters_first,  avoid_positional_boolean_parameters, strict_raw_type, curly_braces_in_flow_control_structures
@immutable
${model.comments}
${model.classHeader}
$sbUnionClass
$sbToMap
$sbFromMap
$sbCopyWith
$sbMap
$sbMaybeMap
$sbMapOrNull
$sbCommonMaybeMapOrNull
$sbWhere
$sbEquals
$sbHash
$sbToString
$sbAllParams
}

enum _${model.nameClass}Tag {
$sbUnionTag}
$sbExtendsClass''';

  final _ = file.writeAsString(newContent);
  Terminal.runFormat(file.path);
  logger.info(ConstConsole.GEN_MSG_END(file.path));
}

String _getNameExtendsClass(UnionCommonModel model, UnionItemModel l) {
  return '_${model.nameClass}${l.nameUnion.toCapitalized()}';
}
