import 'package:collection/collection.dart';
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:turn_gen/src/src.dart';
import 'package:turn_gen/src/union_class/model/union_var_model.dart';

/* no: hash tojson fromjson*/
class UnionItemModel {         

  /* init: '' */
  final String nameUnion;
  /*   type: List<data>   init: const[]    */
  final List<UnionParameterModel> listParameters;
  /* type: enum   init: EnumParameter.none   */
  final EnumParameter parameter;

  // end
   
//          --TURN_GEN--
//  *************************************
//           GENERATED CODE 
//  *************************************
  
  const UnionItemModel({
    this.nameUnion = '',
    this.listParameters = const[],
    this.parameter = EnumParameter.none,
  });
  /*
   factory UnionItemModel.init() => UnionItemModel(
      ); 
  */


  UnionItemModel copyWith({
    String? nameUnion,
    List<UnionParameterModel>? listParameters,
    EnumParameter? parameter,
  }) {
    return UnionItemModel(
      nameUnion: nameUnion ?? this.nameUnion, 
      listParameters: listParameters ?? this.listParameters, 
      parameter: parameter ?? this.parameter, 
    );
  }

  
  

      @override
  String toString() {
    return 'UnionItemModel(nameUnion: $nameUnion, listParameters: $listParameters, parameter: $parameter, )';
    }

}
