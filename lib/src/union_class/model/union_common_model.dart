// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions

import 'package:turn_gen/src/union_class/union_class.dart';

/* no: hash tojson fromjson*/
class UnionCommonModel {
  /* init: '' */
  final String nameClass;
  /* init: '' */
  final String classHeader;
  /* init: '' */
  final String comments;
  /* init: '' */
  final String contentToEnd;
  /* init: const [] */
  final List<String> listParams;

  /* init: const []*/
  final List<UnionItemModel> listUnion;

  // end

//          --TURN_GEN--
//             v0.3.0
//  *************************************
//           GENERATED CODE
//  *************************************

  const UnionCommonModel({
    this.nameClass = '',
    this.classHeader = '',
    this.comments = '',
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
    String? classHeader,
    String? comments,
    String? contentToEnd,
    List<String>? listParams,
    List<UnionItemModel>? listUnion,
  }) {
    return UnionCommonModel(
      nameClass: nameClass ?? this.nameClass,
      classHeader: classHeader ?? this.classHeader,
      comments: comments ?? this.comments,
      contentToEnd: contentToEnd ?? this.contentToEnd,
      listParams: listParams ?? this.listParams,
      listUnion: listUnion ?? this.listUnion,
    );
  }

  @override
  String toString() {
    return 'UnionCommonModel(nameClass: $nameClass, classHeader: $classHeader, comments: $comments, contentToEnd: $contentToEnd, listParams: $listParams, listUnion: $listUnion, )';
  }
}
