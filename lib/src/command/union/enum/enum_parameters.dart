enum EnumParameter implements Comparable<EnumParameter> {
  default_('default_'),
  defaultWithOptional('defaultWithOptional'),
  defaultWithRequired('defaultWithRequired'),
  optional('optional'),
  required('required'),
  none('none');

  const EnumParameter(this.value);
  final String value;

// end

//          --TURN_GEN--
//             v0.4.0
//  *************************************
//           GENERATED CODE
//  *************************************

  /// Creates a new instance of [EnumParameter] from a given String value.
  ///
  /// If the given value matches one of the values defined in the [EnumParameter] enumeration,
  /// a corresponding instance of [EnumParameter] is returned.
  /// If the given value is null or does not match any of the enumeration values and a fallback
  /// value is not provided, an [ArgumentError] is thrown.
  ///
  /// The `fallback` parameter is an optional [EnumParameter] value that will be returned if the
  /// given value does not match any of the enumeration values.
  ///
  /// Example usage:
  /// ```dart
  /// LocaleEnum locale = LocaleEnum.fromValue('en', fallback: LocaleEnum.ru);
  /// print(locale); // Output: LocaleEnum.en(en)
  /// ```
  static EnumParameter fromValue(String? value, {EnumParameter? fallback}) {
    switch (value) {
      case 'default_':
        return default_;
      case 'defaultWithOptional':
        return defaultWithOptional;
      case 'defaultWithRequired':
        return defaultWithRequired;
      case 'optional':
        return optional;
      case 'required':
        return required;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumParameter',
            ));
    }
  }

  /// Calls the appropriate function based on the value of this [EnumParameter] instance.
  ///
  /// This method returns the result of calling the appropriate function for the value of the current [EnumParameter] instance.
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
    required T Function() default_,
    required T Function() defaultWithOptional,
    required T Function() defaultWithRequired,
    required T Function() optional,
    required T Function() required,
    required T Function() none,
  }) {
    switch (this) {
      case EnumParameter.default_:
        return default_();
      case EnumParameter.defaultWithOptional:
        return defaultWithOptional();
      case EnumParameter.defaultWithRequired:
        return defaultWithRequired();
      case EnumParameter.optional:
        return optional();
      case EnumParameter.required:
        return required();
      case EnumParameter.none:
        return none();
    }
  }

  /// Calls the appropriate function based on the value of this [EnumParameter] instance.
  ///
  /// This method returns the appropriate value for the value of the current [EnumParameter] instance.
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
    required T default_,
    required T defaultWithOptional,
    required T defaultWithRequired,
    required T optional,
    required T required,
    required T none,
  }) {
    switch (this) {
      case EnumParameter.default_:
        return default_;
      case EnumParameter.defaultWithOptional:
        return defaultWithOptional;
      case EnumParameter.defaultWithRequired:
        return defaultWithRequired;
      case EnumParameter.optional:
        return optional;
      case EnumParameter.required:
        return required;
      case EnumParameter.none:
        return none;
    }
  }

  /// Calls the appropriate function based on the value of this [EnumParameter] instance.
  ///
  /// If the corresponding function for the value of this [EnumParameter] instance is not provided,
  /// the `orElse` function will be called instead.
  /// This method returns the value returned by the appropriate function for the value of this [EnumParameter] instance.
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
    T Function()? default_,
    T Function()? defaultWithOptional,
    T Function()? defaultWithRequired,
    T Function()? optional,
    T Function()? required,
    T Function()? none,
  }) =>
      map<T>(
        default_: default_ ?? orElse,
        defaultWithOptional: defaultWithOptional ?? orElse,
        defaultWithRequired: defaultWithRequired ?? orElse,
        optional: optional ?? orElse,
        required: required ?? orElse,
        none: none ?? orElse,
      );

  /// Maps the value of this [EnumParameter] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [EnumParameter] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [EnumParameter], the
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
    T? default_,
    T? defaultWithOptional,
    T? defaultWithRequired,
    T? optional,
    T? required,
    T? none,
  }) =>
      mapValue<T>(
        default_: default_ ?? orElse,
        defaultWithOptional: defaultWithOptional ?? orElse,
        defaultWithRequired: defaultWithRequired ?? orElse,
        optional: optional ?? orElse,
        required: required ?? orElse,
        none: none ?? orElse,
      );

  /// Maps the value of this [EnumParameter] to a new value of type [T], using the given
  /// functions to replace each possible value of the enumeration.
  ///
  /// The function that corresponds to the value of this
  /// [EnumParameter] is called and its result is returned from this method.
  ///
  /// If no corresponding function is provided for the value of this [EnumParameter], `null`
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
    T Function()? default_,
    T Function()? defaultWithOptional,
    T Function()? defaultWithRequired,
    T Function()? optional,
    T Function()? required,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        default_: default_,
        defaultWithOptional: defaultWithOptional,
        defaultWithRequired: defaultWithRequired,
        optional: optional,
        required: required,
        none: none,
      );

  /// Maps the value of this [EnumParameter] to a new value of type [T], using the given
  /// values to replace each possible value of the enumeration.
  ///
  /// The value that corresponds to the value of this [EnumParameter] is returned from this method.
  ///
  /// If no corresponding value is provided for the value of this [EnumParameter], `null`
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
    T? default_,
    T? defaultWithOptional,
    T? defaultWithRequired,
    T? optional,
    T? required,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        default_: default_,
        defaultWithOptional: defaultWithOptional,
        defaultWithRequired: defaultWithRequired,
        optional: optional,
        required: required,
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
      EnumParameter.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumParameter other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumParameter.$name($value)';
}
