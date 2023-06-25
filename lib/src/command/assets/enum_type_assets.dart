enum TypeNameFile implements Comparable<TypeNameFile> {
  notNormal('notNormal'),
  normal('normal'),
  onlyExtension('onlyExtension'),
  onlyName('onlyName'),
  identical('identical'),
  init('init');

  const TypeNameFile(this.value);
  final String value;

// end

//          --TURN_GEN--
//             v0.4.7
//  *************************************
//           GENERATED CODE
//  *************************************

  static TypeNameFile fromValue(String? value, {TypeNameFile? fallback}) {
    switch (value) {
      case 'notNormal':
        return notNormal;
      case 'normal':
        return normal;
      case 'onlyExtension':
        return onlyExtension;
      case 'onlyName':
        return onlyName;
      case 'identical':
        return identical;
      case 'init':
        return init;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in TypeNameFile',
            ));
    }
  }

  T map<T>({
    required T Function() notNormal,
    required T Function() normal,
    required T Function() onlyExtension,
    required T Function() onlyName,
    required T Function() identical,
    required T Function() init,
  }) {
    switch (this) {
      case TypeNameFile.notNormal:
        return notNormal();
      case TypeNameFile.normal:
        return normal();
      case TypeNameFile.onlyExtension:
        return onlyExtension();
      case TypeNameFile.onlyName:
        return onlyName();
      case TypeNameFile.identical:
        return identical();
      case TypeNameFile.init:
        return init();
    }
  }

  T mapValue<T>({
    required T notNormal,
    required T normal,
    required T onlyExtension,
    required T onlyName,
    required T identical,
    required T init,
  }) {
    switch (this) {
      case TypeNameFile.notNormal:
        return notNormal;
      case TypeNameFile.normal:
        return normal;
      case TypeNameFile.onlyExtension:
        return onlyExtension;
      case TypeNameFile.onlyName:
        return onlyName;
      case TypeNameFile.identical:
        return identical;
      case TypeNameFile.init:
        return init;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? notNormal,
    T Function()? normal,
    T Function()? onlyExtension,
    T Function()? onlyName,
    T Function()? identical,
    T Function()? init,
  }) =>
      map<T>(
        notNormal: notNormal ?? orElse,
        normal: normal ?? orElse,
        onlyExtension: onlyExtension ?? orElse,
        onlyName: onlyName ?? orElse,
        identical: identical ?? orElse,
        init: init ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? notNormal,
    T? normal,
    T? onlyExtension,
    T? onlyName,
    T? identical,
    T? init,
  }) =>
      mapValue<T>(
        notNormal: notNormal ?? orElse,
        normal: normal ?? orElse,
        onlyExtension: onlyExtension ?? orElse,
        onlyName: onlyName ?? orElse,
        identical: identical ?? orElse,
        init: init ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? notNormal,
    T Function()? normal,
    T Function()? onlyExtension,
    T Function()? onlyName,
    T Function()? identical,
    T Function()? init,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        notNormal: notNormal,
        normal: normal,
        onlyExtension: onlyExtension,
        onlyName: onlyName,
        identical: identical,
        init: init,
      );

  T? maybeMapOrNullValue<T>({
    T? notNormal,
    T? normal,
    T? onlyExtension,
    T? onlyName,
    T? identical,
    T? init,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        notNormal: notNormal,
        normal: normal,
        onlyExtension: onlyExtension,
        onlyName: onlyName,
        identical: identical,
        init: init,
      );

  static List<String> getValues() =>
      TypeNameFile.values.map((e) => e.value).toList();

  @override
  int compareTo(TypeNameFile other) => index.compareTo(other.index);

  @override
  String toString() => 'TypeNameFile.$name($value)';
}
