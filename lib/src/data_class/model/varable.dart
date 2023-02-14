// ignore_for_file: sort_constructors_first
// ignore_for_file: prefer_const_constructors_in_immutables,
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:turn_gen/src/data_class/enum/enum.dart';

@immutable
class Varable {   
/* type: enum 
init: EnumTypeVarable.none_
 */
  final EnumTypeVarable type;
  /* init:'' */
  final String name;
  /* init:'' */
  final String nameObject;
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
// end
   
//          --TURN_GEN--
//  *************************************
//           GENERATED CODE 
//  *************************************
  
  const Varable({
    this.type = EnumTypeVarable.none_,
    this.name = '',
    this.nameObject = '',
    this.initValueDefault = '',
    this.initValueComment = '',
    this.toMap_ = '',
    this.fromMap_ = '',
    this.isCanNull = false,
  });
  /*
  
   factory Varable.init() => Varable(
      ); 
  */

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type.index, 
      'name': name, 
      'nameObject': nameObject, 
      'initValueDefault': initValueDefault, 
      'initValueComment': initValueComment, 
      'toMap_': toMap_, 
      'fromMap_': fromMap_, 
      'isCanNull': isCanNull, 
    };
  }

    
  factory Varable.fromMap(Map<String, dynamic> map) {
    return Varable(
      type: EnumTypeVarable.values[map['type'] as int], 
      name: map['name'] as String? ?? '' , 
      nameObject: map['nameObject'] as String? ?? '' , 
      initValueDefault: map['initValueDefault'] as String? ?? '' , 
      initValueComment: map['initValueComment'] as String? ?? '' , 
      toMap_: map['toMap_'] as String? ?? '' , 
      fromMap_: map['fromMap_'] as String? ?? '' , 
      isCanNull: map['isCanNull'] as bool? ?? false, 
    );
  }

  Varable copyWith({
    EnumTypeVarable? type,
    String? name,
    String? nameObject,
    String? initValueDefault,
    String? initValueComment,
    String? toMap_,
    String? fromMap_,
    bool? isCanNull,
  }) {
    return Varable(
      type: type ?? this.type, 
      name: name ?? this.name, 
      nameObject: nameObject ?? this.nameObject, 
      initValueDefault: initValueDefault ?? this.initValueDefault, 
      initValueComment: initValueComment ?? this.initValueComment, 
      toMap_: toMap_ ?? this.toMap_, 
      fromMap_: fromMap_ ?? this.fromMap_, 
      isCanNull: isCanNull ?? this.isCanNull, 
    );
  }
  
  String toJson() => json.encode(toMap());
  
    
  factory Varable.fromJson(String source) => Varable.fromMap(json.decode(source) as Map<String, dynamic>,);
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Varable &&
            (identical(other.type, type) || other.type == type)&& 
            (identical(other.name, name) || other.name == name)&& 
            (identical(other.nameObject, nameObject) || other.nameObject == nameObject)&& 
            (identical(other.initValueDefault, initValueDefault) || other.initValueDefault == initValueDefault)&& 
            (identical(other.initValueComment, initValueComment) || other.initValueComment == initValueComment)&& 
            (identical(other.toMap_, toMap_) || other.toMap_ == toMap_)&& 
            (identical(other.fromMap_, fromMap_) || other.fromMap_ == fromMap_)&& 
            (identical(other.isCanNull, isCanNull) || other.isCanNull == isCanNull));
  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        type,
        name,
        nameObject,
        initValueDefault,
        initValueComment,
        toMap_,
        fromMap_,
        isCanNull,
]);
  
  @override
  String toString() {
    return 'Varable(type: $type, name: $name, nameObject: $nameObject, initValueDefault: $initValueDefault, initValueComment: $initValueComment, toMap_: $toMap_, fromMap_: $fromMap_, isCanNull: $isCanNull, )';
    }
  }
