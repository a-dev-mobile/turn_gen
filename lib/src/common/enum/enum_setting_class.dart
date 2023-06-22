enum EnumSettingClass implements Comparable<EnumSettingClass> {
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

  const EnumSettingClass(this.value);

  final String value;
// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumSettingClass fromValue(
    String? value, {
    EnumSettingClass? fallback,
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
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumSettingClass',
            ));
    }
  }

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
      case EnumSettingClass.fromMap:
        return fromMap();
      case EnumSettingClass.toMap:
        return toMap();
      case EnumSettingClass.toJson:
        return toJson();
      case EnumSettingClass.fromJson:
        return fromJson();
      case EnumSettingClass.toString_:
        return toString_();
      case EnumSettingClass.copyWith:
        return copyWith();
      case EnumSettingClass.equatable:
        return equatable();
      case EnumSettingClass.equals_:
        return equals_();
      case EnumSettingClass.hash_:
        return hash_();
      case EnumSettingClass.none:
        return none();
    }
  }

  T mapValue<T>({
    required T fromMap,
    required T toMap,
    required T toJson,
    required T fromJson,
    required T toString_,
    required T copyWith,
    required T equatable,
    required T equals_,
    required T hash_,
    required T none,
  }) {
    switch (this) {
      case EnumSettingClass.fromMap:
        return fromMap;
      case EnumSettingClass.toMap:
        return toMap;
      case EnumSettingClass.toJson:
        return toJson;
      case EnumSettingClass.fromJson:
        return fromJson;
      case EnumSettingClass.toString_:
        return toString_;
      case EnumSettingClass.copyWith:
        return copyWith;
      case EnumSettingClass.equatable:
        return equatable;
      case EnumSettingClass.equals_:
        return equals_;
      case EnumSettingClass.hash_:
        return hash_;
      case EnumSettingClass.none:
        return none;
    }
  }

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

  T maybeMapValue<T>({
    required T orElse,
    T? fromMap,
    T? toMap,
    T? toJson,
    T? fromJson,
    T? toString_,
    T? copyWith,
    T? equatable,
    T? equals_,
    T? hash_,
    T? none,
  }) =>
      mapValue<T>(
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

  T? maybeMapOrNullValue<T>({
    T? fromMap,
    T? toMap,
    T? toJson,
    T? fromJson,
    T? toString_,
    T? copyWith,
    T? equatable,
    T? equals_,
    T? hash_,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
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

  static List<String> getValues() =>
      EnumSettingClass.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumSettingClass other) => index.compareTo(other.index);
}

extension EnumSettingClassX on EnumSettingClass {
  bool get fromMap => this == EnumSettingClass.fromMap;
  bool get toMap => this == EnumSettingClass.toMap;
  bool get toJson => this == EnumSettingClass.toJson;
  bool get fromJson => this == EnumSettingClass.fromJson;
  bool get toString_ => this == EnumSettingClass.toString_;
  bool get copyWith => this == EnumSettingClass.copyWith;
  bool get equatable => this == EnumSettingClass.equatable;
  bool get equals_ => this == EnumSettingClass.equals_;
  bool get hash_ => this == EnumSettingClass.hash_;
  bool get none => this == EnumSettingClass.none;
}
