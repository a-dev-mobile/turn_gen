import 'package:turn_gen/src/src.dart';

/// Equals Singleton class
class Equals {
  /// This class provides a factory constructor to ensure
  /// that only one instance
  /// of the class can ever exist.
  factory Equals() => _internalSingleton;
  Equals._internal();

  static final Equals _internalSingleton = Equals._internal();

  /// This can be used to generate boilerplate code for `equals`
  ///  methods in Dart classes, saving developers time and reducing the risk of errors.
  static String get({
    required EnumTypeVarable type,
    required String nameVar,
    required bool isLast,
  }) {
    final end = isLast ? ');\n' : ' &&\n';
    switch (type) {
      case EnumTypeVarable.list_:
      case EnumTypeVarable.list_bool_:
      case EnumTypeVarable.list_bool_null:
      case EnumTypeVarable.list_double_:
      case EnumTypeVarable.list_double_null:
      case EnumTypeVarable.list_dynamic_:
      case EnumTypeVarable.list_int_:
      case EnumTypeVarable.list_int_null:
      case EnumTypeVarable.list_map_int_dynamic_:
      case EnumTypeVarable.list_map_int_string_:
      case EnumTypeVarable.list_map_int_string_null:
      case EnumTypeVarable.list_string_:
      case EnumTypeVarable.list_string_null:
      case EnumTypeVarable.map_:
      case EnumTypeVarable.map_dynamic_dynamic_:
      case EnumTypeVarable.map_int_bool:
      case EnumTypeVarable.map_int_bool_null:
      case EnumTypeVarable.map_int_double:
      case EnumTypeVarable.map_int_double_null:
      case EnumTypeVarable.map_int_dynamic_:
      case EnumTypeVarable.map_int_string:
      case EnumTypeVarable.map_int_string_null:
      case EnumTypeVarable.map_string_bool:
      case EnumTypeVarable.map_string_bool_null:
      case EnumTypeVarable.map_string_double_:
      case EnumTypeVarable.map_string_double_null:
      case EnumTypeVarable.map_string_dynamic_:
      case EnumTypeVarable.map_string_int:
      case EnumTypeVarable.map_string_string:
      case EnumTypeVarable.map_string_int_null:
      case EnumTypeVarable.map_string_string_null:
      case EnumTypeVarable.set_:
      case EnumTypeVarable.set_string:
      case EnumTypeVarable.set_string_null:
      case EnumTypeVarable.set_int:
      case EnumTypeVarable.set_int_null:
      case EnumTypeVarable.set_bool:
      case EnumTypeVarable.set_bool_null:
      case EnumTypeVarable.set_double:
      case EnumTypeVarable.set_double_null:
      case EnumTypeVarable.list_data:
      case EnumTypeVarable.list_data_null:
      case EnumTypeVarable.list_map_string_dynamic_:
      case EnumTypeVarable.list_map_string_string_:
      case EnumTypeVarable.list_enum:
      case EnumTypeVarable.list_other:
      case EnumTypeVarable.list_enum_null:
        return '            const DeepCollectionEquality().equals(other.$nameVar, $nameVar,)$end';
      case EnumTypeVarable.bool_:
      case EnumTypeVarable.double_:
      case EnumTypeVarable.enum_:
      case EnumTypeVarable.int_:
      case EnumTypeVarable.num_:
      case EnumTypeVarable.string_:
      case EnumTypeVarable.none:
      case EnumTypeVarable.date_time:
      case EnumTypeVarable.dynamic_:
      case EnumTypeVarable.data:
      case EnumTypeVarable.color:
        return '(identical(other.$nameVar, $nameVar,) || other.$nameVar == $nameVar)$end';
      case EnumTypeVarable.null_:
        return 'error _getEquals';
    }
  }
}
