// ignore_for_file: sort_constructors_first, avoid_equals_and_hash_code_on_mutable_classes

import 'package:turn_gen/src/src.dart';

/* no:  tojson fromjson*/
class UnionParameterModel {
  /* init: '' */
  final String typeStr;
  /* init: EnumTypeVarable.none type: enum */
  final EnumTypeVarable typeEnum;

  /* init: '' */
  final String name;
  /* init: const {} type: Map<EnumKeySetting, String> */
  final Map<EnumKeySetting, String> mapSetting;
  /* init: false */
  final bool isCanNull;
  /* init:'' */
  final String initValue;
  /* init: false */
  final bool isRequired;
  // end

//          --TURN_GEN--
//  *************************************
//           GENERATED CODE
//  *************************************

  const UnionParameterModel({
    this.typeStr = '',
    this.typeEnum = EnumTypeVarable.none,
    this.name = '',
    this.mapSetting = const {},
    this.isCanNull = false,
    this.initValue = '',
    this.isRequired = false,
  });
  /*
   factory UnionParameterModel.init() => UnionParameterModel(
      ); 
  */

  UnionParameterModel copyWith({
    String? typeStr,
    EnumTypeVarable? typeEnum,
    String? name,
    Map<EnumKeySetting, String>? mapSetting,
    bool? isCanNull,
    String? initValue,
    bool? isRequired,
  }) {
    return UnionParameterModel(
      typeStr: typeStr ?? this.typeStr,
      typeEnum: typeEnum ?? this.typeEnum,
      name: name ?? this.name,
      mapSetting: mapSetting ?? this.mapSetting,
      isCanNull: isCanNull ?? this.isCanNull,
      initValue: initValue ?? this.initValue,
      isRequired: isRequired ?? this.isRequired,
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnionParameterModel &&
            (identical(other.typeStr, typeStr) || other.typeStr == typeStr) &&
            (identical(other.typeEnum, typeEnum) ||
                other.typeEnum == typeEnum) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mapSetting, mapSetting) ||
                other.mapSetting == mapSetting) &&
            (identical(other.isCanNull, isCanNull) ||
                other.isCanNull == isCanNull) &&
            (identical(other.initValue, initValue) ||
                other.initValue == initValue) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        typeStr,
        typeEnum,
        name,
        mapSetting,
        isCanNull,
        initValue,
        isRequired,
      ]);
  @override
  String toString() {
    return 'UnionParameterModel(typeStr: $typeStr, typeEnum: $typeEnum, name: $name, mapSetting: $mapSetting, isCanNull: $isCanNull, initValue: $initValue, isRequired: $isRequired, )';
  }
}
