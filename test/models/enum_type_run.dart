// turngen
enum TestRun implements Comparable<TestRun> {
  enum_('enum'),
  data('data'),
  assets('assets'),
  build('build'),
  union('union'),
  run('run'),
  none('none');

  const TestRun(this.value);

  final String value;

  // end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static TestRun fromValue(
    String? value, {
    TestRun? fallback,
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
              'Value not found in TestRun',
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
      case TestRun.enum_:
        return enum_();
      case TestRun.data:
        return data();
      case TestRun.assets:
        return assets();
      case TestRun.build:
        return build();
      case TestRun.union:
        return union();
      case TestRun.run:
        return run();
      case TestRun.none:
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
      case TestRun.enum_:
        return enum_;
      case TestRun.data:
        return data;
      case TestRun.assets:
        return assets;
      case TestRun.build:
        return build;
      case TestRun.union:
        return union;
      case TestRun.run:
        return run;
      case TestRun.none:
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
      TestRun.values.map((e) => e.value).toList();

  @override
  int compareTo(TestRun other) => index.compareTo(other.index);
}

extension $TestRun on TestRun {
  bool get enum_ => this == TestRun.enum_;
  bool get data => this == TestRun.data;
  bool get assets => this == TestRun.assets;
  bool get build => this == TestRun.build;
  bool get union => this == TestRun.union;
  bool get run => this == TestRun.run;
  bool get none => this == TestRun.none;
}
