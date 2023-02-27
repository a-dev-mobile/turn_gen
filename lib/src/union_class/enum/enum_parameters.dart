// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
/*
    enum EnumParameter {
  default_,
  defaultWithOptional,
  defaultWithRequired,
  optional,
  required,
  none
}
  
  */

//          --TURN_GEN--
//  *************************************
//           GENERATED CODE
//  *************************************

enum EnumParameter with Comparable<EnumParameter> {
  default_('default_'),
  defaultWithOptional('defaultWithOptional'),
  defaultWithRequired('defaultWithRequired'),
  optional('optional'),
  required('required'),
  none('none');

  const EnumParameter(this.value);

  final String value;

  static EnumParameter fromValue(
    String? value, {
    EnumParameter? fallback,
  }) {
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
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

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

  T mapConst<T>({
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

  @override
  int compareTo(EnumParameter other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
