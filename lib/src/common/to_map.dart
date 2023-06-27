// ignore_for_file: non_constant_identifier_names

import 'package:turn_gen/src/src.dart';

// ignore: prefer-static-class
String getToMapVarable(Parameter v) {
  final type = v.type;
  final name = v.nameVar;

  final toMap = v.toMap_;
  final isCanNull = v.isCanNull;
  final initComment = v.initValueComment;
  const error = 'error';

  if (toMap.isNotEmpty) return toMap;
  final yes_null_default_yes = isCanNull && initComment.isNotEmpty;
  final yes_null_default_no = isCanNull && initComment.isEmpty;
  final no_null_default_yes = !isCanNull && initComment.isNotEmpty;
  final no_null_default_no = !isCanNull && initComment.isEmpty;

  switch (type) {
    case EnumTypeVarable.string_:
    case EnumTypeVarable.bool_:
    case EnumTypeVarable.int_:
    case EnumTypeVarable.num_:
    case EnumTypeVarable.double_:
    case EnumTypeVarable.dynamic_:
      if (yes_null_default_yes) {
        return name;
      } else if (yes_null_default_no) {
        return name;
      } else if (no_null_default_yes) {
        return name;
      } else if (no_null_default_no) {
        return name;
      }
      return error;

    case EnumTypeVarable.none:
      return error;

    case EnumTypeVarable.enum_:
      if (yes_null_default_yes) {
        return '$name?.index';
      } else if (yes_null_default_no) {
        return '$name?.index';
      } else if (no_null_default_yes) {
        return '$name.index';
      } else if (no_null_default_no) {
        return '$name.index';
      }
      return error;

    case EnumTypeVarable.list_enum:
      if (yes_null_default_yes) {
        return '$name?.map((e) => e.index).toList()';
      } else if (yes_null_default_no) {
        return '$name?.map((e) => e.index).toList()';
      } else if (no_null_default_yes) {
        return '$name.map((e) => e.index).toList()';
      } else if (no_null_default_no) {
        return '$name.map((e) => e.index).toList()';
      }
      return error;

    case EnumTypeVarable.list_enum_null:
      if (yes_null_default_yes) {
        return '$name?.map((e) => e?.index).toList()';
      } else if (yes_null_default_no) {
        return '$name?.map((e) => e?.index).toList()';
      } else if (no_null_default_yes) {
        return '$name.map((e) => e?.index).toList()';
      } else if (no_null_default_no) {
        return '$name.map((e) => e?.index).toList()';
      }
      return error;

// SET
    case EnumTypeVarable.set_double:
    case EnumTypeVarable.set_double_null:
    case EnumTypeVarable.set_:
    case EnumTypeVarable.set_string:
    case EnumTypeVarable.set_string_null:
    case EnumTypeVarable.set_int:
    case EnumTypeVarable.set_int_null:
    case EnumTypeVarable.set_bool:
    case EnumTypeVarable.set_bool_null:
      if (yes_null_default_yes) {
        return '$name?.toList()';
      } else if (yes_null_default_no) {
        return '$name?.toList()';
      } else if (no_null_default_yes) {
        return '$name.toList()';
      } else if (no_null_default_no) {
        return '$name.toList()';
      }
      return error;

    // MAP
    case EnumTypeVarable.map_string_bool:
    case EnumTypeVarable.map_string_bool_null:
    case EnumTypeVarable.map_string_double_:
    case EnumTypeVarable.map_string_double_null:
    case EnumTypeVarable.map_string_dynamic_:
    case EnumTypeVarable.map_string_int:
    case EnumTypeVarable.map_string_string:
    case EnumTypeVarable.map_string_int_null:
    case EnumTypeVarable.map_string_string_null:
      if (yes_null_default_yes) {
        return '$name?.map(MapEntry.new)';
      } else if (yes_null_default_no) {
        return '$name?.map(MapEntry.new)';
      } else if (no_null_default_yes) {
        return '$name.map(MapEntry.new)';
      } else if (no_null_default_no) {
        return '$name.map(MapEntry.new)';
      }
      return error;

    case EnumTypeVarable.map_:
    case EnumTypeVarable.map_dynamic_dynamic_:
    case EnumTypeVarable.map_int_bool:
    case EnumTypeVarable.map_int_bool_null:
    case EnumTypeVarable.map_int_double:
    case EnumTypeVarable.map_int_double_null:
    case EnumTypeVarable.map_int_dynamic_:
    case EnumTypeVarable.map_int_string:
    case EnumTypeVarable.map_int_string_null:
      if (yes_null_default_yes) {
        return '$name?.map((k, e) => MapEntry(k.toString(), e))';
      } else if (yes_null_default_no) {
        return '$name?.map((k, e) => MapEntry(k.toString(), e))';
      } else if (no_null_default_yes) {
        return '$name.map((k, e) => MapEntry(k.toString(), e))';
      } else if (no_null_default_no) {
        return '$name.map((k, e) => MapEntry(k.toString(), e))';
      }
      return error;
    case EnumTypeVarable.list_other:
    case EnumTypeVarable.list_:
    case EnumTypeVarable.list_bool_:
    case EnumTypeVarable.list_bool_null:
    case EnumTypeVarable.list_double_:
    case EnumTypeVarable.list_double_null:
    case EnumTypeVarable.list_dynamic_:
    case EnumTypeVarable.list_int_:
    case EnumTypeVarable.list_int_null:
    case EnumTypeVarable.list_string_:
    case EnumTypeVarable.list_string_null:
      return name;
    case EnumTypeVarable.list_map_int_dynamic_:
      if (yes_null_default_yes) {
        return '''$name?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()''';
      } else if (yes_null_default_no) {
        return '''$name?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()''';
      } else if (no_null_default_yes) {
        return '''$name.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()''';
      } else if (no_null_default_no) {
        return '''$name.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()''';
      }

      return error;

    case EnumTypeVarable.list_map_int_string_:
      if (yes_null_default_yes) {
        return '''$name?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()''';
      } else if (yes_null_default_no) {
        return '''$name?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()''';
      } else if (no_null_default_yes) {
        return '''$name.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()''';
      } else if (no_null_default_no) {
        return '''$name.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()''';
      }

      return error;
    case EnumTypeVarable.list_map_string_dynamic_:
      if (yes_null_default_yes) {
        return '''$name?.map((e) => e.map(MapEntry.new)).toList()''';
      } else if (yes_null_default_no) {
        return '''$name?.map((e) => e.map(MapEntry.new)).toList()''';
      } else if (no_null_default_yes) {
        return '''$name.map((e) => e.map(MapEntry.new)).toList()''';
      } else if (no_null_default_no) {
        return '''$name.map((e) => e.map(MapEntry.new)).toList()''';
      }

      return error;
    case EnumTypeVarable.list_map_string_string_:
      if (yes_null_default_yes) {
        return '''$name?.map((e) => e.map(MapEntry.new)).toList()''';
      } else if (yes_null_default_no) {
        return '''$name?.map((e) => e.map(MapEntry.new)).toList()''';
      } else if (no_null_default_yes) {
        return '''$name.map((e) => e.map(MapEntry.new)).toList()''';
      } else if (no_null_default_no) {
        return '''$name.map((e) => e.map(MapEntry.new)).toList()''';
      }

      return error;
    case EnumTypeVarable.list_map_int_string_null:
      if (yes_null_default_yes) {
        return '''$name?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()''';
      } else if (yes_null_default_no) {
        return '''$name?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()''';
      } else if (no_null_default_yes) {
        return '$name.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()';
      } else if (no_null_default_no) {
        return '$name.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList()';
      }
      return error;
    case EnumTypeVarable.date_time:
      if (yes_null_default_yes) {
        return '$name?.toIso8601String()';
      } else if (yes_null_default_no) {
        return '$name?.toIso8601String()';
      } else if (no_null_default_yes) {
        return '$name.toIso8601String()';
      } else if (no_null_default_no) {
        return '$name.toIso8601String()';
      }
      return error;
    case EnumTypeVarable.data:
      if (yes_null_default_yes) {
        return '$name?.toMap() ?? $initComment';
      } else if (yes_null_default_no) {
        return '$name?.toMap()';
      } else if (no_null_default_yes) {
        return '$name.toMap()';
      } else if (no_null_default_no) {
        return '$name.toMap()';
      }
      return error;

    case EnumTypeVarable.list_data:
      if (yes_null_default_yes) {
        return '$name?.map((e) => e.toMap()).toList()  ?? $initComment';
      } else if (yes_null_default_no) {
        return '$name?.map((e) => e.toMap()).toList()';
      } else if (no_null_default_yes) {
        return '$name.map((e) => e.toMap()).toList()';
      } else if (no_null_default_no) {
        return '$name.map((e) => e.toMap()).toList()';
      }
      return error;
    case EnumTypeVarable.list_data_null:
      if (yes_null_default_yes) {
        return '$name?.map((e) => e?.toMap()).toList()  ?? $initComment';
      } else if (yes_null_default_no) {
        return '$name?.map((e) => e?.toMap()).toList()';
      } else if (no_null_default_yes) {
        return '$name.map((e) => e?.toMap()).toList()';
      } else if (no_null_default_no) {
        return '$name.map((e) => e?.toMap()).toList()';
      }
      return error;
    case EnumTypeVarable.null_:
      return error;
    case EnumTypeVarable.color:
      if (yes_null_default_yes) {
        return '$name?.value ?? $initComment.value';
      } else if (yes_null_default_no) {
        return '$name?.value';
      } else if (no_null_default_yes) {
        return '$name.value';
      } else if (no_null_default_no) {
        return '$name.value';
      }
      return error;
  }
}
