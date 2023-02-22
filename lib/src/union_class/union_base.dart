// ignore_for_file: sort_constructors_first

import 'package:turn_gen/src/data_class/data_class.dart';

void main(List<String> args) {
  var union = const Union3.data(20);
  var union2 = const Union3.error();
  var union3 = const Union3.loading(isLoad: false);
  var union4 = const Union3(10);
  print(union2.when(
    data: (v) => 'data $v',
    loading: (v) => 'load $v',
    error: (v) => 'error $v',
    none: (value) => 'none $value',
  ));
}

class Union2 {
  Union2([double value = 20]);
  Union2.asd({double value = 20});
  Union2.asdw(bool a, {double value = 20});
  Union2.assdw(bool a, [double value = 20]);
  Union2.data(String a,
      [EnumKeySettingDataClass value = EnumKeySettingDataClass.init]);
  Union2.daeta(String a,
      {EnumKeySettingDataClass value = EnumKeySettingDataClass.init});
  Union2.loading([Map<String, int> isLoad = const {}]);
  Union2.error(String? message);
}

class Union3 {
  final _UnionTag _tag;
  final int? _value;
  final EnumKeySettingDataClass? _message;
  final bool? _isLoad;
  final double? _value_;
  const Union3([double value = 0])
      : _tag = _UnionTag.none,
        _value = null,
        _message = null,
        _value_ = value,
        _isLoad = null;
  const Union3.data([int value = 20])
      : _tag = _UnionTag.data,
        _value = value,
        _message = null,
        _value_ = null,
        _isLoad = null;

  const Union3.loading({required bool isLoad})
      : _tag = _UnionTag.loading,
        _value = null,
        _message = null,
        _value_ = null,
        _isLoad = isLoad;

  const Union3.error(
      [EnumKeySettingDataClass message = EnumKeySettingDataClass.init])
      : _tag = _UnionTag.error,
        _value = null,
        _message = message,
        _value_ = null,
        _isLoad = null;

  T when<T>({
    required T Function(int value) data,
    required T Function(bool isLoad) loading,
    required T Function(EnumKeySettingDataClass? message) error,
    required T Function(double value) none,
  }) {
    switch (_tag) {
      case _UnionTag.data:
        return data(_value ?? 20);
      case _UnionTag.loading:
        return loading(_isLoad!);
      case _UnionTag.error:
        return error(_message);
      case _UnionTag.none:
        return none(_value_ ?? 0);
    }
  }
}

enum _UnionTag {
  data,
  loading,
  error,
  none,
}

class Union {
  final _UnionTag _tag;
  final int? _value;
  final String? _errorMessage;

  const Union.data(int value)
      : _tag = _UnionTag.data,
        _value = value,
        _errorMessage = null;

  const Union.loading()
      : _tag = _UnionTag.loading,
        _value = null,
        _errorMessage = null;

  const Union.error({String? errorMessage})
      : _tag = _UnionTag.error,
        _value = null,
        _errorMessage = errorMessage;

  T when<T>(
    T Function(int value) data, {
    required T Function() loading,
    required T Function(String? errorMessage) error,
    required T Function(String? errorMessage) none,
  }) {
    switch (_tag) {
      case _UnionTag.data:
        return data(_value!);
      case _UnionTag.loading:
        return loading();
      case _UnionTag.error:
        return error(_errorMessage);
      case _UnionTag.none:
        return error(_errorMessage);
    }
  }
}
