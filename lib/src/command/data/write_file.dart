import 'dart:io';

import 'package:turn_gen/src/src.dart';

bool _isShowComment = false;

// ignore: prefer-static-class
void writeToFileData(
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
  StringBuffer fromMapDynamicSb,
  StringBuffer toString,
  StringBuffer equals,
  StringBuffer hashCode,
  // ignore: avoid_positional_boolean_parameters
  bool isShowComment,
  File file,
) {
  _isShowComment = isShowComment;

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
  const add5 = 'sort_constructors_first';
  if (!header.contains(add5)) {
    header = '// ignore_for_file: $add5\n$header';
  }
  const add6 = 'avoid_bool_literals_in_conditional_expressions';
  if (!header.contains(add6)) {
    header = '// ignore_for_file: $add6\n$header';
  }
  final newContent = '''
$header$classHeader$classBrackets
   
${ConstConsole.GEN_MSG_START(EnumTypeRun.data)}
  const $className({
$constructor  });

${_getToMap(toMapSb, isActiveToMap, className)}
${_getFromMap_(className, fromMapSb, isActiveFromMap, isHaveRequired)}
${_getCopyWith(className, copyWithStart, copyWithEnd, isActiveCopyWith)}
${_getToJson(isActiveToJson, className)}  
${_getFromJson(className, isActiveFromJson)}  
${_getHashAndEquals(className, equals, hashCode, isActiveHashAndEquals)}
${_getToString(className, toString, isActiveToString)}
${_getEquatable(listNameNoSortVar, isUseEquatable)}
}\n''';

  final _ = file.writeAsString(newContent);

  logger.info(ConstConsole.GEN_MSG_END(file.path));
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
  final doc = _isShowComment
      ? '''
  /// Returns a new [$className] instance with updated properties.
  ///
  /// The arguments may be null. If they are null, the
  /// corresponding properties in the returned instance will be the same
  /// as in the original instance.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final user = UserModel(url: 'https://example.com', name: 'John');
  /// final newUser = user.copyWith(name: 'Jane');
  /// print(newUser); // Output: UserModel(url: https://example.com, name: Jane)
  /// ```'''
      : '';

  return isActive
      ? '''
$doc
  $className copyWith({
$copyWithStart  }) {
    return $className(
$copyWithEnd    );
  }'''
      : '';
}

String _getToMap(StringBuffer toMapSb, bool isActive, String nameClass) {
  final doc = _isShowComment
      ? '''
  /// Converts the [$nameClass] object to a map of key-value pairs.
  ///
  /// Returns a new [Map] instance containing the non-null properties of this
  /// [$nameClass] instance. The keys are [String]s corresponding to the property
  /// names, and the values are their respective values.
  ///
  /// If a property is `null`, it will not be included in the resulting map.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final user = UserModel(url: 'https://example.com', name: 'John');
  /// final userMap = user.toMap();
  /// print(userMap); // Output: {'url': 'https://example.com', 'name': 'John'}
  /// ```'''
      : '';

  return isActive
      ? '''
$doc
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
  final doc = _isShowComment
      ? '''
/// Creates a [$className] instance from a Map with dynamic keys and values.
  ///
  /// If the [map] argument is null, returns a const [$className] instance.
  /// 
  /// If the [map] argument is not null, creates a [$className] instance using the values of keys 
  /// in the map. If these keys are not null, it extracts their corresponding values and assigns 
  /// them to the corresponding properties in the [$className] instance.
  /// 
  /// If the keys maps is not null, it converts its value to a Map<String, dynamic> using 
  /// `Map<String, dynamic>.from` and passes it to the other model constructor to create a model instance.
  ///
  /// If a value in the map is null or of an invalid type, it will be treated as an empty string.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final map = {'value': 'Jon', 'unrestricted_value': 'John Smith', 'data': {'name': 'Jon', 'surname': 'Smith'}};
  /// final suggestion = SuggestionsModel.fromDynamicMap(map);
  /// print(suggestion); // Output: SuggestionsModel(value: Jon, unrestricted_value: Jon, data: DataFio(name: Jon, surname: Smith))
  /// ``` 
'''
      : '';

  return isActive
      ? '''
$doc
  factory $className.fromMap(Map<dynamic, dynamic>$add1 map) {
    $add2
    return $className(
$fromMapSb    );
  }'''
      : '';
}
// @Deprecated('use fromMap')
// String _getFromMapDynamic_(
//   String className,
//   StringBuffer fromMapDynamicSb,
//   bool isActive,
//   bool isHaveRequired,
// ) {
//   final add1 = isHaveRequired ? '' : '?';
//   final add2 =
//       isHaveRequired ? '' : 'if (map == null) return const $className();\n';

//   return isActive
//       ? '''
//   /// Creates a [$className] instance from a Map with dynamic keys and values.
//   ///
//   /// If the [map] argument is null, returns a const [$className] instance.
//   ///
//   /// If the [map] argument is not null, creates a [$className] instance using the values of keys
//   /// in the map. If these keys are not null, it extracts their corresponding values and assigns
//   /// them to the corresponding properties in the [$className] instance.
//   ///
//   /// If the keys maps is not null, it converts its value to a Map<String, dynamic> using
//   /// `Map<String, dynamic>.from` and passes it to the other model constructor to create a model instance.
//   ///
//   /// If a value in the map is null or of an invalid type, it will be treated as an empty string.
//   ///
//   /// Example usage:
//   ///
//   /// ```dart
//   /// final map = {'value': 'Jon', 'unrestricted_value': 'John Smith', 'data': {'name': 'Jon', 'surname': 'Smith'}};
//   /// final suggestion = SuggestionsModel.fromDynamicMap(map);
//   /// print(suggestion); // Output: SuggestionsModel(value: Jon, unrestricted_value: Jon, data: DataFio(name: Jon, surname: Smith))
//   /// ```
//   factory $className.fromDynamicMap(Map<dynamic, dynamic>$add1 map) {
//     $add2
//     return $className(
// $fromMapDynamicSb    );
//   }
// '''
//       : '';
// }

String _getToString(String className, StringBuffer toString, bool isActive) {
  final doc = _isShowComment
      ? '''
  /// Returns a string representation of this model [$className].
  /// The string representation includes the fields class.
  /// Example of returned string: 
  /// ``` dart 
  /// UserModel(url: https://example.com, name: John Doe) 
  /// ```  
  /// Returns: A string representation of this user model object.
'''
      : '';

  return isActive
      ? '''
$doc
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
  final doc1 = _isShowComment
      ? '''
  /// Determines whether this [$className] instance is equal to another object.
  ///
  /// Returns `true` if the other object is also a [$className] instance and has
  /// the same values property as this instance.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final user1 = UserModel(url: 'https://example.com', name: 'John');
  /// final user2 = UserModel(url: 'https://example.com', name: 'John');
  /// final user3 = UserModel(url: 'https://example.com', name: 'Jane');
  ///
  /// print(user1 == user2); // Output: true
  /// print(user1 == user3); // Output: false
  /// ```   
'''
      : '';

  final doc2 = _isShowComment
      ? '''
  /// Returns a hash code for this [$className] instance.
  ///
  /// The hash code is based on the properties class. If 
  /// instances have the same values for these properties, they will have
  /// the same hash code.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final user1 = UserModel(url: 'https://example.com', name: 'John');
  /// final user2 = UserModel(url: 'https://example.com', name: 'John');
  /// print(user1.hashCode); // Output: 1796192025
  /// print(user2.hashCode); // Output: 1796192025
  /// ```    
'''
      : '';

  return isActive
      ? '''
$doc1   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is $className &&
$equals  }
$doc2
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
$hashCode]);'''
      : '';
}

String _getToJson(bool isActive, String className) {
  final doc = _isShowComment
      ? '''
  /// Returns a JSON-encoded string representing this [$className] instance.
  ///
  /// The JSON string has the following format:
  ///
  /// ```json
  /// {
  ///   "url": "https://example.com",
  ///   "name": "John"
  /// }
  /// ```
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final user = UserModel(url: 'https://example.com', name: 'John');
  /// final jsonString = user.toJson();
  /// print(jsonString); // Output: {"url":"https://example.com","name":"John"}
  /// ```
'''
      : '';

  return isActive
      ? '''
$doc
  String toJson() => json.encode(toMap());'''
      : '';
}

String _getFromJson(String className, bool isActive) {
  return isActive
      ? '  factory $className.fromJson(String source) => $className.fromMap(json.decode(source) as Map<String, dynamic>,);'
      : '';
}
