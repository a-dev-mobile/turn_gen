// turngen
enum EnumKeySetting implements Comparable<EnumKeySetting> {
  type('type:'),
  fromMap('frommap:'),
  toMap('tomap:'),
  init('init:'),
  only('only:'),
  no('no:'),
  use('use:'),
  none('none:');

  const EnumKeySetting(this.value);

  final String value;
// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumKeySetting fromValue(
    String? value, {
    EnumKeySetting? fallback,
  }) {
    switch (value) {
      case 'type:':
        return type;
      case 'frommap:':
        return fromMap;
      case 'tomap:':
        return toMap;
      case 'init:':
        return init;
      case 'only:':
        return only;
      case 'no:':
        return no;
      case 'use:':
        return use;
      case 'none:':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumKeySetting',
            ));
    }
  }

  T map<T>({
    required T Function() type,
    required T Function() fromMap,
    required T Function() toMap,
    required T Function() init,
    required T Function() only,
    required T Function() no,
    required T Function() use,
    required T Function() none,
  }) {
    switch (this) {
      case EnumKeySetting.type:
        return type();
      case EnumKeySetting.fromMap:
        return fromMap();
      case EnumKeySetting.toMap:
        return toMap();
      case EnumKeySetting.init:
        return init();
      case EnumKeySetting.only:
        return only();
      case EnumKeySetting.no:
        return no();
      case EnumKeySetting.use:
        return use();
      case EnumKeySetting.none:
        return none();
    }
  }

  T mapValue<T>({
    required T type,
    required T fromMap,
    required T toMap,
    required T init,
    required T only,
    required T no,
    required T use,
    required T none,
  }) {
    switch (this) {
      case EnumKeySetting.type:
        return type;
      case EnumKeySetting.fromMap:
        return fromMap;
      case EnumKeySetting.toMap:
        return toMap;
      case EnumKeySetting.init:
        return init;
      case EnumKeySetting.only:
        return only;
      case EnumKeySetting.no:
        return no;
      case EnumKeySetting.use:
        return use;
      case EnumKeySetting.none:
        return none;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? type,
    T Function()? fromMap,
    T Function()? toMap,
    T Function()? init,
    T Function()? only,
    T Function()? no,
    T Function()? use,
    T Function()? none,
  }) =>
      map<T>(
        type: type ?? orElse,
        fromMap: fromMap ?? orElse,
        toMap: toMap ?? orElse,
        init: init ?? orElse,
        only: only ?? orElse,
        no: no ?? orElse,
        use: use ?? orElse,
        none: none ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? type,
    T? fromMap,
    T? toMap,
    T? init,
    T? only,
    T? no,
    T? use,
    T? none,
  }) =>
      mapValue<T>(
        type: type ?? orElse,
        fromMap: fromMap ?? orElse,
        toMap: toMap ?? orElse,
        init: init ?? orElse,
        only: only ?? orElse,
        no: no ?? orElse,
        use: use ?? orElse,
        none: none ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? type,
    T Function()? fromMap,
    T Function()? toMap,
    T Function()? init,
    T Function()? only,
    T Function()? no,
    T Function()? use,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        type: type,
        fromMap: fromMap,
        toMap: toMap,
        init: init,
        only: only,
        no: no,
        use: use,
        none: none,
      );

  T? maybeMapOrNullValue<T>({
    T? type,
    T? fromMap,
    T? toMap,
    T? init,
    T? only,
    T? no,
    T? use,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        type: type,
        fromMap: fromMap,
        toMap: toMap,
        init: init,
        only: only,
        no: no,
        use: use,
        none: none,
      );

  static List<String> getValues() =>
      EnumKeySetting.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumKeySetting other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumKeySetting.$name';
}

extension EnumKeySettingX on EnumKeySetting {
  bool get type => this == EnumKeySetting.type;
  bool get fromMap => this == EnumKeySetting.fromMap;
  bool get toMap => this == EnumKeySetting.toMap;
  bool get init => this == EnumKeySetting.init;
  bool get only => this == EnumKeySetting.only;
  bool get no => this == EnumKeySetting.no;
  bool get use => this == EnumKeySetting.use;
  bool get none => this == EnumKeySetting.none;
}
