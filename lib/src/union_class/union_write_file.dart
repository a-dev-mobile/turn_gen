part of 'run_union_class.dart';

// ignore: prefer-static-class
void unionWriteToFile(
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
    final unionName = l.nameUnion == _emptyUnionName ? '' : '.${l.nameUnion}';
    sbUnionClass.write('''
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
      final lastText = l.listParameters.length - 1 == i ? '' : ', ';

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
      final lastText = l.listParameters.length - 1 == i ? '' : ', ';

      final letterNotNull = p.isCanNull ? '!' : '!';

      sbReturn.write('_${p.name}_${l.nameUnion}$letterNotNull$lastText');
    }

    sbMap.write('''
    required T Function ($nameClassExtends v) ${l.nameUnion},
''');

    sbMapCase.write('''
      case _${model.nameClass}Tag.${l.nameUnion}:
        return ${l.nameUnion}($nameClassExtends($sbReturn));
''');
  }
  sbMap.write('''
}) {
    switch (_tag) {
$sbMapCase    }
  }
''');

  /* ****************************** */
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
      final lastText = l.listParameters.length - 1 == i ? '' : ', ';

      final letterNotNull = p.isCanNull ? '!' : '!';

      sbReturn.write('_${p.name}_${l.nameUnion}$letterNotNull$lastText');
    }

    sbMaybeMap.write('''
     T Function ($nameClassExtends v)? ${l.nameUnion},
''');

    sbMaybeMapCase.write('''
      case _${model.nameClass}Tag.${l.nameUnion}:
        if(${l.nameUnion} != null) return ${l.nameUnion}($nameClassExtends($sbReturn));
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
  final sbToString = StringBuffer();
  // ignore: cascade_invocations
  sbToString.write('''
  @override
  String toString() {
    switch (_tag) {
''');

  for (final l in model.listUnion) {
    final unionName = l.nameUnion == _emptyUnionName ? '' : '.${l.nameUnion}';
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
    sbHashTemp.write(''']);''');
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
  var lastTextTemp = '';
  for (final l in model.listUnion) {
    final lastText = l.listParameters.isEmpty ? '' : ' && ';
    sbEqualsTemp.write('''

      case _${model.nameClass}Tag.${l.nameUnion}:
        return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ${model.nameClass} $lastText 
''');
    final length = l.listParameters.length;

    // if (length == 0) sbHash.write(']);');

    lastTextTemp = length == 0 ? ');' : '';
    for (var i = 0; i < length; i++) {
      final isLast = i + 1 == length;
      final p = l.listParameters[i];
      //  sbEqualsTemp.write(' && ');

      sbEqualsTemp.write(
        getEquals(p.typeEnum, '_${p.name}_${l.nameUnion}', isLast)
            .replaceAll(RegExp(r'\s+'), ' '),
      );
    }
  }
  sbEqualsTemp.write('''$lastTextTemp
  
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

  for (final l in model.listUnion) {
    var nameClass = _getNameExtendsClass(model, l);
    final sbParam = StringBuffer();
    final sbParamSuper = StringBuffer();
    final sbParamFinal = StringBuffer();
    for (var i = 0; i < l.listParameters.length; i++) {
      final p = l.listParameters[i];
      final lastText = l.listParameters.length - 1 == i ? '' : ', ';

      sbParam.write('this.${p.name}$lastText');

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
      }

      sbParamSuper.write('$addRequiest ${p.name}$lastText');

      sbParamFinal.write('  final ${p.typeStr} ${p.name};\n');
    }

    sbExtendsClass.write('''
class $nameClass extends ${model.nameClass} {
  $nameClass($sbParam) : super.${l.nameUnion}($sbParamSuper);
$sbParamFinal}

''');
  }

  /* ****************************** */

  final newContent = '''
/* 
$contentFile
*/

${ConstConsole.GEN_MSG_START}
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

class ${model.nameClass} {


$sbEquals


$sbHash

$sbMaybeMap

$sbMap

$sbUnionClass

$sbWhere

$sbToString

$sbAllParams

}

enum _${model.nameClass}Tag {
$sbUnionTag}
$sbExtendsClass 
''';

  // final _ = file.writeAsString(newContent);
  final _ =
      File('F:/DEV/FLUTTER/project/MY_GITHUB/turn_gen/resources/to_union.dart')
          .writeAsString(newContent);

  logger
    ..info('***')
    ..info('✓ Successfully generated extra features for data class')
    ..info('***');
}

String _getNameExtendsClass(UnionCommonModel model, UnionItemModel l) {
  return '_${model.nameClass}${l.nameUnion.toCapitalized()}';
}

void _msgOnlyOne(
  List<EnumValueSettingDataClass> onlySetting,
  FLILogger logger,
) {
  if (onlySetting.length > 1) {
    logger
      ..info('\n')
      ..info('\n(only:) - supports only one value')
      ..info('\n');
  }
}

String _getEquatable(List<String> listNameVar, bool isActive) {
  return isActive
      ? '''
  @override
  List<Object?> get props => $listNameVar;
  
  @override
  bool get stringify => true;
'''
      : '';
}

String _getCopyWith(
  String className,
  StringBuffer copyWithStart,
  StringBuffer copyWithEnd,
  bool isActive,
) {
  return isActive
      ? '''
  $className copyWith({
$copyWithStart  }) {
    return $className(
$copyWithEnd    );
  }
'''
      : '';
}

String _getToMap(StringBuffer toMapSb, bool isActive) {
  return isActive
      ? '''
Map<String, dynamic> toMap() {
  return <String, dynamic>{
$toMapSb    };
  }
'''
      : '';
}

String _getFromMap_(String className, StringBuffer fromMapSb, bool isActive) {
  return isActive
      ? '''
    factory $className.fromMap(Map<String, dynamic> map) {
    return $className(
$fromMapSb    );
  }
'''
      : '';
}

String _getToString(String className, StringBuffer toString, bool isActive) {
  return isActive
      ? '''
      @override
  String toString() {
    return '$className($toString)';
    }'''
      : '';
}

String _getHashAndEquals(
  String className,
  StringBuffer equals,
  StringBuffer hashCode,
  bool isActive,
) {
  return isActive
      ? '''
      
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is $className &&
$equals  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
$hashCode]);'''
      : '';
}

String _getToJson(bool isActive) {
  return isActive ? '  String toJson() => json.encode(toMap());' : '';
}

String _getFromJson(String className, bool isActive) {
  return isActive
      ? 'factory $className.fromJson(String source) => $className.fromMap(json.decode(source) as Map<String, dynamic>,);'
      : '';
}
