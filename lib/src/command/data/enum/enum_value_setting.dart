// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
/*
  
  enum EnumValueSetting {
  fromMap('frommap'),
  toMap('tomap'),
  toJson('tojson'),
  fromJson('fromjson'),
  toString_('tostring'),
  copyWith('copywith'),
  equatable('equatable'),
  equals_('equals'),
  hash_('hash'),
  none('none'),
  }
  
  */

//  ******************************
// GENERATED CODE BELOW - DO NOT MODIFY
//  ******************************

enum EnumValueSettingDataClass with Comparable<EnumValueSettingDataClass> {
  fromMap('frommap'),
  toMap('tomap'),
  toJson('tojson'),
  fromJson('fromjson'),
  toString_('tostring'),
  copyWith('copywith'),
  equatable('equatable'),
  equals_('equals'),
  hash_('hash'),
  none('none');

  const EnumValueSettingDataClass(this.value);

  final String value;

  static EnumValueSettingDataClass fromValue(
    String? value, {
    EnumValueSettingDataClass? fallback,
  }) {
    switch (value) {
      case 'frommap':
        return fromMap;
      case 'tomap':
        return toMap;
      case 'tojson':
        return toJson;
      case 'fromjson':
        return fromJson;
      case 'tostring':
        return toString_;
      case 'copywith':
        return copyWith;
      case 'equatable':
        return equatable;
      case 'equals':
        return equals_;
      case 'hash':
        return hash_;
      case 'none':
        return none;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() fromMap,
    required T Function() toMap,
    required T Function() toJson,
    required T Function() fromJson,
    required T Function() toString_,
    required T Function() copyWith,
    required T Function() equatable,
    required T Function() equals_,
    required T Function() hash_,
    required T Function() none,
  }) {
    switch (this) {
      case EnumValueSettingDataClass.fromMap:
        return fromMap();
      case EnumValueSettingDataClass.toMap:
        return toMap();
      case EnumValueSettingDataClass.toJson:
        return toJson();
      case EnumValueSettingDataClass.fromJson:
        return fromJson();
      case EnumValueSettingDataClass.toString_:
        return toString_();
      case EnumValueSettingDataClass.copyWith:
        return copyWith();
      case EnumValueSettingDataClass.equatable:
        return equatable();
      case EnumValueSettingDataClass.equals_:
        return equals_();
      case EnumValueSettingDataClass.hash_:
        return hash_();
      case EnumValueSettingDataClass.none:
        return none();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? fromMap,
    T Function()? toMap,
    T Function()? toJson,
    T Function()? fromJson,
    T Function()? toString_,
    T Function()? copyWith,
    T Function()? equatable,
    T Function()? equals_,
    T Function()? hash_,
    T Function()? none,
  }) =>
      map<T>(
        fromMap: fromMap ?? orElse,
        toMap: toMap ?? orElse,
        toJson: toJson ?? orElse,
        fromJson: fromJson ?? orElse,
        toString_: toString_ ?? orElse,
        copyWith: copyWith ?? orElse,
        equatable: equatable ?? orElse,
        equals_: equals_ ?? orElse,
        hash_: hash_ ?? orElse,
        none: none ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? fromMap,
    T Function()? toMap,
    T Function()? toJson,
    T Function()? fromJson,
    T Function()? toString_,
    T Function()? copyWith,
    T Function()? equatable,
    T Function()? equals_,
    T Function()? hash_,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        fromMap: fromMap,
        toMap: toMap,
        toJson: toJson,
        fromJson: fromJson,
        toString_: toString_,
        copyWith: copyWith,
        equatable: equatable,
        equals_: equals_,
        hash_: hash_,
        none: none,
      );

  @override
  int compareTo(EnumValueSettingDataClass other) =>
      index.compareTo(other.index);

  @override
  String toString() => value;
}
