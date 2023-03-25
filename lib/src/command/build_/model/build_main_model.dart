// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first

import 'package:turn_gen/src/src.dart';

/* only:copyWith */
class BuildMainModel {  
  /* init: const []*/
  final List<BuildItemModel> listRun;
  /* init: '' */
  final String basePath;

  // end
   
//          --TURN_GEN--
//          v0.7.1 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const BuildMainModel({
    this.listRun = const [],
    this.basePath = '',
  });




  BuildMainModel copyWith({
    List<BuildItemModel>? listRun,
    String? basePath,
  }) {
    return BuildMainModel(
      listRun: listRun ?? this.listRun, 
      basePath: basePath ?? this.basePath, 
    );
  }
  
  



}
