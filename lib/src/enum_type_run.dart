enum TypeRun with Comparable<TypeRun> {
  enum_('enum'),
  enumDefault('enum_default'),
  enumInt('enum_int'),
  enumString('enum_string'),
  data('data'),
  assets('assets'),
  build('build'),
  union('union'),
  none('none');

  const TypeRun(this.value);

  final String value;

  // end

//          --TURN_GEN--
//           v0.6.7 (enum)
//  *************************************
//         GENERATED CODE 
//  *************************************
  

  static TypeRun fromValue(String? value, {TypeRun? fallback}) {
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
      case 'build':
        return build;
      case 'union':
        return union;
      case 'none':
        return none;
      default:
        return fallback ?? (throw ArgumentError.value(
          value, '', 'Value not found in TypeRun',));
    }
  }


  T map<T>({
    required T Function() enum_,
    required T Function() enumDefault,
    required T Function() enumInt,
    required T Function() enumString,
    required T Function() data,
    required T Function() assets,
    required T Function() build,
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
      case TypeRun.build:
        return build();
      case TypeRun.union:
        return union();
      case TypeRun.none:
        return none();
    }
  }


  T mapValue<T>({
    required T enum_,
    required T enumDefault,
    required T enumInt,
    required T enumString,
    required T data,
    required T assets,
    required T build,
    required T union,
    required T none,
  }) {
    switch (this) {
      case TypeRun.enum_:
        return enum_;
      case TypeRun.enumDefault:
        return enumDefault;
      case TypeRun.enumInt:
        return enumInt;
      case TypeRun.enumString:
        return enumString;
      case TypeRun.data:
        return data;
      case TypeRun.assets:
        return assets;
      case TypeRun.build:
        return build;
      case TypeRun.union:
        return union;
      case TypeRun.none:
        return none;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? enum_,
    T Function()? enumDefault,
    T Function()? enumInt,
    T Function()? enumString,
    T Function()? data,
    T Function()? assets,
    T Function()? build,
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
      build: build ?? orElse,
      union: union ?? orElse,
      none: none ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? enum_,
    T? enumDefault,
    T? enumInt,
    T? enumString,
    T? data,
    T? assets,
    T? build,
    T? union,
    T? none,
  }) =>
      mapValue<T>(
      enum_: enum_ ?? orElse,
      enumDefault: enumDefault ?? orElse,
      enumInt: enumInt ?? orElse,
      enumString: enumString ?? orElse,
      data: data ?? orElse,
      assets: assets ?? orElse,
      build: build ?? orElse,
      union: union ?? orElse,
      none: none ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? enum_,
    T Function()? enumDefault,
    T Function()? enumInt,
    T Function()? enumString,
    T Function()? data,
    T Function()? assets,
    T Function()? build,
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
        build: build,
        union: union,
        none: none,
      );


  T? maybeMapOrNullValue<T>({
    T? enum_,
    T? enumDefault,
    T? enumInt,
    T? enumString,
    T? data,
    T? assets,
    T? build,
    T? union,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        enum_: enum_,
        enumDefault: enumDefault,
        enumInt: enumInt,
        enumString: enumString,
        data: data,
        assets: assets,
        build: build,
        union: union,
        none: none,
      );


  static List<String> getValues() => TypeRun.values.map((e) => e.value).toList();

  @override
  int compareTo(TypeRun other) => index.compareTo(other.index);

  @override
  String toString() => 'TypeRun.$name($value)';


}
