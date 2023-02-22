// ignore_for_file: sort_constructors_first

import 'dart:async';

@pragma('vm:entry-point')
void main() {
  var union = const Union.data(20);
  var union2 = const Union.error(errorMessage: 'asd');
  var union3 = const Union.loading();


// print(
//   union2.when(
//     (int value) => 'Data $value',
//     loading: () => 'loading',
//     error: (String? message) => 'Error: $message',
//   ),
// );
}

enum _UnionTag {
  data,
  loading,
  error,
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

  const Union.error({required String errorMessage})
      : _tag = _UnionTag.error,
        _value = null,
        _errorMessage = errorMessage;

  T when<T>(
    T Function(int? value) data, {
    required T Function() loading,
    required T Function(String? errorMessage) error,
  }) {
    switch (_tag) {
      case _UnionTag.data:
        return data(_value!);
      case _UnionTag.loading:
        return loading();
      case _UnionTag.error:
        return error(_errorMessage);
    }
  }
}
