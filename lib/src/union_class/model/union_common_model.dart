// ignore_for_file: sort_constructors_first

import 'package:turn_gen/src/union_class/union_class.dart';

/* no: hash tojson fromjson*/
class UnionCommonModel { 
  /* init: '' */
  final String nameClass;

  /* init: const [] */
  final List<String> unionTag;

  /* init: const [] type: List<data>*/
  final List<UnionItemModel> listUnion;

  // end
   
//          --TURN_GEN--
//  *************************************
//           GENERATED CODE 
//  *************************************
  
  const UnionCommonModel({
    this.nameClass = '',
    this.unionTag = const [],
    this.listUnion = const [],
  });
  /*
   factory UnionCommonModel.init() => UnionCommonModel(
      ); 
  */


  UnionCommonModel copyWith({
    String? nameClass,
    List<String>? unionTag,
    List<UnionItemModel>? listUnion,
  }) {
    return UnionCommonModel(
      nameClass: nameClass ?? this.nameClass, 
      unionTag: unionTag ?? this.unionTag, 
      listUnion: listUnion ?? this.listUnion, 
    );
  }

  
  

      @override
  String toString() {
    return 'UnionCommonModel(nameClass: $nameClass, unionTag: $unionTag, listUnion: $listUnion, )';
    }

}
