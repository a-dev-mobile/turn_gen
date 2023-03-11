  // ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
  /*
  
  
  enum TypeRun {
  enumV2('enum_v2'),
  enumDefault('enum_default'),
  enumInt('enum_int'),
  enumString('enum_string'),
  data('data'),
  assets('assets'),
  union('union'),
  none('none'),
}

  */
  
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

enum TypeRun with Comparable<TypeRun> { 
  enumV2('enum_v2'),
  enumDefault('enum_default'),
  enumInt('enum_int'),
  enumString('enum_string'),
  data('data'),
  assets('assets'),
  union('union'),
  none('none');

  const TypeRun(this.value);

  final String value;

  static TypeRun fromValue(
    String? value, {
    TypeRun? fallback,
  }) {
    switch (value) {
      case 'enum_v2':
        return enumV2;
      case 'enum_default':
        return enumDefault;
      case 'enum_int':
        return enumInt;
      case 'enum_string':
        return enumString;
      case 'data':
        return data;
      case 'assets':
        return assets;
      case 'union':
        return union;
      case 'none':
        return none;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() enumV2,
    required T Function() enumDefault,
    required T Function() enumInt,
    required T Function() enumString,
    required T Function() data,
    required T Function() assets,
    required T Function() union,
    required T Function() none,

  }) {
    switch (this) {
      case TypeRun.enumV2:
        return enumV2();     
      case TypeRun.enumDefault:
        return enumDefault();     
      case TypeRun.enumInt:
        return enumInt();     
      case TypeRun.enumString:
        return enumString();     
      case TypeRun.data:
        return data();     
      case TypeRun.assets:
        return assets();     
      case TypeRun.union:
        return union();     
      case TypeRun.none:
        return none();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? enumV2,
    T Function()? enumDefault,
    T Function()? enumInt,
    T Function()? enumString,
    T Function()? data,
    T Function()? assets,
    T Function()? union,
    T Function()? none,

  }) =>
      map<T>(
      enumV2: enumV2 ?? orElse,     
      enumDefault: enumDefault ?? orElse,     
      enumInt: enumInt ?? orElse,     
      enumString: enumString ?? orElse,     
      data: data ?? orElse,     
      assets: assets ?? orElse,     
      union: union ?? orElse,     
      none: none ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? enumV2,
    T Function()? enumDefault,
    T Function()? enumInt,
    T Function()? enumString,
    T Function()? data,
    T Function()? assets,
    T Function()? union,
    T Function()? none,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        enumV2: enumV2,  
        enumDefault: enumDefault,  
        enumInt: enumInt,  
        enumString: enumString,  
        data: data,  
        assets: assets,  
        union: union,  
        none: none,  
        
      );

  @override
  int compareTo(TypeRun other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }
