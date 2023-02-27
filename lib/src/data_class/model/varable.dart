// ignore_for_file: sort_constructors_first
// ignore_for_file: prefer_const_constructors_in_immutables,

import 'package:turn_gen/src/src.dart';

class Varable {
/* type: enum 
init: EnumTypeVarable.none
 */
  final EnumTypeVarable type;
  /* init:'' */
  //variable name
  final String nameVar;
  /* init:'' */
  //variable type name
  final String nameData;
  /* init:'' */
  final String initValueDefault;
  /* init:'' */
  final String initValueComment;
  /* init:'' */
  final String toMap_;
  /* init:'' */
  final String fromMap_;
  /* init:false */
  final bool isCanNull;
  /* init:false */
  final bool isArray;
  /* type: enum 
init: EnumTypeVarable.none
 */
  final EnumTypeVarable typeArray;
// end

  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

  const Varable({
    this.type = EnumTypeVarable.none,
    this.nameVar = '',
    this.nameData = '',
    this.initValueDefault = '',
    this.initValueComment = '',
    this.toMap_ = '',
    this.fromMap_ = '',
    this.isCanNull = false,
    this.isArray = false,
    this.typeArray = EnumTypeVarable.none,
  });

  Varable copyWith({
    EnumTypeVarable? type,
    String? nameVar,
    String? nameData,
    String? initValueDefault,
    String? initValueComment,
    String? toMap_,
    String? fromMap_,
    bool? isCanNull,
    bool? isArray,
    EnumTypeVarable? typeArray,
  }) {
    return Varable(
      type: type ?? this.type,
      nameVar: nameVar ?? this.nameVar,
      nameData: nameData ?? this.nameData,
      initValueDefault: initValueDefault ?? this.initValueDefault,
      initValueComment: initValueComment ?? this.initValueComment,
      toMap_: toMap_ ?? this.toMap_,
      fromMap_: fromMap_ ?? this.fromMap_,
      isCanNull: isCanNull ?? this.isCanNull,
      isArray: isArray ?? this.isArray,
      typeArray: typeArray ?? this.typeArray,
    );
  }
}
