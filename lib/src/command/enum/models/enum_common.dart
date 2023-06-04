// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions

import 'package:turn_gen/src/src.dart';

/* no: hash tojson fromjson*/
class EnumCommonModel {
  /* init: '' */
  final String nameClass;

  /* init: '' */
  final String headerClass;
  /* init: '' */
  final String contentFile;
  /* init: '' */
  final String contentToEnd;

  /* init: false */
  final bool isDefault;

  /* init: false */
  final bool isShowComment;
  /* init: const []*/
  final List<EnumItemModel> listItem;
  /* init: const []*/
  final List<EnumParamItemModel> listParam;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const EnumCommonModel({
    this.nameClass = '',
    this.headerClass = '',
    this.contentFile = '',
    this.contentToEnd = '',
    this.isDefault = false,
    this.isShowComment = false,
    this.listItem = const [],
    this.listParam = const [],
  });

  EnumCommonModel copyWith({
    String? nameClass,
    String? headerClass,
    String? contentFile,
    String? contentToEnd,
    bool? isDefault,
    bool? isShowComment,
    List<EnumItemModel>? listItem,
    List<EnumParamItemModel>? listParam,
  }) {
    return EnumCommonModel(
      nameClass: nameClass ?? this.nameClass,
      headerClass: headerClass ?? this.headerClass,
      contentFile: contentFile ?? this.contentFile,
      contentToEnd: contentToEnd ?? this.contentToEnd,
      isDefault: isDefault ?? this.isDefault,
      isShowComment: isShowComment ?? this.isShowComment,
      listItem: listItem ?? this.listItem,
      listParam: listParam ?? this.listParam,
    );
  }

  @override
  String toString() {
    return 'EnumCommonModel(nameClass: $nameClass, headerClass: $headerClass, contentFile: $contentFile, contentToEnd: $contentToEnd, isDefault: $isDefault, isShowComment: $isShowComment, listItem: $listItem, listParam: $listParam, )';
  }
}
