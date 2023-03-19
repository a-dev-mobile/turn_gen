// ignore_for_file: non_constant_identifier_names

import 'package:turn_gen/src/src.dart';

// ignore: prefer-static-class
String getFromMap(Varable v) {
  final type = v.type;
  final name = v.nameVar;
  var nameObject = v.nameData;
  final typeInList = v.typeInList;

  final fromMap = v.fromMap_;
  final isCanNull = v.isCanNull;
  final initComment = v.initValueComment;

  const error = 'error';

  if (fromMap.isNotEmpty) return fromMap;
  final yes_null_default_yes = isCanNull && initComment.isNotEmpty;
  final yes_null_default_no = isCanNull && initComment.isEmpty;
  final no_null_default_yes = !isCanNull && initComment.isNotEmpty;
  final no_null_default_no = !isCanNull && initComment.isEmpty;

  if (type == EnumTypeVarable.list_data ||
      type == EnumTypeVarable.list_data_null) {
    nameObject = nameObject.replaceAll('List<', '').replaceAll('>', '');
  }

  switch (type) {
// конструктор у set double not const
/*       bool1: map['bool1'] != null || true, 
      bool2: map['bool2'] as bool?, 
      bool3: map['bool3'] != null ||  false,  */
    case EnumTypeVarable.bool_:
      if (yes_null_default_yes) {
        return _getValueWithInit("map['$name'] as bool?", name, initComment);
      } else if (yes_null_default_no) {
        return _getValueWithInit("map['$name'] as bool?", name, 'null');
      } else if (no_null_default_yes) {
        return _getValueWithInit("map['$name'] as bool", name, initComment);
      } else if (no_null_default_no) {
        return _getValueWithException("map['$name'] as bool", name);
      }
      return error;

    case EnumTypeVarable.double_:
      if (yes_null_default_yes) {
        return '''map['$name'] != null ? (map['$name'] as num).toDouble() : $initComment''';
      } else if (yes_null_default_no) {
        return '''(map['$name'] as num?)?.toDouble()''';
      } else if (no_null_default_yes) {
        return '''map['$name'] != null ? (map['$name'] as num).toDouble() : $initComment''';
      } else if (no_null_default_no) {
        return _getValueWithException("(map['$name'] as num).toDouble()", name);
      }
      return error;

    case EnumTypeVarable.enum_:
      if (yes_null_default_yes) {
        return "map['$name'] != null ? $nameObject.values[map['$name'] as int] : $initComment";
      } else if (yes_null_default_no) {
        return "map['$name'] != null ? $nameObject.values[map['$name'] as int] : null";
      } else if (no_null_default_yes) {
        return "map['$name'] != null ? $nameObject.values[map['$name'] as int] : $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "$nameObject.values[map['$name'] as int]",
          name,
        );
      }
      return error;

    case EnumTypeVarable.int_:
      if (yes_null_default_yes) {
        return '''map['$name'] != null ? (map['$name'] as num).toInt() : $initComment''';
      } else if (yes_null_default_no) {
        return '''(map['$name'] as num?)?.toInt()''';
      } else if (no_null_default_yes) {
        return '''map['$name'] != null ? (map['$name'] as num).toInt() : $initComment''';
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as num).toInt()",
          name,
        );
      }
      return error;

    case EnumTypeVarable.num_:
      if (yes_null_default_yes) {
        return '''map['$name'] != null ? map['$name'] as num : $initComment''';
      } else if (yes_null_default_no) {
        return '''map['$name'] as num?''';
      } else if (no_null_default_yes) {
        return '''map['$name'] != null ? map['$name'] as num : $initComment''';
      } else if (no_null_default_no) {
        return _getValueWithException(
          "map['$name'] as num",
          name,
        );
      }
      return error;

    case EnumTypeVarable.string_:
      if (yes_null_default_yes) {
        return "map['$name'] != null ? map['$name'] as String : $initComment";
      } else if (yes_null_default_no) {
        return "map['$name'] != null ? map['$name'] as String : null";
      } else if (no_null_default_yes) {
        return "map['$name'] != null ? map['$name'] as String : $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "map['$name'] as String",
          name,
        );
      }
      return error;

    case EnumTypeVarable.set_:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.toSet() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.toSet()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String).toSet() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).toSet()",
          name,
        );
      }

      return error;

    case EnumTypeVarable.set_string:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String).toSet() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String).toSet()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String).toSet() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as String).toSet()",
          name,
        );
      }

      return error;

    case EnumTypeVarable.set_string_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String?).toSet() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String?).toSet()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String?).toSet() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as String?).toSet()",
          name,
        );
      }

      return error;

    case EnumTypeVarable.set_int:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int).toSet() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int).toSet()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int).toSet() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as int).toSet()",
          name,
        );
      }

      return error;

    case EnumTypeVarable.set_int_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int?).toSet() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int?).toSet()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int?).toSet() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as int?).toSet()",
          name,
        );
      }

      return error;

    case EnumTypeVarable.set_bool:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool).toSet() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool).toSet()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool).toSet() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as bool).toSet()",
          name,
        );
      }

      return error;

    case EnumTypeVarable.set_bool_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool?).toSet() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool?).toSet()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool?).toSet() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as bool?).toSet()",
          name,
        );
      }
      return error;

    case EnumTypeVarable.set_double:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toSet() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toSet()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toSet() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => (e as num).toDouble()).toSet()",
          name,
        );
      }
      return error;

    case EnumTypeVarable.set_double_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num?)?.toDouble()).toSet() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num?)?.toDouble()).toSet()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num?)?.toDouble()).toSet() ?? $initComment";
      } else if (no_null_default_no) {
        return "(map['$name'] as List<dynamic>).map((e) => (e as num?)?.toDouble()).toSet()";
      }
      return error;
    case EnumTypeVarable.list_bool_:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool).toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool).toList()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool).toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as bool).toList()",
          name,
        );
      }
      return error;
    case EnumTypeVarable.list_bool_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool?).toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool?).toList()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as bool?).toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as bool?).toList()",
          name,
        );
      }
      return error;

    case EnumTypeVarable.list_int_:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int).toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int).toList()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int).toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as int).toList()",
          name,
        );
      }
      return error;
    case EnumTypeVarable.list_int_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int).toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int?).toList()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as int).toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as int).toList()",
          name,
        );
      }
      return error;

    case EnumTypeVarable.list_string_:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String).toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String).toList()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String).toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as String).toList()",
          name,
        );
      }
      return error;

    case EnumTypeVarable.list_string_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String?).toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String?).toList()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => e as String).toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => e as String).toList()",
          name,
        );
      }
      return error;
    //
    case EnumTypeVarable.date_time:
      if (yes_null_default_yes) {
        return "map['$name'] == null ? $initComment : DateTime.parse(map['$name'] as String)";
      } else if (yes_null_default_no) {
        return "map['$name'] == null ? null : DateTime.parse(map['$name'] as String)";
      } else if (no_null_default_yes) {
        return "DateTime.parse(map['$name'] as String)";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "DateTime.parse(map['$name'] as String)",
          name,
        );
      }
      return error;

    case EnumTypeVarable.list_:
      if (yes_null_default_yes) {
        return "map['$name'] as List<dynamic>? ?? $initComment";
      } else if (yes_null_default_no) {
        return "map['$name'] as List<dynamic>?";
      } else if (no_null_default_yes) {
        return "map['$name'] as List<dynamic>? ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "map['$name'] as List<dynamic>",
          name,
        );
      }

      return error;

    case EnumTypeVarable.list_double_:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => (e as num).toDouble()).toList()",
          name,
        );
      }

      return error;
    case EnumTypeVarable.list_double_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num?)?.toDouble()).toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num?)?.toDouble()).toList()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as num?)?.toDouble()).toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => (e as num?)?.toDouble()).toList()",
          name,
        );
      }
      return error;

    case EnumTypeVarable.list_dynamic_:
      if (yes_null_default_yes) {
        return "map['$name'] as List<dynamic>? ?? $initComment";
      } else if (yes_null_default_no) {
        return "map['$name'] as List<dynamic>?";
      } else if (no_null_default_yes) {
        return "map['$name'] as List<dynamic>? ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "map['$name'] as List<dynamic>",
          name,
        );
      }
      return error;
    case EnumTypeVarable.list_map_int_dynamic_:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e))).toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e))).toList()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e))).toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e))).toList()",
          name,
        );
      }
      return error;
    case EnumTypeVarable.list_map_string_dynamic_:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map(MapEntry.new)).toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map(MapEntry.new)).toList()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map(MapEntry.new)).toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map(MapEntry.new)).toList()",
          name,
        );
      }
      return error;
    case EnumTypeVarable.list_map_int_string_:
      if (yes_null_default_yes) {
        return "(map['$name']  as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map( (k, e) => MapEntry(int.parse(k), e as String), )) .toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name']  as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map( (k, e) => MapEntry(int.parse(k), e as String), )) .toList()";
      } else if (no_null_default_yes) {
        return "(map['$name']  as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map( (k, e) => MapEntry(int.parse(k), e as String), )) .toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map( (k, e) => MapEntry(int.parse(k), e as String), )).toList()",
          name,
        );
      }

      return error;
    case EnumTypeVarable.list_map_int_string_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as String), )).toList() ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as String), )).toList()";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as String), )).toList() ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map( (k, e) => MapEntry(int.parse(k), e as String), )).toList()",
          name,
        );
      }

      return '';

    // MAP ******************************
    case EnumTypeVarable.map_int_dynamic_:
      if (yes_null_default_yes) {
        return " (map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e)) ?? $initComment";
      } else if (yes_null_default_no) {
        return " (map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e))";
      } else if (no_null_default_yes) {
        return " (map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e)) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as Map<String, dynamic>).map( (k, e) => MapEntry(int.parse(k), e))",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_int_double:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), (e as num).toDouble())) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), (e as num).toDouble()))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), (e as num).toDouble())) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as Map<String, dynamic>).map( (k, e) => MapEntry(int.parse(k), (e as num).toDouble()))",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_int_double_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble())) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble()))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble())) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as Map<String, dynamic>).map( (k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble()))",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_string_bool:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as bool)) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as bool))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as bool)) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as Map<String, dynamic>).map( (k, e) => MapEntry(k, e as bool))",
          name,
        );
      }
      return error;
    case EnumTypeVarable.map_string_bool_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as bool?)) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as bool?))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as bool?)) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as Map<String, dynamic>).map( (k, e) => MapEntry(k, e as bool))",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_:
      if (yes_null_default_yes) {
        return "map['$name'] as Map<String, dynamic>? ?? $initComment";
      } else if (yes_null_default_no) {
        return "map['$name'] as Map<String, dynamic>?";
      } else if (no_null_default_yes) {
        return "map['$name'] as Map<String, dynamic>? ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "map['$name'] as Map<String, dynamic>",
          name,
        );
      }
      return error;
    case EnumTypeVarable.map_dynamic_dynamic_:
      if (yes_null_default_yes) {
        return "map['$name'] as Map<String, dynamic>? ?? $initComment";
      } else if (yes_null_default_no) {
        return "map['$name'] as Map<String, dynamic>?";
      } else if (no_null_default_yes) {
        return "map['$name'] as Map<String, dynamic>? ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "map['$name'] as Map<String, dynamic>",
          name,
        );
      }
      return error;
    case EnumTypeVarable.map_string_dynamic_:
      if (yes_null_default_yes) {
        return "map['$name'] as Map<String, dynamic>?";
      } else if (yes_null_default_no) {
        return "map['$name'] as Map<String, dynamic>?";
      } else if (no_null_default_yes) {
        return "map['$name'] as Map<String, dynamic>";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "map['$name'] as Map<String, dynamic>",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_string_string:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as String)) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as String))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as String)) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "Map<String, String>.from(map['$name'] as Map)",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_string_string_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as String?)) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as String?))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as String?)) ?? $initComment";
      } else if (no_null_default_no) {
        return "Map<String, String>.from(map['$name'] as Map)";
      }
      return error;

    case EnumTypeVarable.map_string_int:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map( (k, e) => MapEntry(k, e as int)) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map( (k, e) => MapEntry(k, e as int))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map( (k, e) => MapEntry(k, e as int)) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "Map<String, int>.from(map['$name'] as Map)",
          name,
        );
      }
      return error;
    case EnumTypeVarable.map_string_int_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map( (k, e) => MapEntry(k, e as int?)) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map( (k, e) => MapEntry(k, e as int?))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map( (k, e) => MapEntry(k, e as int?)) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "Map<String, int>.from(map['$name'] as Map)",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_string_double_:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map( (k, e) => MapEntry(k, (e as num).toDouble())) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map( (k, e) => MapEntry(k, (e as num).toDouble()))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map( (k, e) => MapEntry(k, (e as num).toDouble())) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as Map<String, dynamic>).map((k, e) => MapEntry(k, (e as num).toDouble()))",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_string_double_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, (e as num?)?.toDouble())) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, (e as num?)?.toDouble()))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, (e as num?)?.toDouble())) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as Map<String, dynamic>).map((k, e) => MapEntry(k, (e as num?)?.toDouble()))",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_int_bool:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as bool)) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as bool))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as bool)) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as bool))",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_int_bool_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as bool?)) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as bool?))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as bool?)) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as bool?))",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_int_string:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as String)) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as String))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as String)) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as String))",
          name,
        );
      }
      return error;

    case EnumTypeVarable.map_int_string_null:
      if (yes_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as String)) ?? $initComment";
      } else if (yes_null_default_no) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as String))";
      } else if (no_null_default_yes) {
        return "(map['$name'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(int.parse(k), e as String)) ?? $initComment";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as String?))",
          name,
        );
      }
      return error;

    case EnumTypeVarable.list_other:
      if (yes_null_default_yes) {
        return error;
      } else if (yes_null_default_no) {
        return error;
      } else if (no_null_default_yes) {
        return error;
      } else if (no_null_default_no) {
        return error;
      }
      return error;

    case EnumTypeVarable.none:
      if (yes_null_default_yes) {
        return error;
      } else if (yes_null_default_no) {
        return error;
      } else if (no_null_default_yes) {
        return error;
      } else if (no_null_default_no) {
        return error;
      }
      return error;
    case EnumTypeVarable.data:
      if (yes_null_default_yes) {
        return _getValueWithInit(
          "$nameObject.fromMap(Map<String, dynamic>.from(map['$name'] as Map))",
          name,
          initComment,
        );
      } else if (yes_null_default_no) {
        return _getValueWithInit(
          "$nameObject.fromMap(Map<String, dynamic>.from(map['$name'] as Map))",
          name,
          'null',
        );
      } else if (no_null_default_yes) {
        return _getValueWithInit(
          "$nameObject.fromMap(Map<String, dynamic>.from(map['$name'] as Map))",
          name,
          initComment,
        );

        // return "$nameObject.fromMap(map['$name'] as Map<String, dynamic>,)";
      } else if (no_null_default_no) {
        return _getValueWithException(
          "$nameObject.fromMap(map['$name'] as Map<String, dynamic>,)",
          name,
        );
        //   ValidNameFormz.fromMap(map['validNameFormz'] as Map<String, dynamic>),
      }
      return error;
    case EnumTypeVarable.list_data:
      if (yes_null_default_yes) {
        return _getValueWithInit(
          "(map['$name'] as List<dynamic>).map((e) => $nameObject.fromMap(e as Map<String, dynamic>)).toList()",
          name,
          initComment,
        );
      } else if (yes_null_default_no) {
        return _getValueWithInit(
          "(map['$name'] as List<dynamic>).map((e) => $nameObject.fromMap(e as Map<String, dynamic>)).toList()",
          name,
          'null',
        );
      } else if (no_null_default_yes) {
        return _getValueWithInit(
          "(map['$name'] as List<dynamic>).map((e) => $nameObject.fromMap(e as Map<String, dynamic>)).toList()",
          name,
          initComment,
        );
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => $nameObject.fromMap(e as Map<String, dynamic>)).toList()",
          name,
        );
      }
      return error;
    case EnumTypeVarable.list_data_null:
      if (yes_null_default_yes) {
        return "map['$name'] != null ? (map['$name'] as List<dynamic>).map((e) => $nameObject.fromMap(e as Map<String, dynamic>)).toList() : $initComment";
      } else if (yes_null_default_no) {
        return "map['$name'] != null ? (map['$name'] as List<dynamic>).map((e) => $nameObject.fromMap(e as Map<String, dynamic>)).toList() : null";
      } else if (no_null_default_yes) {
        return "(map['$name'] as List<dynamic>).map((e) => $nameObject.fromMap(e as Map<String, dynamic>)).toList()";

      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => $nameObject.fromMap(e as Map<String, dynamic>)).toList()",
          name,
        );
      }
      return error;
    case EnumTypeVarable.null_:
      return error;
    case EnumTypeVarable.list_enum_null:
    case EnumTypeVarable.list_enum:
   if (yes_null_default_yes) {
        return _getValueWithInit(
          "(map['$name'] as List<dynamic>).map((e) => $typeInList.values[e as int]).toList()",
          name,
          initComment,
        );
      } else if (yes_null_default_no) {
        return _getValueWithInit(
          "(map['$name'] as List<dynamic>).map((e) => $typeInList.values[e as int]).toList()",
          name,
          'null',
        );
      } else if (no_null_default_yes) {
        return _getValueWithInit(
          "(map['$name'] as List<dynamic>).map((e) => $typeInList.values[e as int]).toList()",
          name,
          initComment,
        );
      } else if (no_null_default_no) {
        return _getValueWithException(
          "(map['$name'] as List<dynamic>).map((e) => $typeInList.values[e as int]).toList()",
          name,
        );
      }
      return error;
    
  }
}

String _getValueWithException(String value, String name) {
  return '''map['$name'] != null ? $value : throw Exception("map['$name']_type_'Null'")''';
}

String _getValueWithInit(String value, String name, String init) {
  return '''map['$name'] != null ? $value : $init''';
}
