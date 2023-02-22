// ignore_for_file: sort_constructors_first


import 'package:turn_gen/src/common/enum_type_variable.dart';

/* no: hash tojson fromjson*/
class UnionParameterModel {         

  /* type: enum init: EnumTypeVarable.none */
  final EnumTypeVarable enumType;
  /* init: '' */
  final String name;
  /* init: false */
  final bool isCanNull;
  /* init:'' */
  final String initValue;
    /* init: false */
  final bool isRequired;
  // end
   
//          --TURN_GEN--
//  *************************************
//           GENERATED CODE 
//  *************************************
  
  const UnionParameterModel({
    this.enumType = EnumTypeVarable.none,
    this.name = '',
    this.isCanNull = false,
    this.initValue = '',
    this.isRequired = false,
  });
  /*
   factory UnionParameterModel.init() => UnionParameterModel(
      ); 
  */


  UnionParameterModel copyWith({
    EnumTypeVarable? enumType,
    String? name,
    bool? isCanNull,
    String? initValue,
    bool? isRequired,
  }) {
    return UnionParameterModel(
      enumType: enumType ?? this.enumType, 
      name: name ?? this.name, 
      isCanNull: isCanNull ?? this.isCanNull, 
      initValue: initValue ?? this.initValue, 
      isRequired: isRequired ?? this.isRequired, 
    );
  }

  
  

      @override
  String toString() {
    return 'UnionParameterModel(enumType: $enumType, name: $name, isCanNull: $isCanNull, initValue: $initValue, isRequired: $isRequired, )';
    }

}
