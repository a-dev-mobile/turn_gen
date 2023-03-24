// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:turn_gen/src/enum_type_run.dart';
/* only: copyWith */
class UpdateRunModel {          
  /* init: TypeRun.none type: enum*/
  final TypeRun enumTypeRun;
  /* init: '' */
  final String path;

  // end
   
//          --TURN_GEN--
//           v0.6.7 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const UpdateRunModel({
    this.enumTypeRun = TypeRun.none,
    this.path = '',
  });




  UpdateRunModel copyWith({
    TypeRun? enumTypeRun,
    String? path,
  }) {
    return UpdateRunModel(
      enumTypeRun: enumTypeRun ?? this.enumTypeRun, 
      path: path ?? this.path, 
    );
  }
  
  



}
