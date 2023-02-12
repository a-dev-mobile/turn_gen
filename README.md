# TurnGen

A command line tool that simplifies the task of generating advanced dart language features. Fully flexible, allowing you to choose (argument -t and value >>> enum_default, enum_string, enum_int, data, assets) and the path to the file or directory, where to add new features.

## Setup

The setup of TURN_GEN is really easy. Just add the following to your `pubspec.yaml`:

```yaml
#  In the future, I will move it to pub dev

dev_dependencies:
  turn_gen:
    git:
      url: https://github.com/a-dev-mobile/turn_gen.git
      ref: master 
```

If you will use GEN assets, don't forget to add the path where to generate the file to pubspec:

```yaml
dev_dependencies:
  turn_gen:
...
turn_gen:
  assets_output: "lib/gen/" 
```

Then run `flutter pub get` or `dart pub get` to install the package.

## How to use

### Enum

![enum_type](https://github.com/a-dev-mobile/turn_gen/blob/master/resources/enum_type.png)

```shell
# 1
dart run turn_gen -t enum_int -f <path to your file>
# 2
dart run turn_gen -t enum_string -f <path to your file>
# 3
dart run turn_gen -t enum_default -f <path to your file>

```

You can then add a launch config to your `launch.json` to generate...

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
  
![enum_example](https://github.com/a-dev-mobile/turn_gen/blob/master/resources/enum_example.png)

### Assets

TurnGen также позволяет генерировать строковые константы всех файлов в папке assets, c возможностью использования различных символов и букв в названии файла.

Необходимо добавить путь к файлу констант:

```yaml
dev_dependencies:
  turn_gen:
...
turn_gen:
  assets_output: "lib/gen/" 
```

Для запуска используем команду:

```shell
# 1
dart run turn_gen -t assets -f <path to your workspace folder>
```

You can then add a launch config to your `launch.json` to generate...

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
