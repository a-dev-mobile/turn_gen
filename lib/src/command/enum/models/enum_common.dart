// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions

import 'package:turn_gen/src/src.dart';

/* no: hash tojson fromjson*/
class EnumCommonModel {
  /* init: '' */
  final String nameFile;
  /* init: '' */
  final String nameClass;
  /* init: EnumTypeVarable.none*/
  final EnumTypeVarable typeEnum;
  /* init: '' */
  final String nameValue;
  /* init: '' */
  final String headerClass;
  /* init: '' */
  final String contentFile;
  /* init: '' */
  final String contentToEnd;

  /* init: false */
  final bool isDefault;
  /* init: false */
  final bool isCanNull;
  /* init: false */
  final bool isShowComment;
  /* init: const []*/
  final List<EnumItemModel> listItem;

  // end

//          --TURN_GEN--
//             v0.4.7
//  *************************************
//           GENERATED CODE
//  *************************************

  const EnumCommonModel({
    this.nameFile = '',
    this.nameClass = '',
    this.typeEnum = EnumTypeVarable.none,
    this.nameValue = '',
    this.headerClass = '',
    this.contentFile = '',
    this.contentToEnd = '',
    this.isDefault = false,
    this.isCanNull = false,
    this.isShowComment = false,
    this.listItem = const [],
  });

  EnumCommonModel copyWith({
    String? nameFile,
    String? nameClass,
    EnumTypeVarable? typeEnum,
    String? nameValue,
    String? headerClass,
    String? contentFile,
    String? contentToEnd,
    bool? isDefault,
    bool? isCanNull,
    bool? isShowComment,
    List<EnumItemModel>? listItem,
  }) {
    return EnumCommonModel(
      nameFile: nameFile ?? this.nameFile,
      nameClass: nameClass ?? this.nameClass,
      typeEnum: typeEnum ?? this.typeEnum,
      nameValue: nameValue ?? this.nameValue,
      headerClass: headerClass ?? this.headerClass,
      contentFile: contentFile ?? this.contentFile,
      contentToEnd: contentToEnd ?? this.contentToEnd,
      isDefault: isDefault ?? this.isDefault,
      isCanNull: isCanNull ?? this.isCanNull,
      isShowComment: isShowComment ?? this.isShowComment,
      listItem: listItem ?? this.listItem,
    );
  }

  @override
  String toString() {
    return 'EnumV2CommonModel(nameFile: $nameFile, nameClass: $nameClass, typeEnum: $typeEnum, nameValue: $nameValue, headerClass: $headerClass, contentFile: $contentFile, contentToEnd: $contentToEnd, isDefault: $isDefault, isCanNull: $isCanNull, isShowComment: $isShowComment, listItem: $listItem, )';
  }
}
