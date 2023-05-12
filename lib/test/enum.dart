// turnGen
enum EnumApi implements Comparable<EnumApi> {
  prod('https://api.nadodeneg.ru/'),
  stage1('https://api1.nadodeneg.ru/');

  const EnumApi(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumApi fromValue(
    String? value, {
    EnumApi? fallback,
  }) {
    switch (value) {
      case 'https://api.nadodeneg.ru/':
        return prod;
      case 'https://api1.nadodeneg.ru/':
        return stage1;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumApi',
            ));
    }
  }

  T map<T>({
    required T Function() prod,
    required T Function() stage1,
  }) {
    switch (this) {
      case EnumApi.prod:
        return prod();
      case EnumApi.stage1:
        return stage1();
    }
  }

  T mapValue<T>({
    required T prod,
    required T stage1,
  }) {
    switch (this) {
      case EnumApi.prod:
        return prod;
      case EnumApi.stage1:
        return stage1;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? prod,
    T Function()? stage1,
  }) =>
      map<T>(
        prod: prod ?? orElse,
        stage1: stage1 ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? prod,
    T? stage1,
  }) =>
      mapValue<T>(
        prod: prod ?? orElse,
        stage1: stage1 ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? prod,
    T Function()? stage1,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        prod: prod,
        stage1: stage1,
      );

  T? maybeMapOrNullValue<T>({
    T? prod,
    T? stage1,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        prod: prod,
        stage1: stage1,
      );

  static List<String> getValues() =>
      EnumApi.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumApi other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumApi.$name($value)';
}
