part of 'run_data_class.dart';

// ignore: prefer-static-class
void writeToFile(
  FLILogger logger,
  List<String> listNameNoSortVar,
  List<FirstSetting> listFirstSetting,
  String contentFile,
  String classHeader,
  String className,
  String classBrackets,
  StringBuffer constructor,
  StringBuffer factoryInit,
  StringBuffer copyWithStart,
  StringBuffer copyWithEnd,
  StringBuffer toMapSb,
  StringBuffer fromMapSb,
  StringBuffer toString,
  StringBuffer equals,
  StringBuffer hashCode,
  File file,
) {
  final noSetting = listFirstSetting
      .firstWhere(
        (v) => v.keySetting == EnumKeySetting.no,
        orElse: FirstSetting.new,
      )
      .listValueSetting;

  final onlySetting = listFirstSetting
      .firstWhere(
        (v) => v.keySetting == EnumKeySetting.only,
        orElse: FirstSetting.new,
      )
      .listValueSetting;
  final useSetting = listFirstSetting
      .firstWhere(
        (v) => v.keySetting == EnumKeySetting.use,
        orElse: FirstSetting.new,
      )
      .listValueSetting;

  _msgOnlyOne(onlySetting, logger);

  var isActiveToMap = !noSetting.contains(EnumValueSettingDataClass.toMap);
  var isActiveToJson = !noSetting.contains(EnumValueSettingDataClass.toJson);
  var isActiveFromMap = !noSetting.contains(EnumValueSettingDataClass.fromMap);
  var isActiveFromJson =
      !noSetting.contains(EnumValueSettingDataClass.fromJson);
  var isActiveToString =
      !noSetting.contains(EnumValueSettingDataClass.toString_);
  var isActiveHash = !noSetting.contains(EnumValueSettingDataClass.hash_);
  var isActiveEquals = !noSetting.contains(EnumValueSettingDataClass.equals_);
  var isActiveCopyWith =
      !noSetting.contains(EnumValueSettingDataClass.copyWith);
  // only no setting
  final isOnlyCopyWith =
      onlySetting.contains(EnumValueSettingDataClass.copyWith);
  final isOnlyFromMap = onlySetting.contains(EnumValueSettingDataClass.fromMap);
  final isOnlyFromJson =
      onlySetting.contains(EnumValueSettingDataClass.fromJson);
  final isOnlyToJson = onlySetting.contains(EnumValueSettingDataClass.toJson);
  final isOnlyToMap = onlySetting.contains(EnumValueSettingDataClass.toMap);
//   use setting
  final isUseEquatable =
      useSetting.contains(EnumValueSettingDataClass.equatable);

// hash_and_equals disable or enable at the same time
  var isActiveHashAndEquals = isActiveEquals && isActiveHash;

  if (!isActiveToMap | !isActiveToJson) {
    isActiveToJson = false;
    isActiveToMap = false;
  }

  if (!isActiveFromMap || !isActiveFromJson) {
    isActiveFromJson = false;
    isActiveFromMap = false;
  }

// if copywith is active, disable everything else
  if (isOnlyCopyWith) {
    isActiveCopyWith = true;
    isActiveFromJson = false;
    isActiveToMap = false;
    isActiveEquals = false;
    isActiveHash = false;
    isActiveHashAndEquals = false;
    isActiveFromMap = false;
    isActiveToJson = false;
    isActiveToString = false;
  } else if (isOnlyFromJson || isOnlyFromMap) {
    isActiveFromJson = true;
    isActiveCopyWith = false;
    isActiveToMap = false;
    isActiveEquals = false;
    isActiveHash = false;
    isActiveHashAndEquals = false;
    isActiveFromMap = true;
    isActiveToJson = false;
    isActiveToString = false;
  } else if (isOnlyToJson || isOnlyToMap) {
    isActiveToMap = true;
    isActiveToJson = true;
    isActiveFromJson = false;
    isActiveCopyWith = false;
    isActiveEquals = false;
    isActiveHash = false;
    isActiveHashAndEquals = false;
    isActiveFromMap = false;
    isActiveToString = false;
  }
  if (isUseEquatable) {
    isActiveToString = false;
    isActiveHashAndEquals = false;
    isActiveEquals = false;
    isActiveHash = false;
  }

  var header = contentFile.split(classHeader).first;
  // are there any required fields
  final isHaveRequired = constructor.toString().contains('required');

  // final add4 = "@immutable";
  // if (!header.contains(add4)) {
  //   header = "\n$add4$header\n";
  // }
  // if (!isOnlyCopyWith) {
  //   if (!header.contains('part of')) {
  // if (header.contains('@immutable')) {
  //   const add3 = "import 'package:meta/meta.dart';";
  //   if (!header.contains(add3)) {
  //     header = '$add3\n$header';
  //   }
  // }
  //     if (equals.toString().contains('DeepCollectionEquality')&&isActiveToString) {
  //       const add2 = "import 'package:collection/collection.dart';";
  //       if (!header.contains(add2)) {
  //         header = '$add2\n$header';
  //       }
  //     }

  //     const add1 = "import 'dart:convert';";
  //     if (!header.contains(add1)) {
  //       header = '$add1\n$header';
  //     }
  //   }
  // }
  const add5 =
      '// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions';
  if (!header.contains(add5)) {
    header = '$add5\n$header';
  }

  final newContent = '''
$header$classHeader $classBrackets
   
${ConstConsole.GEN_MSG_START}
  const $className({
$constructor  });
  /*
   factory $className.init() => $className(
$factoryInit      ); 
  */
${_getToMap(toMapSb, isActiveToMap)}
${_getFromMap_(className, fromMapSb, isActiveFromMap, isHaveRequired)}
${_getCopyWith(className, copyWithStart, copyWithEnd, isActiveCopyWith)}
${_getToJson(isActiveToJson)}  
${_getFromJson(className, isActiveFromJson)}  
${_getHashAndEquals(className, equals, hashCode, isActiveHashAndEquals)}
${_getToString(className, toString, isActiveToString)}
${_getEquatable(listNameNoSortVar, isUseEquatable)}
}\n''';

  final _ = file.writeAsString(newContent);

  logger.info(ConstConsole.GEN_MSG_END);
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

String _getFromMap_(
  String className,
  StringBuffer fromMapSb,
  bool isActive,
  bool isHaveRequired,
) {
  final add1 = isHaveRequired ? '' : '?';
  final add2 =
      isHaveRequired ? '' : 'if (map == null) return const $className();\n';

  return isActive
      ? '''
  factory $className.fromMap(Map<String, dynamic>$add1 map) {
    $add2
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
