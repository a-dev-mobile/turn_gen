import 'package:turn_gen/src/src.dart';

/* no: hash tojson fromjson*/
class UnionItemModel {
  // end

//          --TURN_GEN--
//  *************************************
//           GENERATED CODE
//  *************************************

  const UnionItemModel({
    this.nameUnion = '',
    this.paramStr = '',
    this.mapNameWithTag = const {},
    this.listParameters = const [],
    this.parameter = EnumParameter.none,
  });

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
