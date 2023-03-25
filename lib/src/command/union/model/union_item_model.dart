// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'package:turn_gen/src/src.dart';

/* no: hash tojson fromjson*/
class UnionItemModel {
  /* init: '' */
  final String nameUnion;
  /* init: '' */
  final String paramStr;
  /* init: '' */
  final String comment;
  /* init: const {} */
  final Map<String, String> mapNameWithTag;
  /*   init: const[]    */
  final List<UnionParameterModel> listParameters;
  /*  init: EnumParameter.none   */
  final EnumParameter parameter;

  // end

//          --TURN_GEN--
//             v0.3.0
//  *************************************
//           GENERATED CODE
//  *************************************

  const UnionItemModel({
    this.nameUnion = '',
    this.paramStr = '',
    this.comment = '',
    this.mapNameWithTag = const {},
    this.listParameters = const [],
    this.parameter = EnumParameter.none,
  });
  /*
   factory UnionItemModel.init() => UnionItemModel(
      ); 
  */

  UnionItemModel copyWith({
    String? nameUnion,
    String? paramStr,
    String? comment,
    Map<String, String>? mapNameWithTag,
    List<UnionParameterModel>? listParameters,
    EnumParameter? parameter,
  }) {
    return UnionItemModel(
      nameUnion: nameUnion ?? this.nameUnion,
      paramStr: paramStr ?? this.paramStr,
      comment: comment ?? this.comment,
      mapNameWithTag: mapNameWithTag ?? this.mapNameWithTag,
      listParameters: listParameters ?? this.listParameters,
      parameter: parameter ?? this.parameter,
    );
  }

  @override
  String toString() {
    return 'UnionItemModel(nameUnion: $nameUnion, paramStr: $paramStr, comment: $comment, mapNameWithTag: $mapNameWithTag, listParameters: $listParameters, parameter: $parameter, )';
  }
}
