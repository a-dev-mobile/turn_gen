// turngen
enum EnumTypeRun with Comparable<EnumTypeRun> {
  enum_('enum'),
  data('data'),
  assets('assets'),
  build('build'),
  union('union'),
  run('run'),
  none('none');

  const EnumTypeRun(this.value);

  final String value;

  // end

//          --TURN_GEN--
//          v0.8.4 (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumTypeRun fromValue(String? value, {EnumTypeRun? fallback}) {
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
              'Value not found in EnumTypeRun',
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
      case EnumTypeRun.enum_:
        return enum_();
      case EnumTypeRun.data:
        return data();
      case EnumTypeRun.assets:
        return assets();
      case EnumTypeRun.build:
        return build();
      case EnumTypeRun.union:
        return union();
      case EnumTypeRun.run:
        return run();
      case EnumTypeRun.none:
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
      case EnumTypeRun.enum_:
        return enum_;
      case EnumTypeRun.data:
        return data;
      case EnumTypeRun.assets:
        return assets;
      case EnumTypeRun.build:
        return build;
      case EnumTypeRun.union:
        return union;
      case EnumTypeRun.run:
        return run;
      case EnumTypeRun.none:
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
      EnumTypeRun.values.map((e) => e.value).toList();

  @override
  int compareTo(EnumTypeRun other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumTypeRun.$name($value)';
}
