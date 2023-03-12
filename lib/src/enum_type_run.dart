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

  // end

//          --TURN_GEN--
//             v0.4.0
//  *************************************
//           GENERATED CODE
//  *************************************

  /// Creates a new instance of [TypeRun] from a given String value.
  ///
  /// If the given value matches one of the values defined in the [TypeRun] enumeration,
  /// a corresponding instance of [TypeRun] is returned.
  /// If the given value is null or does not match any of the enumeration values and a fallback
  /// value is not provided, an [ArgumentError] is thrown.
  ///
  /// The `fallback` parameter is an optional [TypeRun] value that will be returned if the
  /// given value does not match any of the enumeration values.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.fromValue('en', fallback: LocaleEnum.ru);
  /// print(locale); // Output: LocaleEnum.en(en)
  /// ```
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
      case 'union':
        return union;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in TypeRun',
            ));
    }
  }

  /// Calls the appropriate function based on the value of this [TypeRun] instance.
  ///
  /// This method returns the result of calling the appropriate function for the value of the current [TypeRun] instance.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum ru = LocaleEnum.ru;
  /// String result = ru.map(
  ///   ru: () => 'Привет!',
  ///   en: () => 'Hello!',
  /// );
  /// print(result); // Output: 'Привет!'
  /// ```
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

  /// Calls the appropriate function based on the value of this [TypeRun] instance.
  ///
  /// This method returns the appropriate value for the value of the current [TypeRun] instance.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum en = LocaleEnum.en;
  /// String result = en.mapValue(
  ///   ru: 'Привет!',
  ///   en: 'Hello!',
  /// );
  /// print(result); // Output: 'Hello!'
  /// ```
  T mapValue<T>({
    required T enum_,
    required T enumDefault,
    required T enumInt,
    required T enumString,
    required T data,
    required T assets,
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
      case TypeRun.union:
        return union;
      case TypeRun.none:
        return none;
    }
  }

  /// Calls the appropriate function based on the value of this [TypeRun] instance.
  ///
  /// If the corresponding function for the value of this [TypeRun] instance is not provided,
  /// the `orElse` function will be called instead.
  /// This method returns the value returned by the appropriate function for the value of this [TypeRun] instance.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum ru = LocaleEnum.ru;
  /// String result = ru.maybeMap<String>(
  ///   orElse: () => 'Unknown',
  ///   ru: () => 'Привет!',
  /// );
  /// print(result); // Output: 'Привет!'
  /// ```
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

  /// Maps the value of this [TypeRun] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [TypeRun] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [TypeRun], the
  /// `orElse` parameter is returned from this method.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.en;
  /// String message = locale.maybeMapValue<String>(
  ///   orElse: 'Unknown locale',
  ///   ru: 'Привет!',
  ///   en: 'Hello!',
  /// );
  /// print(message); // Output: 'Hello!'
  /// ```
  T maybeMapValue<T>({
    required T orElse,
    T? enum_,
    T? enumDefault,
    T? enumInt,
    T? enumString,
    T? data,
    T? assets,
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
        union: union ?? orElse,
        none: none ?? orElse,
      );

  /// Maps the value of this [TypeRun] to a new value of type [T], using the given
  /// functions to replace each possible value of the enumeration.
  ///
  /// The function that corresponds to the value of this
  /// [TypeRun] is called and its result is returned from this method.
  ///
  /// If no corresponding function is provided for the value of this [TypeRun], `null`
  /// is returned from this method.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.en;
  /// String? message = locale.maybeMapOrNull<String>(
  ///   en: () => 'Hello!',
  /// );
  /// print(message); // Output: 'Hello!'
  /// ```
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

  /// Maps the value of this [TypeRun] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [TypeRun] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [TypeRun], `null`
  /// is returned from this method.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.en;
  /// String? message = locale.maybeMapOrNullValue<String>(
  ///   en: 'Hello!',
  /// );
  /// print(message); // Output: 'Hello!'
  /// ```
  T? maybeMapOrNullValue<T>({
    T? enum_,
    T? enumDefault,
    T? enumInt,
    T? enumString,
    T? data,
    T? assets,
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
        union: union,
        none: none,
      );

  /// Returns a list of all possible values of this enumeration.
  ///
  /// The values are returned as a list of strings, representing the value of each
  /// enumeration value in the same order as they were declared in the enumeration.
  ///
  /// Example usage:
  /// ```dart
  /// List<String> values = LocaleEnum.getValues();
  /// print(values); // Output: ['ru', 'en']
  /// ```
  static List<String> getValues() =>
      TypeRun.values.map((e) => e.value).toList();

  @override
  int compareTo(TypeRun other) => index.compareTo(other.index);

  @override
  String toString() => 'TypeRun.$name($value)';
}
