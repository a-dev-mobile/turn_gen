// ignore_for_file: sort_constructors_first

import 'package:turn_gen/src/common/enum_type_variable.dart';

/* no: hash tojson fromjson*/
class UnionParameterModel {  
  /* init: '' */
  final String typeStr;
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
    this.typeStr = '',
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
    String? typeStr,
    String? name,
    bool? isCanNull,
    String? initValue,
    bool? isRequired,
  }) {
    return UnionParameterModel(
      typeStr: typeStr ?? this.typeStr, 
      name: name ?? this.name, 
      isCanNull: isCanNull ?? this.isCanNull, 
      initValue: initValue ?? this.initValue, 
      isRequired: isRequired ?? this.isRequired, 
    );
  }

  
  

      @override
  String toString() {
    return 'UnionParameterModel(typeStr: $typeStr, name: $name, isCanNull: $isCanNull, initValue: $initValue, isRequired: $isRequired, )';
    }

}
