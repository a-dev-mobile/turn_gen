import 'package:collection/collection.dart';
// ignore_for_file: sort_constructors_first
import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:turn_gen/src/data_class/data_class.dart';

@immutable
class FirstSetting {     

  /* type: enum
  init:  EnumKeySetting.none
   */
  final EnumKeySetting keySetting;
  /* 
  type: List<data>
  init:  const <EnumValueSetting>[]
   */
  final List<EnumValueSetting> listValueSetting;
  // end
   
  
  
  const FirstSetting({
    this.keySetting = EnumKeySetting.none,
    this.listValueSetting = const <EnumValueSetting>[],
  });
 
  }
