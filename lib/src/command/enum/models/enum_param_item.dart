import 'package:turn_gen/src/src.dart';
// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions

// turngen

/* only: copywith*/
class EnumParamItemModel {
  /* init: '' */
  final String name;
  /* init: EnumTypeVarable.none */
  final EnumTypeVarable enumTypeVarable;
  /* init:false */
  final bool isCanNull;

  //тип параметра
  /* init:'' */
  final String nameObject;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const EnumParamItemModel({
    this.name = '',
    this.enumTypeVarable = EnumTypeVarable.none,
    this.isCanNull = false,
    this.nameObject = '',
  });

  EnumParamItemModel copyWith({
    String? name,
    EnumTypeVarable? enumTypeVarable,
    bool? isCanNull,
    String? nameObject,
  }) {
    return EnumParamItemModel(
      name: name ?? this.name,
      enumTypeVarable: enumTypeVarable ?? this.enumTypeVarable,
      isCanNull: isCanNull ?? this.isCanNull,
      nameObject: nameObject ?? this.nameObject,
    );
  }
}
