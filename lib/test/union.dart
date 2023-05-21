// turngen

// ignore_for_file: unnecessary_null_checks

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:turn_gen/test/models/models.dart';

class _UnionTest {
  const _UnionTest.no({
    List<String?>? listString7,
  });
  const _UnionTest.yes({
    List<String?>? listString7,
    Set<int> setDouble2 = const {123, 2, 3, 4},
    Map<String, bool> listMapBool = const {'asd': true, 'asd2': false},
    List<String>? listString6 = const ['asd', 'asd2'],
    required List<String> listString5,
    bool isLoad2 = false,
    List<String> listString = const [],
    List<String> listString2 = const [],
    List<String> listString3 = const [],
    Set<double> setDouble = const {},
    List<String?>? listString9 = const ['asdasd', null, 'asdasd'],
    List<bool> listString4 = const [true, false, true],
    List<int> listint3 = const [],
    Map<String, dynamic> listint32 = const {},
  });
  const _UnionTest.none({
    List<String?>? listString7,
    Set<int> setDouble2 = const {123, 2, 3, 4},
    Map<String, bool> listMapBool = const {'asd': true, 'asd2': false},
    List<String>? listString6 = const ['asd', 'asd2'],
    required List<String> listString5,
    bool isLoad2 = false,
    List<String> listString = const [],
    List<String> listString2 = const [],
    List<String> listString3 = const [],
    Set<double> setDouble = const {},
    List<String?>? listString9 = const ['asdasd', null, 'asdasd'],
    List<bool> listString4 = const [true, false, true],
    List<int> listint3 = const [],
    required bool isLoad1,
  });
}
// end

//          --TURN_GEN--
//             (union)
//  *************************************
//         GENERATED CODE
//  *************************************
// coverage:ignore-file
// ignore_for_file: avoid_unused_constructor_parameters, unused_element, avoid-non-null-assertion,  library_private_types_in_public_api,non_constant_identifier_names, always_put_required_named_parameters_first,  avoid_positional_boolean_parameters, strict_raw_type, curly_braces_in_flow_control_structures
@immutable
class UnionTest {
  const UnionTest.no({
    List<String?>? listString7,
  })  : _tag = _UnionTestTag.no,
        _listString7_no = listString7,
        _listString7_yes = null,
        _setDouble2_yes = null,
        _listMapBool_yes = null,
        _listString6_yes = null,
        _listString5_yes = null,
        _isLoad2_yes = null,
        _listString_yes = null,
        _listString2_yes = null,
        _listString3_yes = null,
        _setDouble_yes = null,
        _listString9_yes = null,
        _listString4_yes = null,
        _listint3_yes = null,
        _listint32_yes = null,
        _listString7_none = null,
        _setDouble2_none = null,
        _listMapBool_none = null,
        _listString6_none = null,
        _listString5_none = null,
        _isLoad2_none = null,
        _listString_none = null,
        _listString2_none = null,
        _listString3_none = null,
        _setDouble_none = null,
        _listString9_none = null,
        _listString4_none = null,
        _listint3_none = null,
        _isLoad1_none = null;

  const UnionTest.yes({
    List<String?>? listString7,
    Set<int> setDouble2 = const {123, 2, 3, 4},
    Map<String, bool> listMapBool = const {'asd': true, 'asd2': false},
    List<String>? listString6 = const ['asd', 'asd2'],
    required List<String> listString5,
    bool isLoad2 = false,
    List<String> listString = const [],
    List<String> listString2 = const [],
    List<String> listString3 = const [],
    Set<double> setDouble = const {},
    List<String?>? listString9 = const ['asdasd', null, 'asdasd'],
    List<bool> listString4 = const [true, false, true],
    List<int> listint3 = const [],
    Map<String, dynamic> listint32 = const {},
  })  : _tag = _UnionTestTag.yes,
        _listString7_no = null,
        _listString7_yes = listString7,
        _setDouble2_yes = setDouble2,
        _listMapBool_yes = listMapBool,
        _listString6_yes = listString6,
        _listString5_yes = listString5,
        _isLoad2_yes = isLoad2,
        _listString_yes = listString,
        _listString2_yes = listString2,
        _listString3_yes = listString3,
        _setDouble_yes = setDouble,
        _listString9_yes = listString9,
        _listString4_yes = listString4,
        _listint3_yes = listint3,
        _listint32_yes = listint32,
        _listString7_none = null,
        _setDouble2_none = null,
        _listMapBool_none = null,
        _listString6_none = null,
        _listString5_none = null,
        _isLoad2_none = null,
        _listString_none = null,
        _listString2_none = null,
        _listString3_none = null,
        _setDouble_none = null,
        _listString9_none = null,
        _listString4_none = null,
        _listint3_none = null,
        _isLoad1_none = null;

  const UnionTest.none({
    List<String?>? listString7,
    Set<int> setDouble2 = const {123, 2, 3, 4},
    Map<String, bool> listMapBool = const {'asd': true, 'asd2': false},
    List<String>? listString6 = const ['asd', 'asd2'],
    required List<String> listString5,
    bool isLoad2 = false,
    List<String> listString = const [],
    List<String> listString2 = const [],
    List<String> listString3 = const [],
    Set<double> setDouble = const {},
    List<String?>? listString9 = const ['asdasd', null, 'asdasd'],
    List<bool> listString4 = const [true, false, true],
    List<int> listint3 = const [],
    required bool isLoad1,
  })  : _tag = _UnionTestTag.none,
        _listString7_no = null,
        _listString7_yes = null,
        _setDouble2_yes = null,
        _listMapBool_yes = null,
        _listString6_yes = null,
        _listString5_yes = null,
        _isLoad2_yes = null,
        _listString_yes = null,
        _listString2_yes = null,
        _listString3_yes = null,
        _setDouble_yes = null,
        _listString9_yes = null,
        _listString4_yes = null,
        _listint3_yes = null,
        _listint32_yes = null,
        _listString7_none = listString7,
        _setDouble2_none = setDouble2,
        _listMapBool_none = listMapBool,
        _listString6_none = listString6,
        _listString5_none = listString5,
        _isLoad2_none = isLoad2,
        _listString_none = listString,
        _listString2_none = listString2,
        _listString3_none = listString3,
        _setDouble_none = setDouble,
        _listString9_none = listString9,
        _listString4_none = listString4,
        _listint3_none = listint3,
        _isLoad1_none = isLoad1;

  Map<String, dynamic> toMap() {
    switch (_tag) {
      case _UnionTestTag.no:
        return {
          'tag': 'no',
          'listString7': _listString7_no!,
        };
      case _UnionTestTag.yes:
        return {
          'tag': 'yes',
          'listString7': _listString7_yes!,
          'setDouble2': _setDouble2_yes!.toList(),
          'listMapBool': _listMapBool_yes!.map(MapEntry.new),
          'listString6': _listString6_yes!,
          'listString5': _listString5_yes!,
          'isLoad2': _isLoad2_yes!,
          'listString': _listString_yes!,
          'listString2': _listString2_yes!,
          'listString3': _listString3_yes!,
          'setDouble': _setDouble_yes!.toList(),
          'listString9': _listString9_yes!,
          'listString4': _listString4_yes!,
          'listint3': _listint3_yes!,
          'listint32': _listint32_yes!.map(MapEntry.new),
        };
      case _UnionTestTag.none:
        return {
          'tag': 'none',
          'listString7': _listString7_none!,
          'setDouble2': _setDouble2_none!.toList(),
          'listMapBool': _listMapBool_none!.map(MapEntry.new),
          'listString6': _listString6_none!,
          'listString5': _listString5_none!,
          'isLoad2': _isLoad2_none!,
          'listString': _listString_none!,
          'listString2': _listString2_none!,
          'listString3': _listString3_none!,
          'setDouble': _setDouble_none!.toList(),
          'listString9': _listString9_none!,
          'listString4': _listString4_none!,
          'listint3': _listint3_none!,
          'isLoad1': _isLoad1_none!,
        };
    }
  }

  static UnionTest fromMap(Map<dynamic, dynamic> map) {
    final tag = map['tag'];
    switch (tag) {
      case 'no':
        return UnionTest.no(
          listString7: (map['listString7'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList(),
        );
      case 'yes':
        return UnionTest.yes(
          listString7: (map['listString7'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList(),
          setDouble2: (map['setDouble2'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toSet() ??
              const {123, 2, 3, 4},
          listMapBool: (map['listMapBool'] as Map<String, dynamic>?)
                  ?.map((k, e) => MapEntry(k, e as bool)) ??
              const {'asd': true, 'asd2': false},
          listString6: (map['listString6'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const ['asd', 'asd2'],
          listString5: map['listString5'] != null
              ? (map['listString5'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList()
              : throw Exception(
                  "map['listString5']_type_'Null'",
                ),
          isLoad2: map['isLoad2'] as bool? ?? false,
          listString: (map['listString'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          listString2: (map['listString2'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          listString3: (map['listString3'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          setDouble: (map['setDouble'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toSet() ??
              const {},
          listString9: (map['listString9'] as List<dynamic>?)
                  ?.map((e) => e as String?)
                  .toList() ??
              const ['asdasd', null, 'asdasd'],
          listString4: (map['listString4'] as List<dynamic>?)
                  ?.map((e) => e as bool)
                  .toList() ??
              const [true, false, true],
          listint3: (map['listint3'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toList() ??
              const [],
          listint32: map['listint32'] != null
              ? map['listint32'] as Map<String, dynamic>
              : const {},
        );
      case 'none':
        return UnionTest.none(
          listString7: (map['listString7'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList(),
          setDouble2: (map['setDouble2'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toSet() ??
              const {123, 2, 3, 4},
          listMapBool: (map['listMapBool'] as Map<String, dynamic>?)
                  ?.map((k, e) => MapEntry(k, e as bool)) ??
              const {'asd': true, 'asd2': false},
          listString6: (map['listString6'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const ['asd', 'asd2'],
          listString5: map['listString5'] != null
              ? (map['listString5'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList()
              : throw Exception(
                  "map['listString5']_type_'Null'",
                ),
          isLoad2: map['isLoad2'] as bool? ?? false,
          listString: (map['listString'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          listString2: (map['listString2'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          listString3: (map['listString3'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          setDouble: (map['setDouble'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toSet() ??
              const {},
          listString9: (map['listString9'] as List<dynamic>?)
                  ?.map((e) => e as String?)
                  .toList() ??
              const ['asdasd', null, 'asdasd'],
          listString4: (map['listString4'] as List<dynamic>?)
                  ?.map((e) => e as bool)
                  .toList() ??
              const [true, false, true],
          listint3: (map['listint3'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toList() ??
              const [],
          isLoad1: map['isLoad1'] != null
              ? map['isLoad1'] as bool
              : throw Exception(
                  "map['isLoad1']_type_'Null'",
                ),
        );
      default:
        throw ArgumentError('Invalid map: $map');
    }
  }

  UnionTest copyWith({
    List<String?>? listString7,
    Set<int>? setDouble2,
    Map<String, bool>? listMapBool,
    List<String>? listString6,
    List<String>? listString5,
    bool? isLoad2,
    List<String>? listString,
    List<String>? listString2,
    List<String>? listString3,
    Set<double>? setDouble,
    List<String?>? listString9,
    List<bool>? listString4,
    List<int>? listint3,
    Map<String, dynamic>? listint32,
    bool? isLoad1,
  }) {
    switch (_tag) {
      case _UnionTestTag.no:
        return UnionTest.no(
          listString7: listString7 ?? _listString7_no!,
        );
      case _UnionTestTag.yes:
        return UnionTest.yes(
          listString7: listString7 ?? _listString7_yes!,
          setDouble2: setDouble2 ?? _setDouble2_yes!,
          listMapBool: listMapBool ?? _listMapBool_yes!,
          listString6: listString6 ?? _listString6_yes!,
          listString5: listString5 ?? _listString5_yes!,
          isLoad2: isLoad2 ?? _isLoad2_yes!,
          listString: listString ?? _listString_yes!,
          listString2: listString2 ?? _listString2_yes!,
          listString3: listString3 ?? _listString3_yes!,
          setDouble: setDouble ?? _setDouble_yes!,
          listString9: listString9 ?? _listString9_yes!,
          listString4: listString4 ?? _listString4_yes!,
          listint3: listint3 ?? _listint3_yes!,
          listint32: listint32 ?? _listint32_yes!,
        );
      case _UnionTestTag.none:
        return UnionTest.none(
          listString7: listString7 ?? _listString7_none!,
          setDouble2: setDouble2 ?? _setDouble2_none!,
          listMapBool: listMapBool ?? _listMapBool_none!,
          listString6: listString6 ?? _listString6_none!,
          listString5: listString5 ?? _listString5_none!,
          isLoad2: isLoad2 ?? _isLoad2_none!,
          listString: listString ?? _listString_none!,
          listString2: listString2 ?? _listString2_none!,
          listString3: listString3 ?? _listString3_none!,
          setDouble: setDouble ?? _setDouble_none!,
          listString9: listString9 ?? _listString9_none!,
          listString4: listString4 ?? _listString4_none!,
          listint3: listint3 ?? _listint3_none!,
          isLoad1: isLoad1 ?? _isLoad1_none!,
        );
    }
  }

  T map<T>({
    required T Function(_UnionTestNo v) no,
    required T Function(_UnionTestYes v) yes,
    required T Function(_UnionTestNone v) none,
  }) {
    switch (_tag) {
      case _UnionTestTag.no:
        return no(
          _UnionTestNo(
            _listString7_no!,
          ),
        );
      case _UnionTestTag.yes:
        return yes(
          _UnionTestYes(
            _listString7_yes!,
            _setDouble2_yes!,
            _listMapBool_yes!,
            _listString6_yes!,
            _listString5_yes!,
            _isLoad2_yes!,
            _listString_yes!,
            _listString2_yes!,
            _listString3_yes!,
            _setDouble_yes!,
            _listString9_yes!,
            _listString4_yes!,
            _listint3_yes!,
            _listint32_yes!,
          ),
        );
      case _UnionTestTag.none:
        return none(
          _UnionTestNone(
            _listString7_none!,
            _setDouble2_none!,
            _listMapBool_none!,
            _listString6_none!,
            _listString5_none!,
            _isLoad2_none!,
            _listString_none!,
            _listString2_none!,
            _listString3_none!,
            _setDouble_none!,
            _listString9_none!,
            _listString4_none!,
            _listint3_none!,
            _isLoad1_none!,
          ),
        );
    }
  }

  T maybeMap<T>({
    T Function(_UnionTestNo v)? no,
    T Function(_UnionTestYes v)? yes,
    T Function(_UnionTestNone v)? none,
    required T Function() orElse,
  }) {
    switch (_tag) {
      case _UnionTestTag.no:
        if (no != null)
          return no(
            _UnionTestNo(
              _listString7_no!,
            ),
          );
        return orElse();
      case _UnionTestTag.yes:
        if (yes != null)
          return yes(
            _UnionTestYes(
              _listString7_yes!,
              _setDouble2_yes!,
              _listMapBool_yes!,
              _listString6_yes!,
              _listString5_yes!,
              _isLoad2_yes!,
              _listString_yes!,
              _listString2_yes!,
              _listString3_yes!,
              _setDouble_yes!,
              _listString9_yes!,
              _listString4_yes!,
              _listint3_yes!,
              _listint32_yes!,
            ),
          );
        return orElse();
      case _UnionTestTag.none:
        if (none != null)
          return none(
            _UnionTestNone(
              _listString7_none!,
              _setDouble2_none!,
              _listMapBool_none!,
              _listString6_none!,
              _listString5_none!,
              _isLoad2_none!,
              _listString_none!,
              _listString2_none!,
              _listString3_none!,
              _setDouble_none!,
              _listString9_none!,
              _listString4_none!,
              _listint3_none!,
              _isLoad1_none!,
            ),
          );
        return orElse();
    }
  }

  T? mapOrNull<T>({
    T? Function(_UnionTestNo v)? no,
    T? Function(_UnionTestYes v)? yes,
    T? Function(_UnionTestNone v)? none,
  }) {
    switch (_tag) {
      case _UnionTestTag.no:
        return no?.call(
          _UnionTestNo(
            _listString7_no!,
          ),
        );
      case _UnionTestTag.yes:
        return yes?.call(
          _UnionTestYes(
            _listString7_yes!,
            _setDouble2_yes!,
            _listMapBool_yes!,
            _listString6_yes!,
            _listString5_yes!,
            _isLoad2_yes!,
            _listString_yes!,
            _listString2_yes!,
            _listString3_yes!,
            _setDouble_yes!,
            _listString9_yes!,
            _listString4_yes!,
            _listint3_yes!,
            _listint32_yes!,
          ),
        );
      case _UnionTestTag.none:
        return none?.call(
          _UnionTestNone(
            _listString7_none!,
            _setDouble2_none!,
            _listMapBool_none!,
            _listString6_none!,
            _listString5_none!,
            _isLoad2_none!,
            _listString_none!,
            _listString2_none!,
            _listString3_none!,
            _setDouble_none!,
            _listString9_none!,
            _listString4_none!,
            _listint3_none!,
            _isLoad1_none!,
          ),
        );
    }
  }

  T? maybeMapOrNull<T>({
    T? Function(_UnionTestNo v)? no,
    T? Function(_UnionTestYes v)? yes,
    T? Function(_UnionTestNone v)? none,
  }) {
    switch (_tag) {
      case _UnionTestTag.no:
        if (no != null)
          return no(
            _UnionTestNo(
              _listString7_no!,
            ),
          );
        return null;
      case _UnionTestTag.yes:
        if (yes != null)
          return yes(
            _UnionTestYes(
              _listString7_yes!,
              _setDouble2_yes!,
              _listMapBool_yes!,
              _listString6_yes!,
              _listString5_yes!,
              _isLoad2_yes!,
              _listString_yes!,
              _listString2_yes!,
              _listString3_yes!,
              _setDouble_yes!,
              _listString9_yes!,
              _listString4_yes!,
              _listint3_yes!,
              _listint32_yes!,
            ),
          );
        return null;
      case _UnionTestTag.none:
        if (none != null)
          return none(
            _UnionTestNone(
              _listString7_none!,
              _setDouble2_none!,
              _listMapBool_none!,
              _listString6_none!,
              _listString5_none!,
              _isLoad2_none!,
              _listString_none!,
              _listString2_none!,
              _listString3_none!,
              _setDouble_none!,
              _listString9_none!,
              _listString4_none!,
              _listint3_none!,
              _isLoad1_none!,
            ),
          );
        return null;
    }
  }

  T when<T>({
    required T Function(
      List<String?>? listString7,
    ) no,
    required T Function(
      List<String?>? listString7,
      Set<int> setDouble2,
      Map<String, bool> listMapBool,
      List<String>? listString6,
      List<String> listString5,
      bool isLoad2,
      List<String> listString,
      List<String> listString2,
      List<String> listString3,
      Set<double> setDouble,
      List<String?>? listString9,
      List<bool> listString4,
      List<int> listint3,
      Map<String, dynamic> listint32,
    ) yes,
    required T Function(
      List<String?>? listString7,
      Set<int> setDouble2,
      Map<String, bool> listMapBool,
      List<String>? listString6,
      List<String> listString5,
      bool isLoad2,
      List<String> listString,
      List<String> listString2,
      List<String> listString3,
      Set<double> setDouble,
      List<String?>? listString9,
      List<bool> listString4,
      List<int> listint3,
      bool isLoad1,
    ) none,
  }) {
    switch (_tag) {
      case _UnionTestTag.no:
        return no(
          _listString7_no,
        );
      case _UnionTestTag.yes:
        return yes(
          _listString7_yes,
          _setDouble2_yes!,
          _listMapBool_yes!,
          _listString6_yes,
          _listString5_yes!,
          _isLoad2_yes!,
          _listString_yes!,
          _listString2_yes!,
          _listString3_yes!,
          _setDouble_yes!,
          _listString9_yes,
          _listString4_yes!,
          _listint3_yes!,
          _listint32_yes!,
        );
      case _UnionTestTag.none:
        return none(
          _listString7_none,
          _setDouble2_none!,
          _listMapBool_none!,
          _listString6_none,
          _listString5_none!,
          _isLoad2_none!,
          _listString_none!,
          _listString2_none!,
          _listString3_none!,
          _setDouble_none!,
          _listString9_none,
          _listString4_none!,
          _listint3_none!,
          _isLoad1_none!,
        );
    }
  }

  @override
  bool operator ==(dynamic other) {
    switch (_tag) {
      case _UnionTestTag.no:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is UnionTest &&
                const DeepCollectionEquality().equals(
                  other._listString7_no,
                  _listString7_no,
                ));
      case _UnionTestTag.yes:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is UnionTest &&
                const DeepCollectionEquality().equals(
                  other._listString7_yes,
                  _listString7_yes,
                ) &&
                const DeepCollectionEquality().equals(
                  other._setDouble2_yes,
                  _setDouble2_yes,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listMapBool_yes,
                  _listMapBool_yes,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString6_yes,
                  _listString6_yes,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString5_yes,
                  _listString5_yes,
                ) &&
                (identical(
                      other._isLoad2_yes,
                      _isLoad2_yes,
                    ) ||
                    other._isLoad2_yes == _isLoad2_yes) &&
                const DeepCollectionEquality().equals(
                  other._listString_yes,
                  _listString_yes,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString2_yes,
                  _listString2_yes,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString3_yes,
                  _listString3_yes,
                ) &&
                const DeepCollectionEquality().equals(
                  other._setDouble_yes,
                  _setDouble_yes,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString9_yes,
                  _listString9_yes,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString4_yes,
                  _listString4_yes,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listint3_yes,
                  _listint3_yes,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listint32_yes,
                  _listint32_yes,
                ));
      case _UnionTestTag.none:
        return identical(this, other) ||
            (other.runtimeType == runtimeType &&
                other is UnionTest &&
                const DeepCollectionEquality().equals(
                  other._listString7_none,
                  _listString7_none,
                ) &&
                const DeepCollectionEquality().equals(
                  other._setDouble2_none,
                  _setDouble2_none,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listMapBool_none,
                  _listMapBool_none,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString6_none,
                  _listString6_none,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString5_none,
                  _listString5_none,
                ) &&
                (identical(
                      other._isLoad2_none,
                      _isLoad2_none,
                    ) ||
                    other._isLoad2_none == _isLoad2_none) &&
                const DeepCollectionEquality().equals(
                  other._listString_none,
                  _listString_none,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString2_none,
                  _listString2_none,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString3_none,
                  _listString3_none,
                ) &&
                const DeepCollectionEquality().equals(
                  other._setDouble_none,
                  _setDouble_none,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString9_none,
                  _listString9_none,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listString4_none,
                  _listString4_none,
                ) &&
                const DeepCollectionEquality().equals(
                  other._listint3_none,
                  _listint3_none,
                ) &&
                (identical(
                      other._isLoad1_none,
                      _isLoad1_none,
                    ) ||
                    other._isLoad1_none == _isLoad1_none));
    }
  }

  @override
  int get hashCode {
    switch (_tag) {
      case _UnionTestTag.no:
        return Object.hashAll(
          [
            runtimeType,
            const DeepCollectionEquality().hash(
              _listString7_no,
            ),
          ],
        );
      case _UnionTestTag.yes:
        return Object.hashAll(
          [
            runtimeType,
            const DeepCollectionEquality().hash(
              _listString7_yes,
            ),
            const DeepCollectionEquality().hash(
              _setDouble2_yes,
            ),
            const DeepCollectionEquality().hash(
              _listMapBool_yes,
            ),
            const DeepCollectionEquality().hash(
              _listString6_yes,
            ),
            const DeepCollectionEquality().hash(
              _listString5_yes,
            ),
            _isLoad2_yes,
            const DeepCollectionEquality().hash(
              _listString_yes,
            ),
            const DeepCollectionEquality().hash(
              _listString2_yes,
            ),
            const DeepCollectionEquality().hash(
              _listString3_yes,
            ),
            const DeepCollectionEquality().hash(
              _setDouble_yes,
            ),
            const DeepCollectionEquality().hash(
              _listString9_yes,
            ),
            const DeepCollectionEquality().hash(
              _listString4_yes,
            ),
            const DeepCollectionEquality().hash(
              _listint3_yes,
            ),
            const DeepCollectionEquality().hash(
              _listint32_yes,
            ),
          ],
        );
      case _UnionTestTag.none:
        return Object.hashAll(
          [
            runtimeType,
            const DeepCollectionEquality().hash(
              _listString7_none,
            ),
            const DeepCollectionEquality().hash(
              _setDouble2_none,
            ),
            const DeepCollectionEquality().hash(
              _listMapBool_none,
            ),
            const DeepCollectionEquality().hash(
              _listString6_none,
            ),
            const DeepCollectionEquality().hash(
              _listString5_none,
            ),
            _isLoad2_none,
            const DeepCollectionEquality().hash(
              _listString_none,
            ),
            const DeepCollectionEquality().hash(
              _listString2_none,
            ),
            const DeepCollectionEquality().hash(
              _listString3_none,
            ),
            const DeepCollectionEquality().hash(
              _setDouble_none,
            ),
            const DeepCollectionEquality().hash(
              _listString9_none,
            ),
            const DeepCollectionEquality().hash(
              _listString4_none,
            ),
            const DeepCollectionEquality().hash(
              _listint3_none,
            ),
            _isLoad1_none,
          ],
        );
    }
  }

  @override
  String toString() {
    switch (_tag) {
      case _UnionTestTag.no:
        return 'UnionTest.no(listString7: $_listString7_no)';
      case _UnionTestTag.yes:
        return 'UnionTest.yes(listString7: $_listString7_yes, setDouble2: $_setDouble2_yes, listMapBool: $_listMapBool_yes, listString6: $_listString6_yes, listString5: $_listString5_yes, isLoad2: $_isLoad2_yes, listString: $_listString_yes, listString2: $_listString2_yes, listString3: $_listString3_yes, setDouble: $_setDouble_yes, listString9: $_listString9_yes, listString4: $_listString4_yes, listint3: $_listint3_yes, listint32: $_listint32_yes)';
      case _UnionTestTag.none:
        return 'UnionTest.none(listString7: $_listString7_none, setDouble2: $_setDouble2_none, listMapBool: $_listMapBool_none, listString6: $_listString6_none, listString5: $_listString5_none, isLoad2: $_isLoad2_none, listString: $_listString_none, listString2: $_listString2_none, listString3: $_listString3_none, setDouble: $_setDouble_none, listString9: $_listString9_none, listString4: $_listString4_none, listint3: $_listint3_none, isLoad1: $_isLoad1_none)';
    }
  }

  final _UnionTestTag _tag;
  final List<String?>? _listString7_no;
  final List<String?>? _listString7_yes;
  final Set<int>? _setDouble2_yes;
  final Map<String, bool>? _listMapBool_yes;
  final List<String>? _listString6_yes;
  final List<String>? _listString5_yes;
  final bool? _isLoad2_yes;
  final List<String>? _listString_yes;
  final List<String>? _listString2_yes;
  final List<String>? _listString3_yes;
  final Set<double>? _setDouble_yes;
  final List<String?>? _listString9_yes;
  final List<bool>? _listString4_yes;
  final List<int>? _listint3_yes;
  final Map<String, dynamic>? _listint32_yes;
  final List<String?>? _listString7_none;
  final Set<int>? _setDouble2_none;
  final Map<String, bool>? _listMapBool_none;
  final List<String>? _listString6_none;
  final List<String>? _listString5_none;
  final bool? _isLoad2_none;
  final List<String>? _listString_none;
  final List<String>? _listString2_none;
  final List<String>? _listString3_none;
  final Set<double>? _setDouble_none;
  final List<String?>? _listString9_none;
  final List<bool>? _listString4_none;
  final List<int>? _listint3_none;
  final bool? _isLoad1_none;
}

enum _UnionTestTag {
  no,
  yes,
  none,
}

@immutable
class _UnionTestNo extends UnionTest {
  const _UnionTestNo(
    this.listString7,
  ) : super.no(
          listString7: listString7,
        );
  final List<String?> listString7;
}

@immutable
class _UnionTestYes extends UnionTest {
  const _UnionTestYes(
    this.listString7,
    this.setDouble2,
    this.listMapBool,
    this.listString6,
    this.listString5,
    this.isLoad2,
    this.listString,
    this.listString2,
    this.listString3,
    this.setDouble,
    this.listString9,
    this.listString4,
    this.listint3,
    this.listint32,
  ) : super.yes(
          listString7: listString7,
          setDouble2: setDouble2,
          listMapBool: listMapBool,
          listString6: listString6,
          listString5: listString5,
          isLoad2: isLoad2,
          listString: listString,
          listString2: listString2,
          listString3: listString3,
          setDouble: setDouble,
          listString9: listString9,
          listString4: listString4,
          listint3: listint3,
          listint32: listint32,
        );
  final List<String?> listString7;
  final Set<int> setDouble2;
  final Map<String, bool> listMapBool;
  final List<String> listString6;
  final List<String> listString5;
  final bool isLoad2;
  final List<String> listString;
  final List<String> listString2;
  final List<String> listString3;
  final Set<double> setDouble;
  final List<String?> listString9;
  final List<bool> listString4;
  final List<int> listint3;
  final Map<String, dynamic> listint32;
}

@immutable
class _UnionTestNone extends UnionTest {
  const _UnionTestNone(
    this.listString7,
    this.setDouble2,
    this.listMapBool,
    this.listString6,
    this.listString5,
    this.isLoad2,
    this.listString,
    this.listString2,
    this.listString3,
    this.setDouble,
    this.listString9,
    this.listString4,
    this.listint3,
    this.isLoad1,
  ) : super.none(
          listString7: listString7,
          setDouble2: setDouble2,
          listMapBool: listMapBool,
          listString6: listString6,
          listString5: listString5,
          isLoad2: isLoad2,
          listString: listString,
          listString2: listString2,
          listString3: listString3,
          setDouble: setDouble,
          listString9: listString9,
          listString4: listString4,
          listint3: listint3,
          isLoad1: isLoad1,
        );
  final List<String?> listString7;
  final Set<int> setDouble2;
  final Map<String, bool> listMapBool;
  final List<String> listString6;
  final List<String> listString5;
  final bool isLoad2;
  final List<String> listString;
  final List<String> listString2;
  final List<String> listString3;
  final Set<double> setDouble;
  final List<String?> listString9;
  final List<bool> listString4;
  final List<int> listint3;
  final bool isLoad1;
}
