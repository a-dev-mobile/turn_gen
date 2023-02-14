part of 'run_data_class.dart';

// ignore: prefer-static-class
void writeToFile(
  List<FirstSetting> listSetting,
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
  var isActiveToMap = (listSetting.firstWhereOrNull(
        (v) => v.enumUsedFeatures == EnumUsedFeatures.toMap,
      ))?.isUsed ??
      true;

  var isActiveToJson = (listSetting.firstWhereOrNull(
        (v) => v.enumUsedFeatures == EnumUsedFeatures.toJson,
      ))?.isUsed ??
      true;
  var isActiveFromMap = (listSetting.firstWhereOrNull(
        (v) => v.enumUsedFeatures == EnumUsedFeatures.fromMap,
      ))?.isUsed ??
      true;

  var isActiveFromJson = (listSetting.firstWhereOrNull(
        (v) => v.enumUsedFeatures == EnumUsedFeatures.fromJson,
      ))?.isUsed ??
      true;
  var isActiveToString = (listSetting.firstWhereOrNull(
        (v) => v.enumUsedFeatures == EnumUsedFeatures.toString_,
      ))?.isUsed ??
      true;

  var isActiveHashCode = (listSetting.firstWhereOrNull(
        (v) => v.enumUsedFeatures == EnumUsedFeatures.hashCode_,
      ))?.isUsed ??
      true;

  var isActiveHash = (listSetting.firstWhereOrNull(
        (v) => v.enumUsedFeatures == EnumUsedFeatures.hash_,
      ))?.isUsed ??
      true;
  var isActiveEquals = (listSetting.firstWhereOrNull(
        (v) => v.enumUsedFeatures == EnumUsedFeatures.equals_,
      ))?.isUsed ??
      true;

  var isOnlyCopyWith = (listSetting.firstWhereOrNull(
        (v) => v.enumUsedFeatures == EnumUsedFeatures.copyWith,
      ))?.isUsed ??
      false;

// hash_and_equals  отключают или включают одновременно
  var isActiveHashAndEquals =
      isActiveHashCode && isActiveEquals && isActiveHash;

  if (!isActiveToMap) {
    isActiveToJson = false;
  }

  if (!isActiveFromMap) {
    isActiveFromJson = false;
  }
// если активна copywith все остальное отключаем
  if (isOnlyCopyWith) {
    isActiveFromJson = false;
    isActiveToMap = false;
    isActiveEquals = false;
    isActiveHash = false;
    isActiveHashAndEquals = false;
    isActiveFromMap = false;
    isActiveToJson = false;
    isActiveToString = false;
  }

  var header = contentFile.split(classHeader).first;

  // final add4 = "@immutable";
  // if (!header.contains(add4)) {
  //   header = "\n$add4$header\n";
  // }
  if (!isOnlyCopyWith) {
    if (!header.contains('part of')) {
      if (header.contains('@immutable')) {
        const add3 = "import 'package:meta/meta.dart';";
        if (!header.contains(add3)) {
          header = '$add3\n$header';
        }
      }
      if (equals.toString().contains('DeepCollectionEquality')) {
        const add2 = "import 'package:collection/collection.dart';";
        if (!header.contains(add2)) {
          header = '$add2\n$header';
        }
      }

      const add1 = "import 'dart:convert';";
      if (!header.contains(add1)) {
        header = '$add1\n$header';
      }
    }
  }
  const add5 = '// ignore_for_file: sort_constructors_first';
  if (!header.contains(add5)) {
    header = '$add5\n$header';
  }

  final newContent = '''
${header}class $className { $classBrackets
   
${ConstConsole.GEN_MSG}
  const $className({
$constructor  });
  /*
   factory $className.init() => $className(
$factoryInit      ); 
  */
${_getToMap(toMapSb, isActiveToMap)}
${_getFromMap(className, fromMapSb, isActiveFromMap)}
  $className copyWith({
$copyWithStart  }) {
    return $className(
$copyWithEnd    );
  }
${_getToJson(isActiveToJson)}  
${_getFromJson(className, isActiveFromJson)}  
${_getHashAndEquals(className, equals, hashCode, isActiveHashAndEquals)}
${_getToString(className, toString, isActiveToString)}
}\n''';

  final _ = file.writeAsString(
    UtilsString.replaceToEmpty(
      text: newContent,
      replaceable: [],
    ),
  );

  print('***');
  print('✓ Successfully generated extra features for data class');
  print('***');
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

String _getFromMap(String className, StringBuffer fromMapSb, bool isActive) {
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
