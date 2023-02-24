// ignore_for_file: sort_constructors_first

import 'package:turn_gen/src/data_class/data_class.dart';

class FirstSetting {
  /* type: enum
  init:  EnumKeySetting.none
   */
  final EnumKeySetting keySetting;
  /* 
  type: List<data>
  init:  const <EnumValueSetting>[]
   */
  final List<EnumValueSettingDataClass> listValueSetting;
  // end

  const FirstSetting({
    this.keySetting = EnumKeySetting.none,
    this.listValueSetting = const <EnumValueSettingDataClass>[],
  });
}
