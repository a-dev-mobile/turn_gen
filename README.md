# TurnGen

TurnGen is a set of scripts combined into a command line tool, all scripts are written in dart language and executed instantly, they are designed to minimize boilerplate code and simplify different tasks, such as

- Working with Enum classes
- Creating different methods in the Data class without using build_runner
- Generating links to all files in the assets folder

## Install

To use TurnGen, simply add TurnGen to the `pubspec.yaml` file as `dev_dependencies`:

For a Flutter project:

```shell
flutter pub add --dev turn_gen
```

For a Dart project:

```shell
dart pub add --dev turn_gen
```

If you are going to use the link generator for files in the asset folder, don't forget to add the output file path to `pubspec.yami`:

```yaml
turn_gen:
  assets_output: "lib/gen/" 
```

Then run `flutter pub get` or `dart pub get` to install the package.

## Use

### Enum

![enum_type](https://github.com/a-dev-mobile/turn_gen/blob/master/resources/enum_type.png)

The figure above shows 3 ways to use enumeration classes.
And for each variant you run a different script, to define the enum variant, you need to add to the argument `-t` the value of the script name and to the argument `-f` the path to the file

```shell
# 1
dart run turn_gen -t enum_int -f <path to your file>
# 2
dart run turn_gen -t enum_string -f <path to your file>
# 3
dart run turn_gen -t enum_default -f <path to your file>

```

If you use `VSCode`, you can add the task to your `tasks.json`

```json
    {
      "label": "GEN enum_default",
      "type": "dart",
      "command": "dart",
      "args": ["run", "turn_gen", "-t", "enum_default", "-f", "${file}"],
    },
    {
      "label": "GEN enum_int",
      "type": "dart",
      "command": "dart",
      "args": ["run", "turn_gen", "-t", "enum_int", "-f", "${file}"],
    },
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

#### Example
  
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

TurnGen also allows you to generate string constants of all files in the assets folder, with the ability to use different characters and letters in the file name, and, if identical file names are found, to add to the constant name a number

You need to add the path where to generate the file:

```yaml
turn_gen:
  assets_output: "lib/gen/" 
```

And to start, we use the command:

```shell
dart run turn_gen -t assets -f <path to your workspace folder>
```

If you are using `VSCode`, you can add the task to your `tasks.json`.

```json
    {
      "label": "GEN assets",
      "type": "dart",
      "command": "dart",
      "args": ["run", "turn_gen", "-t", "assets", "-f", "${workspaceFolder}"]
    },
```

After running the script, you will get all the file paths in one class:

#### Example

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
  /// * Size: 815.1 KB
  /// * File path: _assets/app_icon/android_prod.png
  ///     * Accessed: 2023-02-12
  ///     * Changed:  2023-02-12
  ///     * Modified: 2022-05-20
  static const String androidProd = 'assets/app_icon/android_prod.png';

  /// * Size: 847.5 KB
  /// * File path: _assets/app_icon/ios_prod.png
  ///     * Accessed: 2023-02-12
  ///     * Changed:  2023-02-12
  ///     * Modified: 2022-05-20
  static const String iosProd = 'assets/app_icon/ios_prod.png';

  /// List of all assets
  static const List<String> values = [
    androidProd,
    iosProd,
  ];
}

```

### Data class

TurnGen scripts can generate and override additional methods to `dart` classes, such as

- `toMap`/`fromJson` and `fromMap`/`fromJson` for Map/Json serialization and deserialization
- `copyWith` - to clone an object with different properties
- `operator ==` and override `hashCode` (since TurnGet only works with immutable classes)
- `toString` -  to display a list of all object properties

Most importantly, we use the standard `dart` class simply by adding comments to the body for customization, the obligatory comments are shown below:

```dart
@immutable
class RegistrationState {
  /* */  
  final bool isLoad;
  /* */
  final String? name;
  /* */
  final List<int> activitySelected;
// end
}
```

Now let's describe the basic conditions for using TurnGen:

- All fields of the class must be - `final`
- There should be a comment above each field - `/* */`
- After declaring all the fields, put a comment at the end - `// end`

And that's it!

#### Additional class settings

You can add an additional setting at the beginning of the class, also using comments, for example:

- There will only be a copyWith method.

```dart
/* only: copyWith  */
class RegistrationState {
...
```

- Remove a certain method or several

```dart
/* no: fromMap toMap  */
class RegistrationState {
...
```

- Use the `equatable` library

```dart
/* use: equatable  */
class RegistrationState {
...
```

In the examples above, you can combine different options from other methods or libraries (in the future)

#### Additional variable settings

The field also has settings, we just write our keywords in the comments above the class, for example:

- Initialize a variable

```dart
  /* init: true */
  final bool isLoad;
  /* init: 'Jon' */
  final String name;
```

- Specify explicitly the type, initialize the variable

```dart
/*
type: enum
init: FormzSubmissionStatus.initial
*/
  final FormzSubmissionStatus status;
/*
type: data
init: const DateRegModel()
*/
  final DateRegModel dateRegModel;
```

- Override `toMap` or `fromMap` methods if TurnGen does not define a variable type

```dart
/*
init: const DateRegModel()
fromMap: DateRegModel.fromMap(map['dateRegModel'] as Map<String, dynamic>)
toMap: dateRegModel.toMap()
*/
  final DateRegModel dateRegModel;
```

#### Use

And to start, we use the command:

```shell
dart run turn_gen -t data -f <path to your file>
```

If you use `VSCode`, you can add the task to your `tasks.json`.

```json
    {
      "label": "GEN data class",
      "type": "dart",
      "command": "dart",
      "args": ["run", "turn_gen", "-t", "data", "-f", "${file}"]
    },
```

After executing the script you get a typical `dart` class with new and overridden methods :

#### Example

```dart
@immutable
class RegistrationState {
  /* */
  final bool isLoad;
  /* */
  final String? name;
  /* */
  final List<int> activitySelected;
// end
//          --TURN_GEN--
//  *************************************
//           GENERATED CODE
//  *************************************
  const RegistrationState({
    required this.isLoad,
    required this.activitySelected,
    this.name,
  });
  /*
   factory RegistrationState.init() => RegistrationState(
        isLoad: false,
        activitySelected: const [],
      );
  */
Map<String, dynamic> toMap() {
  return <String, dynamic>{
      'isLoad': isLoad,
      'activitySelected': activitySelected,
      'name': name,
    };
  }
    factory RegistrationState.fromMap(Map<String, dynamic> map) {
    return RegistrationState(
      isLoad: map['isLoad'] as bool,
      activitySelected: (map['activitySelected'] as List<dynamic>).map((e) => e as int).toList(),
      name: map['name'] as String?,
    );
  }
  RegistrationState copyWith({
    bool? isLoad,
    List<int>? activitySelected,
    String? name,
  }) {
    return RegistrationState(
      isLoad: isLoad ?? this.isLoad,
      activitySelected: activitySelected ?? this.activitySelected,
      name: name ?? this.name,
    );
  }
  String toJson() => json.encode(toMap());  
  factory RegistrationState.fromJson(String source) => RegistrationState.fromMap(json.decode(source) as Map<String, dynamic>,);  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationState &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad)&&
            const DeepCollectionEquality().equals(other.activitySelected, activitySelected,)&&
            (identical(other.name, name) || other.name == name));
  }
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoad,
        const DeepCollectionEquality().hash(activitySelected,),
        name,
]);
      @override
  String toString() {
    return 'RegistrationState(isLoad: $isLoad, activitySelected: $activitySelected, name: $name, )';
    }
}
```

## Help

If you encounter any issues [please report them here](https://github.com/a-dev-mobile/turn_gen/issues).

### License

Copyright 2023 TurnGen

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
