  // ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
  /*
  
  
  enum TypeRun {
  enum_('enum'),
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
  enum_('enum'),
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
      case 'enum':
        return enum_;
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
    required T Function() enum_,
    required T Function() enumDefault,
    required T Function() enumInt,
    required T Function() enumString,
    required T Function() data,
    required T Function() assets,
    required T Function() union,
    required T Function() none,

  }) {
    switch (this) {
      case TypeRun.enum_:
        return enum_();     
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
    T Function()? enum_,
    T Function()? enumDefault,
    T Function()? enumInt,
    T Function()? enumString,
    T Function()? data,
    T Function()? assets,
    T Function()? union,
    T Function()? none,

  }) =>
      map<T>(
      enum_: enum_ ?? orElse,     
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
    T Function()? enum_,
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
        enum_: enum_,  
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
