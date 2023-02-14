part of 'run_data_class.dart';

String _getHashCode(Varable v) {
  final type = v.type;
  final name = v.name;
  const end = ',\n';
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

    case EnumTypeVarable.set_int:
    case EnumTypeVarable.set_int_null:
    case EnumTypeVarable.set_:
    case EnumTypeVarable.set_string:
    case EnumTypeVarable.set_string_null:
    case EnumTypeVarable.set_bool:
    case EnumTypeVarable.set_bool_null:
    case EnumTypeVarable.set_double:
    case EnumTypeVarable.set_double_null:
    case EnumTypeVarable.list_other:
    case EnumTypeVarable.list_data:
    case EnumTypeVarable.list_data_null:
      return '        const DeepCollectionEquality().hash($name,)$end';
    case EnumTypeVarable.bool_:
    case EnumTypeVarable.double_:
    case EnumTypeVarable.enum_:
    case EnumTypeVarable.int_:
    case EnumTypeVarable.num_:
    case EnumTypeVarable.string_:
    case EnumTypeVarable.none_:
    case EnumTypeVarable.date_time:
    case EnumTypeVarable.data:
      return '        $name$end';
     
  }
}
