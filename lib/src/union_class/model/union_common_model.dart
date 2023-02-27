// ignore_for_file: sort_constructors_first

import 'package:turn_gen/src/union_class/union_class.dart';

/* no: hash tojson fromjson*/
class UnionCommonModel { 
  /* init: '' */
  final String nameClass;
  /* init: '' */
  final String contentToEnd;
  /* init: const [] */
  final List<String> listParams;

  /* init: const [] type: List<data>*/
  final List<UnionItemModel> listUnion;

  // end
   
//          --TURN_GEN--
//  *************************************
//           GENERATED CODE 
//  *************************************
  
  const UnionCommonModel({
    this.nameClass = '',
    this.contentToEnd = '',
    this.listParams = const [],
    this.listUnion = const [],
  });
  /*
   factory UnionCommonModel.init() => UnionCommonModel(
      ); 
  */


  UnionCommonModel copyWith({
    String? nameClass,
    String? contentToEnd,
    List<String>? listParams,
    List<UnionItemModel>? listUnion,
  }) {
    return UnionCommonModel(
      nameClass: nameClass ?? this.nameClass, 
      contentToEnd: contentToEnd ?? this.contentToEnd, 
      listParams: listParams ?? this.listParams, 
      listUnion: listUnion ?? this.listUnion, 
    );
  }

  
  

      @override
  String toString() {
    return 'UnionCommonModel(nameClass: $nameClass, contentToEnd: $contentToEnd, listParams: $listParams, listUnion: $listUnion, )';
    }

}
