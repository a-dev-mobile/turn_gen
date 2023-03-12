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
// end

//          --TURN_GEN--
//             v0.4.0
//  *************************************
//           GENERATED CODE
//  *************************************

  /// Creates a new instance of [EnumKeySetting] from a given String value.
  ///
  /// If the given value matches one of the values defined in the [EnumKeySetting] enumeration,
  /// a corresponding instance of [EnumKeySetting] is returned.
  /// If the given value is null or does not match any of the enumeration values and a fallback
  /// value is not provided, an [ArgumentError] is thrown.
  ///
  /// The `fallback` parameter is an optional [EnumKeySetting] value that will be returned if the
  /// given value does not match any of the enumeration values.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.fromValue('en', fallback: LocaleEnum.ru);
  /// print(locale); // Output: LocaleEnum.en(en)
  /// ```
  static EnumKeySetting fromValue(String? value, {EnumKeySetting? fallback}) {
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

  /// Calls the appropriate function based on the value of this [EnumKeySetting] instance.
  ///
  /// This method returns the result of calling the appropriate function for the value of the current [EnumKeySetting] instance.
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

  /// Calls the appropriate function based on the value of this [EnumKeySetting] instance.
  ///
  /// This method returns the appropriate value for the value of the current [EnumKeySetting] instance.
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

  /// Calls the appropriate function based on the value of this [EnumKeySetting] instance.
  ///
  /// If the corresponding function for the value of this [EnumKeySetting] instance is not provided,
  /// the `orElse` function will be called instead.
  /// This method returns the value returned by the appropriate function for the value of this [EnumKeySetting] instance.
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

  /// Maps the value of this [EnumKeySetting] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [EnumKeySetting] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [EnumKeySetting], the
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

  /// Maps the value of this [EnumKeySetting] to a new value of type [T], using the given
  /// functions to replace each possible value of the enumeration.
  ///
  /// The function that corresponds to the value of this
  /// [EnumKeySetting] is called and its result is returned from this method.
  ///
  /// If no corresponding function is provided for the value of this [EnumKeySetting], `null`
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

  /// Maps the value of this [EnumKeySetting] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [EnumKeySetting] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [EnumKeySetting], `null`
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
      EnumKeySetting.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumKeySetting other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumKeySetting.$name($value)';
}
