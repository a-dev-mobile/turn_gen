// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions

/* no: hash tojson fromjson*/
import 'package:turn_gen/src/src.dart';

/* only: copywith */
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
  /* init: false */
  final bool isHaveOnlyList;
  /* init: const []*/
  final List<UnionItemModel> listUnion;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const UnionCommonModel({
    this.nameClass = '',
    this.classHeader = '',
    this.comments = '',
    this.contentToEnd = '',
    this.listParams = const [],
    this.isHaveOnlyList = false,
    this.listUnion = const [],
  });

  UnionCommonModel copyWith({
    String? nameClass,
    String? classHeader,
    String? comments,
    String? contentToEnd,
    List<String>? listParams,
    bool? isHaveOnlyList,
    List<UnionItemModel>? listUnion,
  }) {
    return UnionCommonModel(
      nameClass: nameClass ?? this.nameClass,
      classHeader: classHeader ?? this.classHeader,
      comments: comments ?? this.comments,
      contentToEnd: contentToEnd ?? this.contentToEnd,
      listParams: listParams ?? this.listParams,
      isHaveOnlyList: isHaveOnlyList ?? this.isHaveOnlyList,
      listUnion: listUnion ?? this.listUnion,
    );
  }
}
