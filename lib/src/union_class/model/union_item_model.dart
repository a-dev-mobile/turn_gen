import 'package:collection/collection.dart';
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:turn_gen/src/src.dart';
import 'package:turn_gen/src/union_class/model/union_parameter_model.dart';

/* no: hash tojson fromjson*/
class UnionItemModel {           

  /* init: '' */
  final String nameUnion;
    /* init: '' */
  final String paramStr;

    /* init: const {} */
  final Map<String, String> mapNameWithTag;
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
    this.paramStr = '',
    this.mapNameWithTag = const {},
    this.listParameters = const[],
    this.parameter = EnumParameter.none,
  });
  /*
   factory UnionItemModel.init() => UnionItemModel(
      ); 
  */


  UnionItemModel copyWith({
    String? nameUnion,
    String? paramStr,
    Map<String, String>? mapNameWithTag,
    List<UnionParameterModel>? listParameters,
    EnumParameter? parameter,
  }) {
    return UnionItemModel(
      nameUnion: nameUnion ?? this.nameUnion, 
      paramStr: paramStr ?? this.paramStr, 
      mapNameWithTag: mapNameWithTag ?? this.mapNameWithTag, 
      listParameters: listParameters ?? this.listParameters, 
      parameter: parameter ?? this.parameter, 
    );
  }

  
  

      @override
  String toString() {
    return 'UnionItemModel(nameUnion: $nameUnion, paramStr: $paramStr, mapNameWithTag: $mapNameWithTag, listParameters: $listParameters, parameter: $parameter, )';
    }

}
