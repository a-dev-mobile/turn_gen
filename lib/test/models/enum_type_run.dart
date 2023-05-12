// turngen
enum EnumTest implements Comparable<EnumTest> {
  enum_('enum'),
  data('data'),
  assets('assets'),
  build('build'),
  union('union'),
  run('run'),
  none('none');

  const EnumTest(this.value);

  final String value;

  // end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumTest fromValue(
    String? value, {
    EnumTest? fallback,
  }) {
    switch (value) {
      case 'enum':
        return enum_;
      case 'data':
        return data;
      case 'assets':
        return assets;
      case 'build':
        return build;
      case 'union':
        return union;
      case 'run':
        return run;
      case 'none':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumTest',
            ));
    }
  }

  T map<T>({
    required T Function() enum_,
    required T Function() data,
    required T Function() assets,
    required T Function() build,
    required T Function() union,
    required T Function() run,
    required T Function() none,
  }) {
    switch (this) {
      case EnumTest.enum_:
        return enum_();
      case EnumTest.data:
        return data();
      case EnumTest.assets:
        return assets();
      case EnumTest.build:
        return build();
      case EnumTest.union:
        return union();
      case EnumTest.run:
        return run();
      case EnumTest.none:
        return none();
    }
  }

  T mapValue<T>({
    required T enum_,
    required T data,
    required T assets,
    required T build,
    required T union,
    required T run,
    required T none,
  }) {
    switch (this) {
      case EnumTest.enum_:
        return enum_;
      case EnumTest.data:
        return data;
      case EnumTest.assets:
        return assets;
      case EnumTest.build:
        return build;
      case EnumTest.union:
        return union;
      case EnumTest.run:
        return run;
      case EnumTest.none:
        return none;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? enum_,
    T Function()? data,
    T Function()? assets,
    T Function()? build,
    T Function()? union,
    T Function()? run,
    T Function()? none,
  }) =>
      map<T>(
        enum_: enum_ ?? orElse,
        data: data ?? orElse,
        assets: assets ?? orElse,
        build: build ?? orElse,
        union: union ?? orElse,
        run: run ?? orElse,
        none: none ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? enum_,
    T? data,
    T? assets,
    T? build,
    T? union,
    T? run,
    T? none,
  }) =>
      mapValue<T>(
        enum_: enum_ ?? orElse,
        data: data ?? orElse,
        assets: assets ?? orElse,
        build: build ?? orElse,
        union: union ?? orElse,
        run: run ?? orElse,
        none: none ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? enum_,
    T Function()? data,
    T Function()? assets,
    T Function()? build,
    T Function()? union,
    T Function()? run,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        enum_: enum_,
        data: data,
        assets: assets,
        build: build,
        union: union,
        run: run,
        none: none,
      );

  T? maybeMapOrNullValue<T>({
    T? enum_,
    T? data,
    T? assets,
    T? build,
    T? union,
    T? run,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        enum_: enum_,
        data: data,
        assets: assets,
        build: build,
        union: union,
        run: run,
        none: none,
      );

  static List<String> getValues() =>
      EnumTest.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumTest other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumTest.$name($value)';
}

extension EnumTestX on EnumTest {
  bool get enum_ => this == EnumTest.enum_;
  bool get data => this == EnumTest.data;
  bool get assets => this == EnumTest.assets;
  bool get build => this == EnumTest.build;
  bool get union => this == EnumTest.union;
  bool get run => this == EnumTest.run;
  bool get none => this == EnumTest.none;
}
