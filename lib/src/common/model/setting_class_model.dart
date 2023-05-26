// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first

import 'package:turn_gen/src/src.dart';

// turngen
/* only: copyWith */
class SettingClassModel {
  /*   init:  EnumKeySetting.none   */
  final EnumKeySetting keySetting;
  /*   init:  const []   */
  final List<EnumSettingClass> listValueSetting;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const SettingClassModel({
    this.keySetting = EnumKeySetting.none,
    this.listValueSetting = const [],
  });

  SettingClassModel copyWith({
    EnumKeySetting? keySetting,
    List<EnumSettingClass>? listValueSetting,
  }) {
    return SettingClassModel(
      keySetting: keySetting ?? this.keySetting,
      listValueSetting: listValueSetting ?? this.listValueSetting,
    );
  }
}
