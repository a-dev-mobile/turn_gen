import 'package:meta/meta.dart';
import 'package:turn_gen/src/data_class/data_class.dart';

@immutable
class FirstSetting {
  // end

  const FirstSetting({
    this.keySetting = EnumKeySetting.none,
    this.listValueSetting = const <EnumValueSetting>[],
  });

  /* type: enum
  init:  EnumKeySetting.none
   */
  final EnumKeySetting keySetting;
  /* 
  type: List<data>
  init:  const <EnumValueSetting>[]
   */
  final List<EnumValueSetting> listValueSetting;
}
