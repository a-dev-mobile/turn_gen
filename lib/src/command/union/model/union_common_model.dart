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
  /* init: '' */
  final String contentFile;
  /* init: const [] */
  final List<String> listParams;
  /* init: false */
  final bool isHaveOnlyList;
  /* init: const []*/
  final List<UnionItemModel> listUnion;
  /* init: const []*/
  final List<SettingClassModel> listSettingClass;
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
    this.contentFile = '',
    this.listParams = const [],
    this.isHaveOnlyList = false,
    this.listUnion = const [],
    this.listSettingClass = const [],
  });

  UnionCommonModel copyWith({
    String? nameClass,
    String? classHeader,
    String? comments,
    String? contentToEnd,
    String? contentFile,
    List<String>? listParams,
    bool? isHaveOnlyList,
    List<UnionItemModel>? listUnion,
    List<SettingClassModel>? listSettingClass,
  }) {
    return UnionCommonModel(
      nameClass: nameClass ?? this.nameClass,
      classHeader: classHeader ?? this.classHeader,
      comments: comments ?? this.comments,
      contentToEnd: contentToEnd ?? this.contentToEnd,
      contentFile: contentFile ?? this.contentFile,
      listParams: listParams ?? this.listParams,
      isHaveOnlyList: isHaveOnlyList ?? this.isHaveOnlyList,
      listUnion: listUnion ?? this.listUnion,
      listSettingClass: listSettingClass ?? this.listSettingClass,
    );
  }
}
