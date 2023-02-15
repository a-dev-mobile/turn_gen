// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
/*
  
  
  enum EnumKeySetting {
  type('type:'),
  fromMap('frommap:'),
  toMap('tomap:'),
  init('init:'),
  only('only:'),
  no('no:'),
  use('use:'),
  none('none:');
}

  
  */

//  ******************************
// GENERATED CODE BELOW - DO NOT MODIFY
//  ******************************

enum EnumKeySetting with Comparable<EnumKeySetting> {
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
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
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

  /// Pattern matching
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

  /// Pattern matching
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

  @override
  int compareTo(EnumKeySetting other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
