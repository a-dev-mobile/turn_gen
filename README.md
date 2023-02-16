# TurnGen

TurnGen is a set of scripts, combined into a command line tool, all scripts are written in dart language and designed for dart(flutter) developers, this tool simplifies some tasks for us, such as:
1 Working with Enum classes
2 Creating different methods in the Data class without using build_runner
3 Generating links of all files from the assets folder

## How to use

## Install

To use TurnGen, you only need TurnGen by adding it to the `pubspec.yaml` file as a `dev_dependencies`:
For a Flutter project:

```shell
flutter pub add --dev turn_gen
```

For a Dart project:

```shell
dart pub add --dev turn_gen
```
If you are going to use the file reference generator from the asset folder, don't forget to add the output file path to `pubspec.yami`:

```yaml
turn_gen:
  assets_output: "lib/gen/" 
```

Then run `flutter pub get` or `dart pub get` to install the package.


### Enum

![enum_type](https://github.com/a-dev-mobile/turn_gen/blob/master/resources/enum_type.png)

The figure above shows 3 options for using enum classes.
And for each variant you run your own script, to determine the type of class enum you need to add to the argument `-t` the value of the script name and to the argument `-f` the path to the file

```shell
# 1
dart run turn_gen -t enum_int -f <path to your file>
# 2
dart run turn_gen -t enum_string -f <path to your file>
# 3
dart run turn_gen -t enum_default -f <path to your file>

```

If you are using `VSCode`, you can add the task to your `tasks.json`

```json
        // GEN enum_default
    {
      "label": "GEN enum_default",
      "type": "dart",
      "command": "dart",
      "args": ["run", "turn_gen", "-t", "enum_default", "-f", "${file}"],
    },
        // GEN enum_int
    {
      "label": "GEN enum_int",
      "type": "dart",
      "command": "dart",
      "args": ["run", "turn_gen", "-t", "enum_int", "-f", "${file}"],
    },
        // GEN enum_string    
    {
      "label": "GEN enum_string",
      "type": "dart",
      "command": "dart",
      "args": ["run", "turn_gen", "-t", "enum_string", "-f", "${file}"],
    },
```

After running the script, you will get additional methods and override the standard ones:

- `fromValue`
- `map`
- `maybeMap`
- `compareTo`
- `toString`
  
```dart
// ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
/*
  enum Locale {
  en('en_US'),
  ru('ru_RU'),
}*/

//          --TURN_GEN--
//  *************************************
//           GENERATED CODE
//  *************************************

enum Locale with Comparable<Locale> {
  en('en_US'),
  ru('ru_RU');

  const Locale(this.value);

  final String value;

  static Locale fromValue(
    String? value, {
    Locale? fallback,
  }) {
    switch (value) {
      case 'en_US':
        return en;
      case 'ru_RU':
        return ru;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  T map<T>({
    required T Function() en,
    required T Function() ru,
  }) {
    switch (this) {
      case Locale.en:
        return en();
      case Locale.ru:
        return ru();
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? en,
    T Function()? ru,
  }) =>
      map<T>(
        en: en ?? orElse,
        ru: ru ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? en,
    T Function()? ru,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        en: en,
        ru: ru,
      );

  @override
  int compareTo(Locale other) => index.compareTo(other.index);

  @override
  String toString() => value;
}



```

### Assets

TurnGen also allows you to generate string constants of all files in the assets folder, with the ability to use different characters and letters in the file name.

You need to add the path to the constant file:

```yaml
turn_gen:
  assets_output: "lib/gen/" 
```

We use the command to start it:

```shell
dart run turn_gen -t assets -f <path to your workspace folder>
```

If you are using `VSCode`, you can add the task to your `tasks.json`

```json
       // GEN assets   
    {
      "label": "GEN assets",
      "type": "dart",
      "command": "dart",
      "args": ["run", "turn_gen", "-t", "assets", "-f", "${workspaceFolder}"]
    },
```

After running the script, you will get all the paths to the files in one class:

```dart
//          --TURN_GEN--
//  *************************************
//           GENERATED CODE
//  *************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

class AppAssetsENV {
  /// * Size: 24.0 B
  /// * File path: _assets/.env
  ///     * Accessed: 2023-02-12
  ///     * Changed:  2023-02-12
  ///     * Modified: 2022-05-20
  static const String env = 'assets/.env';

  /// List of all assets
  static const List<String> values = [env];
}

class AppAssetsPNG {
  /// * Size: 1.3 MB
  /// * File path: _assets/app_icon/android_dev.png
  ///     * Accessed: 2023-02-12
  ///     * Changed:  2023-02-12
  ///     * Modified: 2022-05-20
  static const String androidDev = 'assets/app_icon/android_dev.png';

  /// * Size: 815.1 KB
  /// * File path: _assets/app_icon/android_prod.png
  ///     * Accessed: 2023-02-12
  ///     * Changed:  2023-02-12
  ///     * Modified: 2022-05-20
  static const String androidProd = 'assets/app_icon/android_prod.png';

  /// * Size: 1.4 MB
  /// * File path: _assets/app_icon/ios_dev.png
  ///     * Accessed: 2023-02-12
  ///     * Changed:  2023-02-12
  ///     * Modified: 2022-05-20
  static const String iosDev = 'assets/app_icon/ios_dev.png';

  /// * Size: 847.5 KB
  /// * File path: _assets/app_icon/ios_prod.png
  ///     * Accessed: 2023-02-12
  ///     * Changed:  2023-02-12
  ///     * Modified: 2022-05-20
  static const String iosProd = 'assets/app_icon/ios_prod.png';

  /// List of all assets
  static const List<String> values = [
    androidDev,
    androidProd,
    iosDev,
    iosProd,
  ];
}

```

### Data class

in the works...

## Help

If you encounter any issues [please report them here](https://github.com/a-dev-mobile/turn_gen/issues).

### License

```
Copyright 2023 TURN_GEN

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
