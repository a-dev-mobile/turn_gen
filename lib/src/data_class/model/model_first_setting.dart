// ignore_for_file: sort_constructors_first
import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:turn_gen/src/data_class/data_class.dart';

/* 
yes: eqitable
no: fromMap, toMap, fromJson, toJson, copyWith
 */
@immutable
class FirstSetting {     
/* init: false */
  final bool isUsed;
  /* type: enum
  init:  EnumUsedFeatures.init
   */
  final EnumUsedFeatures enumUsedFeatures;

  // end
   
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

  
  const FirstSetting({
    this.isUsed = false,
    this.enumUsedFeatures = EnumUsedFeatures.init,
  });
  /*
  
   factory FirstSetting.init() => FirstSetting(
      ); 
  */

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isUsed': isUsed, 
      'enumUsedFeatures': enumUsedFeatures.index, 
    };
  }

    
  factory FirstSetting.fromMap(Map<String, dynamic> map) {
    return FirstSetting(
      isUsed: map['isUsed'] as bool? ?? false, 
      enumUsedFeatures: EnumUsedFeatures.values[map['enumUsedFeatures'] as int], 
    );
  }

  FirstSetting copyWith({
    bool? isUsed,
    EnumUsedFeatures? enumUsedFeatures,
  }) {
    return FirstSetting(
      isUsed: isUsed ?? this.isUsed, 
      enumUsedFeatures: enumUsedFeatures ?? this.enumUsedFeatures, 
    );
  }
  
  String toJson() => json.encode(toMap());
  
    
  factory FirstSetting.fromJson(String source) => FirstSetting.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirstSetting &&
            (identical(other.isUsed, isUsed) || other.isUsed == isUsed)&& 
            (identical(other.enumUsedFeatures, enumUsedFeatures) || other.enumUsedFeatures == enumUsedFeatures));
  }
  
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isUsed,
        enumUsedFeatures,
]);
  
  @override
  String toString() {
    return 'FirstSetting(isUsed: $isUsed, enumUsedFeatures: $enumUsedFeatures, )';
    }
  }
