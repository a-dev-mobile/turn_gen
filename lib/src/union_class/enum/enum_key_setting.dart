  // ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
  /*
  
  
  enum EnumKeySettingUnion {
  type('type:'),
  init('init:'),
  none('none:');
}
  */
  
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

enum EnumKeySettingUnion with Comparable<EnumKeySettingUnion> { 
  type('type:'),
  init('init:'),
  none('none:');

  const EnumKeySettingUnion(this.value);

  final String value;

  static EnumKeySettingUnion fromValue(
    String? value, {
    EnumKeySettingUnion? fallback,
  }) {
    switch (value) {
      case 'type:':
        return type;
      case 'init:':
        return init;
      case 'none:':
        return none;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() type,
    required T Function() init,
    required T Function() none,

  }) {
    switch (this) {
      case EnumKeySettingUnion.type:
        return type();     
      case EnumKeySettingUnion.init:
        return init();     
      case EnumKeySettingUnion.none:
        return none();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? type,
    T Function()? init,
    T Function()? none,

  }) =>
      map<T>(
      type: type ?? orElse,     
      init: init ?? orElse,     
      none: none ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? type,
    T Function()? init,
    T Function()? none,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        type: type,  
        init: init,  
        none: none,  
        
      );

  @override
  int compareTo(EnumKeySettingUnion other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }
