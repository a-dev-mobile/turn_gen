// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes

import 'dart:convert';

// ignore_for_file: prefer_const_constructors_in_immutables,

import 'package:turn_gen/src/src.dart';

class Varable {       
/* type: enum 
init: EnumTypeVarable.none
 */
  final EnumTypeVarable type;
  /* init:'' */
  //variable name
  final String nameVar;
  /* init:'' */
  final String typeInList;
  /* init:'' */
  //variable type name
  final String nameData;
  /* init:'' */
  final String initValueDefault;
  /* init:'' */
  final String initValueComment;
  /* init:'' */
  final String toMap_;
  /* init:'' */
  final String fromMap_;
  /* init:false */
  final bool isCanNull;
  /* init:false */
  final bool isArray;
  /* type: enum 
init: EnumTypeVarable.none
 */
  final EnumTypeVarable typeArray;
// end
   
//          --TURN_GEN--
//           v0.6.7 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const Varable({
    this.type = EnumTypeVarable.none,
    this.nameVar = '',
    this.typeInList = '',
    this.nameData = '',
    this.initValueDefault = '',
    this.initValueComment = '',
    this.toMap_ = '',
    this.fromMap_ = '',
    this.isCanNull = false,
    this.isArray = false,
    this.typeArray = EnumTypeVarable.none,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type.index, 
      'nameVar': nameVar, 
      'typeInList': typeInList, 
      'nameData': nameData, 
      'initValueDefault': initValueDefault, 
      'initValueComment': initValueComment, 
      'toMap_': toMap_, 
      'fromMap_': fromMap_, 
      'isCanNull': isCanNull, 
      'isArray': isArray, 
      'typeArray': typeArray.index, 
    };
  }


  factory Varable.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const Varable();

    return Varable(
      type: map['type'] != null ? EnumTypeVarable.values[map['type'] as int] : EnumTypeVarable.none, 
      nameVar: map['nameVar'] != null ? map['nameVar'] as String : '', 
      typeInList: map['typeInList'] != null ? map['typeInList'] as String : '', 
      nameData: map['nameData'] != null ? map['nameData'] as String : '', 
      initValueDefault: map['initValueDefault'] != null ? map['initValueDefault'] as String : '', 
      initValueComment: map['initValueComment'] != null ? map['initValueComment'] as String : '', 
      toMap_: map['toMap_'] != null ? map['toMap_'] as String : '', 
      fromMap_: map['fromMap_'] != null ? map['fromMap_'] as String : '', 
      isCanNull: map['isCanNull'] != null ? map['isCanNull'] as bool : false, 
      isArray: map['isArray'] != null ? map['isArray'] as bool : false, 
      typeArray: map['typeArray'] != null ? EnumTypeVarable.values[map['typeArray'] as int] : EnumTypeVarable.none, 
    );
  }

  Varable copyWith({
    EnumTypeVarable? type,
    String? nameVar,
    String? typeInList,
    String? nameData,
    String? initValueDefault,
    String? initValueComment,
    String? toMap_,
    String? fromMap_,
    bool? isCanNull,
    bool? isArray,
    EnumTypeVarable? typeArray,
  }) {
    return Varable(
      type: type ?? this.type, 
      nameVar: nameVar ?? this.nameVar, 
      typeInList: typeInList ?? this.typeInList, 
      nameData: nameData ?? this.nameData, 
      initValueDefault: initValueDefault ?? this.initValueDefault, 
      initValueComment: initValueComment ?? this.initValueComment, 
      toMap_: toMap_ ?? this.toMap_, 
      fromMap_: fromMap_ ?? this.fromMap_, 
      isCanNull: isCanNull ?? this.isCanNull, 
      isArray: isArray ?? this.isArray, 
      typeArray: typeArray ?? this.typeArray, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory Varable.fromJson(String source) => Varable.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Varable &&
            (identical(other.type, type) || other.type == type) && 
            (identical(other.nameVar, nameVar) || other.nameVar == nameVar) && 
            (identical(other.typeInList, typeInList) || other.typeInList == typeInList) && 
            (identical(other.nameData, nameData) || other.nameData == nameData) && 
            (identical(other.initValueDefault, initValueDefault) || other.initValueDefault == initValueDefault) && 
            (identical(other.initValueComment, initValueComment) || other.initValueComment == initValueComment) && 
            (identical(other.toMap_, toMap_) || other.toMap_ == toMap_) && 
            (identical(other.fromMap_, fromMap_) || other.fromMap_ == fromMap_) && 
            (identical(other.isCanNull, isCanNull) || other.isCanNull == isCanNull) && 
            (identical(other.isArray, isArray) || other.isArray == isArray) && 
            (identical(other.typeArray, typeArray) || other.typeArray == typeArray));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        type,
        nameVar,
        typeInList,
        nameData,
        initValueDefault,
        initValueComment,
        toMap_,
        fromMap_,
        isCanNull,
        isArray,
        typeArray,
]);

  @override
  String toString() {
    return 'Varable(type: $type, nameVar: $nameVar, typeInList: $typeInList, nameData: $nameData, initValueDefault: $initValueDefault, initValueComment: $initValueComment, toMap_: $toMap_, fromMap_: $fromMap_, isCanNull: $isCanNull, isArray: $isArray, typeArray: $typeArray, )';
    }

}
