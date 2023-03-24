// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first



import 'package:turn_gen/src/update_gen/update_gen.dart';
/* only:copyWith */
class MainRunModel {            
  /* init: const []*/
  final List<UpdateRunModel> listRun;
  /* init: '' */
  final String basePath;

  // end
   
//          --TURN_GEN--
//           v0.6.7 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const MainRunModel({
    this.listRun = const [],
    this.basePath = '',
  });




  MainRunModel copyWith({
    List<UpdateRunModel>? listRun,
    String? basePath,
  }) {
    return MainRunModel(
      listRun: listRun ?? this.listRun, 
      basePath: basePath ?? this.basePath, 
    );
  }
  
  



}
