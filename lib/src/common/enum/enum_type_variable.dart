// ignore_for_file: avoid-non-null-assertion, non_constant_identifier_names, constant_identifier_names
// turngen
enum EnumTypeVarable implements Comparable<EnumTypeVarable> {
  enum_('enum'),
  string_('String'),
  bool_('bool'),
  int_('int'),
  double_('double'),
  dynamic_('dynamic'),
  num_('num'),
  list_('List'),
  color('Color'),
  list_bool_('List<bool>'),
  list_other('List<Object>'),
  list_int_('List<int>'),
  list_string_('List<String>'),
  list_double_('List<double>'),
  list_bool_null('List<bool?>'),
  list_int_null('List<int?>'),
  list_string_null('List<String?>'),
  list_double_null('List<double?>'),
  list_dynamic_('List<dynamic>'),
  list_map_int_string_('List<Map<int, String>>'),
  list_map_int_string_null('List<Map<int, String?>>'),
  list_map_int_dynamic_('List<Map<int, dynamic>>'),
  list_map_string_dynamic_('List<Map<String, dynamic>>'),
  list_map_string_string_('List<Map<String, String>>'),
  set_('Set'),
  set_string('Set<String>'),
  set_string_null('Set<String?>'),
  set_int('Set<int>'),
  set_int_null('Set<int?>'),
  set_bool('Set<bool>'),
  set_bool_null('Set<bool?>'),
  set_double('Set<double>'),
  set_double_null('Set<double?>'),
  map_('Map'),
  map_string_dynamic_('Map<String, dynamic>'),
  map_string_bool('Map<String, bool>'),
  map_string_int('Map<String, int>'),
  map_string_string('Map<String, String>'),
  map_string_double_('Map<String, double>'),
  map_string_bool_null('Map<String, bool?>'),
  map_string_int_null('Map<String, int?>'),
  map_string_string_null('Map<String, String?>'),
  map_string_double_null('Map<String, double?>'),
  map_int_string('Map<int, String>'),
  map_int_string_null('Map<int, String?>'),
  map_int_double('Map<int, double>'),
  map_int_double_null('Map<int, double?>'),
  map_int_bool('Map<int, bool>'),
  map_int_bool_null('Map<int, bool?>'),
  map_int_dynamic_('Map<int, dynamic>'),
  date_time('DateTime'),
  map_dynamic_dynamic_('Map<dynamic, dynamic>'),
  data('data'),
  list_data('List<data>'),
  list_enum('List<enum>'),
  list_enum_null('List<enum?>'),
  list_data_null('List<data?>'),
  null_('Null'),
  none('none');

  const EnumTypeVarable(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumTypeVarable fromValue(
    String? value, {
    EnumTypeVarable? fallback,
  }) {
    switch (value) {
      case 'enum':
        return enum_;
      case 'String':
        return string_;
      case 'bool':
        return bool_;
      case 'int':
        return int_;
      case 'double':
        return double_;
      case 'dynamic':
        return dynamic_;
      case 'List':
        return list_;
      case 'Color':
        return color;
      case 'List<bool>':
        return list_bool_;
      case 'List<Object>':
        return list_other;
      case 'List<int>':
        return list_int_;
      case 'List<String>':
        return list_string_;
      case 'List<double>':
        return list_double_;
      case 'List<bool?>':
        return list_bool_null;
      case 'List<int?>':
        return list_int_null;
      case 'List<String?>':
        return list_string_null;
      case 'List<double?>':
        return list_double_null;
      case 'List<dynamic>':
        return list_dynamic_;
      case 'List<Map<int, String>>':
        return list_map_int_string_;
      case 'List<Map<int, String?>>':
        return list_map_int_string_null;
      case 'List<Map<int, dynamic>>':
        return list_map_int_dynamic_;
      case 'List<Map<String, dynamic>>':
        return list_map_string_dynamic_;
      case 'List<Map<String, String>>':
        return list_map_string_string_;
      case 'Set':
        return set_;
      case 'Set<String>':
        return set_string;
      case 'Set<String?>':
        return set_string_null;
      case 'Set<int>':
        return set_int;
      case 'Set<int?>':
        return set_int_null;
      case 'Set<bool>':
        return set_bool;
      case 'Set<bool?>':
        return set_bool_null;
      case 'Set<double>':
        return set_double;
      case 'Set<double?>':
        return set_double_null;
      case 'Map':
        return map_;
      case 'Map<String, bool>':
        return map_string_bool;
      case 'Map<String, int>':
        return map_string_int;
      case 'Map<String, String>':
        return map_string_string;
      case 'Map<String, double>':
        return map_string_double_;
      case 'Map<String, bool?>':
        return map_string_bool_null;
      case 'Map<String, int?>':
        return map_string_int_null;
      case 'Map<String, String?>':
        return map_string_string_null;
      case 'Map<String, double?>':
        return map_string_double_null;
      case 'Map<int, String>':
        return map_int_string;
      case 'Map<int, double>':
        return map_int_double;
      case 'Map<int, double?>':
        return map_int_double_null;
      case 'Map<int, bool>':
        return map_int_bool;
      case 'Map<int, bool?>':
        return map_int_bool_null;
      case 'DateTime':
        return date_time;
      case 'Map<dynamic, dynamic>':
        return map_dynamic_dynamic_;
      case 'data':
        return data;
      case 'List<data>':
        return list_data;
      case 'List<enum>':
        return list_enum;
      case 'List<enum?>':
        return list_enum_null;
      case 'List<data?>':
        return list_data_null;
      case 'Null':
        return null_;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumTypeVarable',
            ));
    }
  }

  T map<T>({
    required T Function() enum_,
    required T Function() string_,
    required T Function() bool_,
    required T Function() int_,
    required T Function() double_,
    required T Function() dynamic_,
    required T Function() num_,
    required T Function() list_,
    required T Function() color,
    required T Function() list_bool_,
    required T Function() list_other,
    required T Function() list_int_,
    required T Function() list_string_,
    required T Function() list_double_,
    required T Function() list_bool_null,
    required T Function() list_int_null,
    required T Function() list_string_null,
    required T Function() list_double_null,
    required T Function() list_dynamic_,
    required T Function() list_map_int_string_,
    required T Function() list_map_int_string_null,
    required T Function() list_map_int_dynamic_,
    required T Function() list_map_string_dynamic_,
    required T Function() list_map_string_string_,
    required T Function() set_,
    required T Function() set_string,
    required T Function() set_string_null,
    required T Function() set_int,
    required T Function() set_int_null,
    required T Function() set_bool,
    required T Function() set_bool_null,
    required T Function() set_double,
    required T Function() set_double_null,
    required T Function() map_,
    required T Function() map_string_dynamic_,
    required T Function() map_string_bool,
    required T Function() map_string_int,
    required T Function() map_string_string,
    required T Function() map_string_double_,
    required T Function() map_string_bool_null,
    required T Function() map_string_int_null,
    required T Function() map_string_string_null,
    required T Function() map_string_double_null,
    required T Function() map_int_string,
    required T Function() map_int_string_null,
    required T Function() map_int_double,
    required T Function() map_int_double_null,
    required T Function() map_int_bool,
    required T Function() map_int_bool_null,
    required T Function() map_int_dynamic_,
    required T Function() date_time,
    required T Function() map_dynamic_dynamic_,
    required T Function() data,
    required T Function() list_data,
    required T Function() list_enum,
    required T Function() list_enum_null,
    required T Function() list_data_null,
    required T Function() null_,
    required T Function() none,
  }) {
    switch (this) {
      case EnumTypeVarable.enum_:
        return enum_();
      case EnumTypeVarable.string_:
        return string_();
      case EnumTypeVarable.bool_:
        return bool_();
      case EnumTypeVarable.int_:
        return int_();
      case EnumTypeVarable.double_:
        return double_();
      case EnumTypeVarable.dynamic_:
        return dynamic_();
      case EnumTypeVarable.num_:
        return num_();
      case EnumTypeVarable.list_:
        return list_();
      case EnumTypeVarable.color:
        return color();
      case EnumTypeVarable.list_bool_:
        return list_bool_();
      case EnumTypeVarable.list_other:
        return list_other();
      case EnumTypeVarable.list_int_:
        return list_int_();
      case EnumTypeVarable.list_string_:
        return list_string_();
      case EnumTypeVarable.list_double_:
        return list_double_();
      case EnumTypeVarable.list_bool_null:
        return list_bool_null();
      case EnumTypeVarable.list_int_null:
        return list_int_null();
      case EnumTypeVarable.list_string_null:
        return list_string_null();
      case EnumTypeVarable.list_double_null:
        return list_double_null();
      case EnumTypeVarable.list_dynamic_:
        return list_dynamic_();
      case EnumTypeVarable.list_map_int_string_:
        return list_map_int_string_();
      case EnumTypeVarable.list_map_int_string_null:
        return list_map_int_string_null();
      case EnumTypeVarable.list_map_int_dynamic_:
        return list_map_int_dynamic_();
      case EnumTypeVarable.list_map_string_dynamic_:
        return list_map_string_dynamic_();
      case EnumTypeVarable.list_map_string_string_:
        return list_map_string_string_();
      case EnumTypeVarable.set_:
        return set_();
      case EnumTypeVarable.set_string:
        return set_string();
      case EnumTypeVarable.set_string_null:
        return set_string_null();
      case EnumTypeVarable.set_int:
        return set_int();
      case EnumTypeVarable.set_int_null:
        return set_int_null();
      case EnumTypeVarable.set_bool:
        return set_bool();
      case EnumTypeVarable.set_bool_null:
        return set_bool_null();
      case EnumTypeVarable.set_double:
        return set_double();
      case EnumTypeVarable.set_double_null:
        return set_double_null();
      case EnumTypeVarable.map_:
        return map_();
      case EnumTypeVarable.map_string_dynamic_:
        return map_string_dynamic_();
      case EnumTypeVarable.map_string_bool:
        return map_string_bool();
      case EnumTypeVarable.map_string_int:
        return map_string_int();
      case EnumTypeVarable.map_string_string:
        return map_string_string();
      case EnumTypeVarable.map_string_double_:
        return map_string_double_();
      case EnumTypeVarable.map_string_bool_null:
        return map_string_bool_null();
      case EnumTypeVarable.map_string_int_null:
        return map_string_int_null();
      case EnumTypeVarable.map_string_string_null:
        return map_string_string_null();
      case EnumTypeVarable.map_string_double_null:
        return map_string_double_null();
      case EnumTypeVarable.map_int_string:
        return map_int_string();
      case EnumTypeVarable.map_int_string_null:
        return map_int_string_null();
      case EnumTypeVarable.map_int_double:
        return map_int_double();
      case EnumTypeVarable.map_int_double_null:
        return map_int_double_null();
      case EnumTypeVarable.map_int_bool:
        return map_int_bool();
      case EnumTypeVarable.map_int_bool_null:
        return map_int_bool_null();
      case EnumTypeVarable.map_int_dynamic_:
        return map_int_dynamic_();
      case EnumTypeVarable.date_time:
        return date_time();
      case EnumTypeVarable.map_dynamic_dynamic_:
        return map_dynamic_dynamic_();
      case EnumTypeVarable.data:
        return data();
      case EnumTypeVarable.list_data:
        return list_data();
      case EnumTypeVarable.list_enum:
        return list_enum();
      case EnumTypeVarable.list_enum_null:
        return list_enum_null();
      case EnumTypeVarable.list_data_null:
        return list_data_null();
      case EnumTypeVarable.null_:
        return null_();
      case EnumTypeVarable.none:
        return none();
    }
  }

  T mapValue<T>({
    required T enum_,
    required T string_,
    required T bool_,
    required T int_,
    required T double_,
    required T dynamic_,
    required T num_,
    required T list_,
    required T color,
    required T list_bool_,
    required T list_other,
    required T list_int_,
    required T list_string_,
    required T list_double_,
    required T list_bool_null,
    required T list_int_null,
    required T list_string_null,
    required T list_double_null,
    required T list_dynamic_,
    required T list_map_int_string_,
    required T list_map_int_string_null,
    required T list_map_int_dynamic_,
    required T list_map_string_dynamic_,
    required T list_map_string_string_,
    required T set_,
    required T set_string,
    required T set_string_null,
    required T set_int,
    required T set_int_null,
    required T set_bool,
    required T set_bool_null,
    required T set_double,
    required T set_double_null,
    required T map_,
    required T map_string_dynamic_,
    required T map_string_bool,
    required T map_string_int,
    required T map_string_string,
    required T map_string_double_,
    required T map_string_bool_null,
    required T map_string_int_null,
    required T map_string_string_null,
    required T map_string_double_null,
    required T map_int_string,
    required T map_int_string_null,
    required T map_int_double,
    required T map_int_double_null,
    required T map_int_bool,
    required T map_int_bool_null,
    required T map_int_dynamic_,
    required T date_time,
    required T map_dynamic_dynamic_,
    required T data,
    required T list_data,
    required T list_enum,
    required T list_enum_null,
    required T list_data_null,
    required T null_,
    required T none,
  }) {
    switch (this) {
      case EnumTypeVarable.enum_:
        return enum_;
      case EnumTypeVarable.string_:
        return string_;
      case EnumTypeVarable.bool_:
        return bool_;
      case EnumTypeVarable.int_:
        return int_;
      case EnumTypeVarable.double_:
        return double_;
      case EnumTypeVarable.dynamic_:
        return dynamic_;
      case EnumTypeVarable.num_:
        return num_;
      case EnumTypeVarable.list_:
        return list_;
      case EnumTypeVarable.color:
        return color;
      case EnumTypeVarable.list_bool_:
        return list_bool_;
      case EnumTypeVarable.list_other:
        return list_other;
      case EnumTypeVarable.list_int_:
        return list_int_;
      case EnumTypeVarable.list_string_:
        return list_string_;
      case EnumTypeVarable.list_double_:
        return list_double_;
      case EnumTypeVarable.list_bool_null:
        return list_bool_null;
      case EnumTypeVarable.list_int_null:
        return list_int_null;
      case EnumTypeVarable.list_string_null:
        return list_string_null;
      case EnumTypeVarable.list_double_null:
        return list_double_null;
      case EnumTypeVarable.list_dynamic_:
        return list_dynamic_;
      case EnumTypeVarable.list_map_int_string_:
        return list_map_int_string_;
      case EnumTypeVarable.list_map_int_string_null:
        return list_map_int_string_null;
      case EnumTypeVarable.list_map_int_dynamic_:
        return list_map_int_dynamic_;
      case EnumTypeVarable.list_map_string_dynamic_:
        return list_map_string_dynamic_;
      case EnumTypeVarable.list_map_string_string_:
        return list_map_string_string_;
      case EnumTypeVarable.set_:
        return set_;
      case EnumTypeVarable.set_string:
        return set_string;
      case EnumTypeVarable.set_string_null:
        return set_string_null;
      case EnumTypeVarable.set_int:
        return set_int;
      case EnumTypeVarable.set_int_null:
        return set_int_null;
      case EnumTypeVarable.set_bool:
        return set_bool;
      case EnumTypeVarable.set_bool_null:
        return set_bool_null;
      case EnumTypeVarable.set_double:
        return set_double;
      case EnumTypeVarable.set_double_null:
        return set_double_null;
      case EnumTypeVarable.map_:
        return map_;
      case EnumTypeVarable.map_string_dynamic_:
        return map_string_dynamic_;
      case EnumTypeVarable.map_string_bool:
        return map_string_bool;
      case EnumTypeVarable.map_string_int:
        return map_string_int;
      case EnumTypeVarable.map_string_string:
        return map_string_string;
      case EnumTypeVarable.map_string_double_:
        return map_string_double_;
      case EnumTypeVarable.map_string_bool_null:
        return map_string_bool_null;
      case EnumTypeVarable.map_string_int_null:
        return map_string_int_null;
      case EnumTypeVarable.map_string_string_null:
        return map_string_string_null;
      case EnumTypeVarable.map_string_double_null:
        return map_string_double_null;
      case EnumTypeVarable.map_int_string:
        return map_int_string;
      case EnumTypeVarable.map_int_string_null:
        return map_int_string_null;
      case EnumTypeVarable.map_int_double:
        return map_int_double;
      case EnumTypeVarable.map_int_double_null:
        return map_int_double_null;
      case EnumTypeVarable.map_int_bool:
        return map_int_bool;
      case EnumTypeVarable.map_int_bool_null:
        return map_int_bool_null;
      case EnumTypeVarable.map_int_dynamic_:
        return map_int_dynamic_;
      case EnumTypeVarable.date_time:
        return date_time;
      case EnumTypeVarable.map_dynamic_dynamic_:
        return map_dynamic_dynamic_;
      case EnumTypeVarable.data:
        return data;
      case EnumTypeVarable.list_data:
        return list_data;
      case EnumTypeVarable.list_enum:
        return list_enum;
      case EnumTypeVarable.list_enum_null:
        return list_enum_null;
      case EnumTypeVarable.list_data_null:
        return list_data_null;
      case EnumTypeVarable.null_:
        return null_;
      case EnumTypeVarable.none:
        return none;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? enum_,
    T Function()? string_,
    T Function()? bool_,
    T Function()? int_,
    T Function()? double_,
    T Function()? dynamic_,
    T Function()? num_,
    T Function()? list_,
    T Function()? color,
    T Function()? list_bool_,
    T Function()? list_other,
    T Function()? list_int_,
    T Function()? list_string_,
    T Function()? list_double_,
    T Function()? list_bool_null,
    T Function()? list_int_null,
    T Function()? list_string_null,
    T Function()? list_double_null,
    T Function()? list_dynamic_,
    T Function()? list_map_int_string_,
    T Function()? list_map_int_string_null,
    T Function()? list_map_int_dynamic_,
    T Function()? list_map_string_dynamic_,
    T Function()? list_map_string_string_,
    T Function()? set_,
    T Function()? set_string,
    T Function()? set_string_null,
    T Function()? set_int,
    T Function()? set_int_null,
    T Function()? set_bool,
    T Function()? set_bool_null,
    T Function()? set_double,
    T Function()? set_double_null,
    T Function()? map_,
    T Function()? map_string_dynamic_,
    T Function()? map_string_bool,
    T Function()? map_string_int,
    T Function()? map_string_string,
    T Function()? map_string_double_,
    T Function()? map_string_bool_null,
    T Function()? map_string_int_null,
    T Function()? map_string_string_null,
    T Function()? map_string_double_null,
    T Function()? map_int_string,
    T Function()? map_int_string_null,
    T Function()? map_int_double,
    T Function()? map_int_double_null,
    T Function()? map_int_bool,
    T Function()? map_int_bool_null,
    T Function()? map_int_dynamic_,
    T Function()? date_time,
    T Function()? map_dynamic_dynamic_,
    T Function()? data,
    T Function()? list_data,
    T Function()? list_enum,
    T Function()? list_enum_null,
    T Function()? list_data_null,
    T Function()? null_,
    T Function()? none,
  }) =>
      map<T>(
        enum_: enum_ ?? orElse,
        string_: string_ ?? orElse,
        bool_: bool_ ?? orElse,
        int_: int_ ?? orElse,
        double_: double_ ?? orElse,
        dynamic_: dynamic_ ?? orElse,
        num_: num_ ?? orElse,
        list_: list_ ?? orElse,
        color: color ?? orElse,
        list_bool_: list_bool_ ?? orElse,
        list_other: list_other ?? orElse,
        list_int_: list_int_ ?? orElse,
        list_string_: list_string_ ?? orElse,
        list_double_: list_double_ ?? orElse,
        list_bool_null: list_bool_null ?? orElse,
        list_int_null: list_int_null ?? orElse,
        list_string_null: list_string_null ?? orElse,
        list_double_null: list_double_null ?? orElse,
        list_dynamic_: list_dynamic_ ?? orElse,
        list_map_int_string_: list_map_int_string_ ?? orElse,
        list_map_int_string_null: list_map_int_string_null ?? orElse,
        list_map_int_dynamic_: list_map_int_dynamic_ ?? orElse,
        list_map_string_dynamic_: list_map_string_dynamic_ ?? orElse,
        list_map_string_string_: list_map_string_string_ ?? orElse,
        set_: set_ ?? orElse,
        set_string: set_string ?? orElse,
        set_string_null: set_string_null ?? orElse,
        set_int: set_int ?? orElse,
        set_int_null: set_int_null ?? orElse,
        set_bool: set_bool ?? orElse,
        set_bool_null: set_bool_null ?? orElse,
        set_double: set_double ?? orElse,
        set_double_null: set_double_null ?? orElse,
        map_: map_ ?? orElse,
        map_string_dynamic_: map_string_dynamic_ ?? orElse,
        map_string_bool: map_string_bool ?? orElse,
        map_string_int: map_string_int ?? orElse,
        map_string_string: map_string_string ?? orElse,
        map_string_double_: map_string_double_ ?? orElse,
        map_string_bool_null: map_string_bool_null ?? orElse,
        map_string_int_null: map_string_int_null ?? orElse,
        map_string_string_null: map_string_string_null ?? orElse,
        map_string_double_null: map_string_double_null ?? orElse,
        map_int_string: map_int_string ?? orElse,
        map_int_string_null: map_int_string_null ?? orElse,
        map_int_double: map_int_double ?? orElse,
        map_int_double_null: map_int_double_null ?? orElse,
        map_int_bool: map_int_bool ?? orElse,
        map_int_bool_null: map_int_bool_null ?? orElse,
        map_int_dynamic_: map_int_dynamic_ ?? orElse,
        date_time: date_time ?? orElse,
        map_dynamic_dynamic_: map_dynamic_dynamic_ ?? orElse,
        data: data ?? orElse,
        list_data: list_data ?? orElse,
        list_enum: list_enum ?? orElse,
        list_enum_null: list_enum_null ?? orElse,
        list_data_null: list_data_null ?? orElse,
        null_: null_ ?? orElse,
        none: none ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? enum_,
    T? string_,
    T? bool_,
    T? int_,
    T? double_,
    T? dynamic_,
    T? num_,
    T? list_,
    T? color,
    T? list_bool_,
    T? list_other,
    T? list_int_,
    T? list_string_,
    T? list_double_,
    T? list_bool_null,
    T? list_int_null,
    T? list_string_null,
    T? list_double_null,
    T? list_dynamic_,
    T? list_map_int_string_,
    T? list_map_int_string_null,
    T? list_map_int_dynamic_,
    T? list_map_string_dynamic_,
    T? list_map_string_string_,
    T? set_,
    T? set_string,
    T? set_string_null,
    T? set_int,
    T? set_int_null,
    T? set_bool,
    T? set_bool_null,
    T? set_double,
    T? set_double_null,
    T? map_,
    T? map_string_dynamic_,
    T? map_string_bool,
    T? map_string_int,
    T? map_string_string,
    T? map_string_double_,
    T? map_string_bool_null,
    T? map_string_int_null,
    T? map_string_string_null,
    T? map_string_double_null,
    T? map_int_string,
    T? map_int_string_null,
    T? map_int_double,
    T? map_int_double_null,
    T? map_int_bool,
    T? map_int_bool_null,
    T? map_int_dynamic_,
    T? date_time,
    T? map_dynamic_dynamic_,
    T? data,
    T? list_data,
    T? list_enum,
    T? list_enum_null,
    T? list_data_null,
    T? null_,
    T? none,
  }) =>
      mapValue<T>(
        enum_: enum_ ?? orElse,
        string_: string_ ?? orElse,
        bool_: bool_ ?? orElse,
        int_: int_ ?? orElse,
        double_: double_ ?? orElse,
        dynamic_: dynamic_ ?? orElse,
        num_: num_ ?? orElse,
        list_: list_ ?? orElse,
        color: color ?? orElse,
        list_bool_: list_bool_ ?? orElse,
        list_other: list_other ?? orElse,
        list_int_: list_int_ ?? orElse,
        list_string_: list_string_ ?? orElse,
        list_double_: list_double_ ?? orElse,
        list_bool_null: list_bool_null ?? orElse,
        list_int_null: list_int_null ?? orElse,
        list_string_null: list_string_null ?? orElse,
        list_double_null: list_double_null ?? orElse,
        list_dynamic_: list_dynamic_ ?? orElse,
        list_map_int_string_: list_map_int_string_ ?? orElse,
        list_map_int_string_null: list_map_int_string_null ?? orElse,
        list_map_int_dynamic_: list_map_int_dynamic_ ?? orElse,
        list_map_string_dynamic_: list_map_string_dynamic_ ?? orElse,
        list_map_string_string_: list_map_string_string_ ?? orElse,
        set_: set_ ?? orElse,
        set_string: set_string ?? orElse,
        set_string_null: set_string_null ?? orElse,
        set_int: set_int ?? orElse,
        set_int_null: set_int_null ?? orElse,
        set_bool: set_bool ?? orElse,
        set_bool_null: set_bool_null ?? orElse,
        set_double: set_double ?? orElse,
        set_double_null: set_double_null ?? orElse,
        map_: map_ ?? orElse,
        map_string_dynamic_: map_string_dynamic_ ?? orElse,
        map_string_bool: map_string_bool ?? orElse,
        map_string_int: map_string_int ?? orElse,
        map_string_string: map_string_string ?? orElse,
        map_string_double_: map_string_double_ ?? orElse,
        map_string_bool_null: map_string_bool_null ?? orElse,
        map_string_int_null: map_string_int_null ?? orElse,
        map_string_string_null: map_string_string_null ?? orElse,
        map_string_double_null: map_string_double_null ?? orElse,
        map_int_string: map_int_string ?? orElse,
        map_int_string_null: map_int_string_null ?? orElse,
        map_int_double: map_int_double ?? orElse,
        map_int_double_null: map_int_double_null ?? orElse,
        map_int_bool: map_int_bool ?? orElse,
        map_int_bool_null: map_int_bool_null ?? orElse,
        map_int_dynamic_: map_int_dynamic_ ?? orElse,
        date_time: date_time ?? orElse,
        map_dynamic_dynamic_: map_dynamic_dynamic_ ?? orElse,
        data: data ?? orElse,
        list_data: list_data ?? orElse,
        list_enum: list_enum ?? orElse,
        list_enum_null: list_enum_null ?? orElse,
        list_data_null: list_data_null ?? orElse,
        null_: null_ ?? orElse,
        none: none ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? enum_,
    T Function()? string_,
    T Function()? bool_,
    T Function()? int_,
    T Function()? double_,
    T Function()? dynamic_,
    T Function()? num_,
    T Function()? list_,
    T Function()? color,
    T Function()? list_bool_,
    T Function()? list_other,
    T Function()? list_int_,
    T Function()? list_string_,
    T Function()? list_double_,
    T Function()? list_bool_null,
    T Function()? list_int_null,
    T Function()? list_string_null,
    T Function()? list_double_null,
    T Function()? list_dynamic_,
    T Function()? list_map_int_string_,
    T Function()? list_map_int_string_null,
    T Function()? list_map_int_dynamic_,
    T Function()? list_map_string_dynamic_,
    T Function()? list_map_string_string_,
    T Function()? set_,
    T Function()? set_string,
    T Function()? set_string_null,
    T Function()? set_int,
    T Function()? set_int_null,
    T Function()? set_bool,
    T Function()? set_bool_null,
    T Function()? set_double,
    T Function()? set_double_null,
    T Function()? map_,
    T Function()? map_string_dynamic_,
    T Function()? map_string_bool,
    T Function()? map_string_int,
    T Function()? map_string_string,
    T Function()? map_string_double_,
    T Function()? map_string_bool_null,
    T Function()? map_string_int_null,
    T Function()? map_string_string_null,
    T Function()? map_string_double_null,
    T Function()? map_int_string,
    T Function()? map_int_string_null,
    T Function()? map_int_double,
    T Function()? map_int_double_null,
    T Function()? map_int_bool,
    T Function()? map_int_bool_null,
    T Function()? map_int_dynamic_,
    T Function()? date_time,
    T Function()? map_dynamic_dynamic_,
    T Function()? data,
    T Function()? list_data,
    T Function()? list_enum,
    T Function()? list_enum_null,
    T Function()? list_data_null,
    T Function()? null_,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        enum_: enum_,
        string_: string_,
        bool_: bool_,
        int_: int_,
        double_: double_,
        dynamic_: dynamic_,
        num_: num_,
        list_: list_,
        color: color,
        list_bool_: list_bool_,
        list_other: list_other,
        list_int_: list_int_,
        list_string_: list_string_,
        list_double_: list_double_,
        list_bool_null: list_bool_null,
        list_int_null: list_int_null,
        list_string_null: list_string_null,
        list_double_null: list_double_null,
        list_dynamic_: list_dynamic_,
        list_map_int_string_: list_map_int_string_,
        list_map_int_string_null: list_map_int_string_null,
        list_map_int_dynamic_: list_map_int_dynamic_,
        list_map_string_dynamic_: list_map_string_dynamic_,
        list_map_string_string_: list_map_string_string_,
        set_: set_,
        set_string: set_string,
        set_string_null: set_string_null,
        set_int: set_int,
        set_int_null: set_int_null,
        set_bool: set_bool,
        set_bool_null: set_bool_null,
        set_double: set_double,
        set_double_null: set_double_null,
        map_: map_,
        map_string_dynamic_: map_string_dynamic_,
        map_string_bool: map_string_bool,
        map_string_int: map_string_int,
        map_string_string: map_string_string,
        map_string_double_: map_string_double_,
        map_string_bool_null: map_string_bool_null,
        map_string_int_null: map_string_int_null,
        map_string_string_null: map_string_string_null,
        map_string_double_null: map_string_double_null,
        map_int_string: map_int_string,
        map_int_string_null: map_int_string_null,
        map_int_double: map_int_double,
        map_int_double_null: map_int_double_null,
        map_int_bool: map_int_bool,
        map_int_bool_null: map_int_bool_null,
        map_int_dynamic_: map_int_dynamic_,
        date_time: date_time,
        map_dynamic_dynamic_: map_dynamic_dynamic_,
        data: data,
        list_data: list_data,
        list_enum: list_enum,
        list_enum_null: list_enum_null,
        list_data_null: list_data_null,
        null_: null_,
        none: none,
      );

  T? maybeMapOrNullValue<T>({
    T? enum_,
    T? string_,
    T? bool_,
    T? int_,
    T? double_,
    T? dynamic_,
    T? num_,
    T? list_,
    T? color,
    T? list_bool_,
    T? list_other,
    T? list_int_,
    T? list_string_,
    T? list_double_,
    T? list_bool_null,
    T? list_int_null,
    T? list_string_null,
    T? list_double_null,
    T? list_dynamic_,
    T? list_map_int_string_,
    T? list_map_int_string_null,
    T? list_map_int_dynamic_,
    T? list_map_string_dynamic_,
    T? list_map_string_string_,
    T? set_,
    T? set_string,
    T? set_string_null,
    T? set_int,
    T? set_int_null,
    T? set_bool,
    T? set_bool_null,
    T? set_double,
    T? set_double_null,
    T? map_,
    T? map_string_dynamic_,
    T? map_string_bool,
    T? map_string_int,
    T? map_string_string,
    T? map_string_double_,
    T? map_string_bool_null,
    T? map_string_int_null,
    T? map_string_string_null,
    T? map_string_double_null,
    T? map_int_string,
    T? map_int_string_null,
    T? map_int_double,
    T? map_int_double_null,
    T? map_int_bool,
    T? map_int_bool_null,
    T? map_int_dynamic_,
    T? date_time,
    T? map_dynamic_dynamic_,
    T? data,
    T? list_data,
    T? list_enum,
    T? list_enum_null,
    T? list_data_null,
    T? null_,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        enum_: enum_,
        string_: string_,
        bool_: bool_,
        int_: int_,
        double_: double_,
        dynamic_: dynamic_,
        num_: num_,
        list_: list_,
        color: color,
        list_bool_: list_bool_,
        list_other: list_other,
        list_int_: list_int_,
        list_string_: list_string_,
        list_double_: list_double_,
        list_bool_null: list_bool_null,
        list_int_null: list_int_null,
        list_string_null: list_string_null,
        list_double_null: list_double_null,
        list_dynamic_: list_dynamic_,
        list_map_int_string_: list_map_int_string_,
        list_map_int_string_null: list_map_int_string_null,
        list_map_int_dynamic_: list_map_int_dynamic_,
        list_map_string_dynamic_: list_map_string_dynamic_,
        list_map_string_string_: list_map_string_string_,
        set_: set_,
        set_string: set_string,
        set_string_null: set_string_null,
        set_int: set_int,
        set_int_null: set_int_null,
        set_bool: set_bool,
        set_bool_null: set_bool_null,
        set_double: set_double,
        set_double_null: set_double_null,
        map_: map_,
        map_string_dynamic_: map_string_dynamic_,
        map_string_bool: map_string_bool,
        map_string_int: map_string_int,
        map_string_string: map_string_string,
        map_string_double_: map_string_double_,
        map_string_bool_null: map_string_bool_null,
        map_string_int_null: map_string_int_null,
        map_string_string_null: map_string_string_null,
        map_string_double_null: map_string_double_null,
        map_int_string: map_int_string,
        map_int_string_null: map_int_string_null,
        map_int_double: map_int_double,
        map_int_double_null: map_int_double_null,
        map_int_bool: map_int_bool,
        map_int_bool_null: map_int_bool_null,
        map_int_dynamic_: map_int_dynamic_,
        date_time: date_time,
        map_dynamic_dynamic_: map_dynamic_dynamic_,
        data: data,
        list_data: list_data,
        list_enum: list_enum,
        list_enum_null: list_enum_null,
        list_data_null: list_data_null,
        null_: null_,
        none: none,
      );

  static List<String> getValues() =>
      EnumTypeVarable.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumTypeVarable other) => index.compareTo(other.index);
}

extension $EnumTypeVarable on EnumTypeVarable {
  bool get enum_ => this == EnumTypeVarable.enum_;
  bool get string_ => this == EnumTypeVarable.string_;
  bool get bool_ => this == EnumTypeVarable.bool_;
  bool get int_ => this == EnumTypeVarable.int_;
  bool get double_ => this == EnumTypeVarable.double_;
  bool get dynamic_ => this == EnumTypeVarable.dynamic_;
  bool get num_ => this == EnumTypeVarable.num_;
  bool get list_ => this == EnumTypeVarable.list_;
  bool get color => this == EnumTypeVarable.color;
  bool get list_bool_ => this == EnumTypeVarable.list_bool_;
  bool get list_other => this == EnumTypeVarable.list_other;
  bool get list_int_ => this == EnumTypeVarable.list_int_;
  bool get list_string_ => this == EnumTypeVarable.list_string_;
  bool get list_double_ => this == EnumTypeVarable.list_double_;
  bool get list_bool_null => this == EnumTypeVarable.list_bool_null;
  bool get list_int_null => this == EnumTypeVarable.list_int_null;
  bool get list_string_null => this == EnumTypeVarable.list_string_null;
  bool get list_double_null => this == EnumTypeVarable.list_double_null;
  bool get list_dynamic_ => this == EnumTypeVarable.list_dynamic_;
  bool get list_map_int_string_ => this == EnumTypeVarable.list_map_int_string_;
  bool get list_map_int_string_null =>
      this == EnumTypeVarable.list_map_int_string_null;
  bool get list_map_int_dynamic_ =>
      this == EnumTypeVarable.list_map_int_dynamic_;
  bool get list_map_string_dynamic_ =>
      this == EnumTypeVarable.list_map_string_dynamic_;
  bool get list_map_string_string_ =>
      this == EnumTypeVarable.list_map_string_string_;
  bool get set_ => this == EnumTypeVarable.set_;
  bool get set_string => this == EnumTypeVarable.set_string;
  bool get set_string_null => this == EnumTypeVarable.set_string_null;
  bool get set_int => this == EnumTypeVarable.set_int;
  bool get set_int_null => this == EnumTypeVarable.set_int_null;
  bool get set_bool => this == EnumTypeVarable.set_bool;
  bool get set_bool_null => this == EnumTypeVarable.set_bool_null;
  bool get set_double => this == EnumTypeVarable.set_double;
  bool get set_double_null => this == EnumTypeVarable.set_double_null;
  bool get map_ => this == EnumTypeVarable.map_;
  bool get map_string_dynamic_ => this == EnumTypeVarable.map_string_dynamic_;
  bool get map_string_bool => this == EnumTypeVarable.map_string_bool;
  bool get map_string_int => this == EnumTypeVarable.map_string_int;
  bool get map_string_string => this == EnumTypeVarable.map_string_string;
  bool get map_string_double_ => this == EnumTypeVarable.map_string_double_;
  bool get map_string_bool_null => this == EnumTypeVarable.map_string_bool_null;
  bool get map_string_int_null => this == EnumTypeVarable.map_string_int_null;
  bool get map_string_string_null =>
      this == EnumTypeVarable.map_string_string_null;
  bool get map_string_double_null =>
      this == EnumTypeVarable.map_string_double_null;
  bool get map_int_string => this == EnumTypeVarable.map_int_string;
  bool get map_int_string_null => this == EnumTypeVarable.map_int_string_null;
  bool get map_int_double => this == EnumTypeVarable.map_int_double;
  bool get map_int_double_null => this == EnumTypeVarable.map_int_double_null;
  bool get map_int_bool => this == EnumTypeVarable.map_int_bool;
  bool get map_int_bool_null => this == EnumTypeVarable.map_int_bool_null;
  bool get map_int_dynamic_ => this == EnumTypeVarable.map_int_dynamic_;
  bool get date_time => this == EnumTypeVarable.date_time;
  bool get map_dynamic_dynamic_ => this == EnumTypeVarable.map_dynamic_dynamic_;
  bool get data => this == EnumTypeVarable.data;
  bool get list_data => this == EnumTypeVarable.list_data;
  bool get list_enum => this == EnumTypeVarable.list_enum;
  bool get list_enum_null => this == EnumTypeVarable.list_enum_null;
  bool get list_data_null => this == EnumTypeVarable.list_data_null;
  bool get null_ => this == EnumTypeVarable.null_;
  bool get none => this == EnumTypeVarable.none;
}
