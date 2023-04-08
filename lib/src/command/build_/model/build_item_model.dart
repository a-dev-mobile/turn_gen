// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first

import 'package:turn_gen/src/enum_type_run.dart';

// turngen
/* only: copyWith */
class BuildItemModel {
  /* init: EnumTypeRun.none type: enum*/
  final EnumTypeRun enumTypeRun;
  /* init: '' */
  final String path;

  // end
   
//          --TURN_GEN--
//          v0.8.4 (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const BuildItemModel({
    this.enumTypeRun = EnumTypeRun.none,
    this.path = '',
  });




  BuildItemModel copyWith({
    EnumTypeRun? enumTypeRun,
    String? path,
  }) {
    return BuildItemModel(
      enumTypeRun: enumTypeRun ?? this.enumTypeRun, 
      path: path ?? this.path, 
    );
  }
  
  



}
