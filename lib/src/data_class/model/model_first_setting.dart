// ignore_for_file: sort_constructors_first

import 'package:turn_gen/src/data_class/data_class.dart';

class FirstSetting {
  /* type: enum
  init:  EnumKeySetting.none
   */
  final EnumKeySettingDataClass keySetting;
  /* 
  type: List<data>
  init:  const <EnumValueSetting>[]
   */
  final List<EnumValueSettingDataClass> listValueSetting;
  // end

  const FirstSetting({
    this.keySetting = EnumKeySettingDataClass.none,
    this.listValueSetting = const <EnumValueSettingDataClass>[],
  });
}
