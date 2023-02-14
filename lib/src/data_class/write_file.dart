part of 'run_data_class.dart';

// ignore: prefer-static-class
void writeToFile(
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
  var header = contentFile.split(classHeader).first;

  // final add4 = "@immutable";
  // if (!header.contains(add4)) {
  //   header = "\n$add4$header\n";
  // }

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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
$toMapSb    };
  }

    
  factory $className.fromMap(Map<String, dynamic> map) {
    return $className(
$fromMapSb    );
  }

  $className copyWith({
${copyWithStart.toString()}  }) {
    return $className(
${copyWithEnd.toString()}    );
  }
  
  String toJson() => json.encode(toMap());
  
    
  factory $className.fromJson(String source) => $className.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is $className &&
${equals.toString()}  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
${hashCode.toString()}]);
  
  @override
  String toString() {
    return '$className(${toString.toString()})';
    }
  }\n''';

  file.writeAsString(
    UtilsString.replaceToEmpty(
      text: newContent,
      replaceable: [],
    ),
  );

  print('***');
  print('✓ Successfully generated extra features for data class');
  print('***');
}
