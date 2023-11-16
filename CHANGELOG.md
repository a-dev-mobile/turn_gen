## [2.1.1] - 16.11.2023

- the `enum` script has been changed, the `from{value}OrNull` method have been added to each type
- updated documentation

## [2.0.1-2.1.0] - 13.11.2023

- the `enum` script has been changed, the `from{value}` and `getList{value}` methods have been added to each type

## [2.0.0] - 09.11.2023

- changed the name of the `extension` to check for type in the `enum` script

```dart
// example
// old
  bool get init => this == EnumValid.init;
  bool get valid => this == EnumValid.valid;
  bool get error => this == EnumValid.error;
// new
  bool get isInit => this == EnumValid.init;
  bool get isValid => this == EnumValid.valid;
  bool get isError => this == EnumValid.error;

```

## [1.1.7] - 05.11.2023

- Improved `union` added support for the `fromJson` method for `Freezed`

## [1.1.6] - 03.11.2023

- Added the ability to add named parameters to the `enum` script

```dart
enum EnumStore implements Comparable<EnumStore> {
  appStore(
    packageId: [
      'com.apple',
      'com.apple.testflight',
      'com.apple.simulator',
    ],
    url: 'https://apps.apple.com/us/app/',
    name: 'AppStore',
    vendor: '(apple)',
  ),
  googlePlay(
    packageId: [
      'com.android.vending',
    ],
    url: 'https://play.google.com/store/apps/details?',
    name: 'GooglePlay',
    vendor: '(google)',
  );

  const EnumStore({
    required this.packageId,
    required this.url,
    required this.name,
    required this.vendor,
  });
  final List<String> packageId;
  final String url;
  final String name;
  final String vendor;

// end
}
```

## [1.1.3-1.1.5] - 02.11.2023

- Improved `union` script due to parsing error with certain characters

## [1.1.2] - 18.09.2023

- added the ability to use `List<String>` in `enum` when using Turngen - example:

```dart
enum EnumStore implements Comparable<EnumStore> {
  appStore([
    'com.apple',
    'com.apple.testflight',
    'com.apple.simulator',
  ]),
  googlePlay([
    'com.android.vending',
  ]),
  packageinstaller([
    'com.miui.packageinstaller',
    'com.google.android.packageinstaller',
  ]),
  other([
    'com.sec.android.app.samsungapps',
    'com.aurora.store',
  ]);

  const EnumStore(this.packageId);
  final List<String> packageId;

// end
}
```

## [1.1.1] - 08.08.2023

- due to an unusual bug, returned to the `dynamic` type in the `==` operator

## [1.1.0] - 01.08.2023

- Improved `==` operator and `hashCode` methods in `Union` script. We switched from using `dynamic` to `Object` for enhanced type safety. Additionally, we now include a check for `runtimeType` to prevent erroneous comparisons between instances of different classes. For `hashCode`, we incorporated `_tag` to create a more unique and accurate hash value, enhancing the equality comparison.

## [1.0.9]

- `fromJson` and `toJson` methods can now work with `Color` type (`import 'dart:ui'`)

## [1.0.7]

- `fromJson` and `toJson` methods can now work with `List<Map<String, String>>` type
- minor `union` script fixes

## [1.0.5]

- added ability to use different data types in `enum` when using `turngen` - example:

```dart

enum EnumScheduleStatus implements Comparable<EnumScheduleStatus> {
  active('status.schedule.active', 'к оплате', Color(0xFFCACACA)),
  done('status.schedule.done', 'к оплате', Color(0xFFCACACA)),
  overdue('status.schedule.overdue', 'просрочен', Color(0xFFBF1212)),
  payed('status.schedule.payed', 'оплачен', Color(0xFF12BF6C)),
  error('error', 'ошибка', Color(0xFFBF1212));

  const EnumScheduleStatus(
    this.value,
    this.valueRu,
    this.color,
  );

  final String value;
  final String valueRu;
  final Color color;

// end
}

```

## [1.0.4]

- the `toString` method is now not overridden by the `enum` script, but is used by default
- added a hint if, when using the `data` script, the variable does not have the word `final`

## [1.0.3]

- fix bug in `enum` script

## [1.0.2]

- fix fromMap method for `Enum` type

## [1.0.1]

- Script `Enum` now allows 2 string parameters. For `Map` methods validation occurs on the first parameter
example:

```Dart
// turngen
  const EnumPaymentStatus(this.value, this.name);
  final String value;
  final String name;

```

## [1.0.0]

- added the ability to disable the `fromMap`, `toMap` methods in the `union` script by adding a comment above the class`/* no: tomap frommap */` similar to `data` script
- updated README.md

## [0.9.8-0.9.9]

- now `fromMap` method for `enum` type can accept both index and name

## [0.9.7]

- fixed work of `union` script without  parameters

## [0.9.6]

- added `fromJson` and `toJson` methods for `union` script
- updated README.md

## [0.9.4]

- fixed minor bugs in `union` script

## [0.9.3]

- added the `tomap` and `fromMap` methods for the `union` script

## [0.9.2]

- added an extension for `enum` scripts that makes it easier to check the value of an enum in a concise and readable way.

## [0.9.1]

- after the release of dart 3 fixed a bug in the Enum script - The class 'Comparable' can't be used as a mixin because it's neither a mixin class nor a mixin.
- added automatic formatting after generation - with the command `dart format`
- added documentation to some open method

## [0.9.0]

- slightly corrected the formatting of the output

## [0.8.9]

- in data and enum script you can now initialize values with different characters
- updated README.md

## [0.8.8]

- removed version number in generated files to make git cleaner
- fixed formatting

## [0.8.6-0.8.7]

- fixed formatting
- added example

## [0.8.3-0.8.5]

- fixed name variable in enum script
- Updated README.md

## [0.8.2]

- added json test
- fixed exit from terminal on mac
- Updated README.md

## [0.8.1]

- removed redundant logs

## [0.8.0]

- added a command to automatically start the desired generator `dart run turn_gen`
- in the `fromValue` method of the `enum` generator a correction was made to handle values of type `double`
- removed `@deprecated` methods from the `enum` generator
- renamed the `show_method_comments` setting to `show_comments` in `pubspec.yaml
- Updated README.md

## [0.7.1]

- fix: name version

## [0.7.0]

- added `build` command that looks through all files with text `--TURN_GEN--` and updates them to the latest version. Full command `dart run turn_gen build`
- Updated README.md

## [0.6.7]

- improved `assets` generator

## [0.6.6]

- improved `assets` generator
- renamed file `AppAssets` to `AssetPaths`

## [0.6.5]

- Now you can not set the path for the generated `assets` file. Default is: `lib/gen/`
- Updated README.md

## [0.6.4]

- fix assets generator
- Updated README.md

## [0.6.3]

- changed the fromMap method for some types

## [0.6.2]

- fix path when generating assets

## [0.6.1]

- updated hints in the console when generating
- added the ability to auto-detect the types `List<enum>` and `List<enum?>`
- Updated README.md

## [0.6.0]

- To simplify the process of generating `assets files`, you no longer need to specify the path when starting the generator. Simply run `dart run turn_gen assets` to initiate the generator.
- Updated README.md

## [0.5.1]

- Updated CHANGELOG.md.

## [0.5.0]

- Improved - Removed additional comments in enum and asset generators. These comments are included when show_method_comments: true.
- Added additional console hints about setting show_method_comments.
- Updated README.md

## [0.4.7]

- I  improved the code by removing the `fromDynamicMap` method, and in the `fromMap` method you changed the variable type to `Map<dynamic, dynamic>` instead of `Map<String, dynamic>`. This method can now be used to convert nested JSON from Firebase - `DataSnapshot`.
- Comments for `data class` are disabled by default, but you can enable them by writing in `pubspec.yaml` the value `show_method_comments: true`.

## [0.4.5]

- Added `fromDynamicMap` method to `data` class, which works well where you need to convert `Map<dynamic, dynamic>` to `Map<String, dynamic>`. For example nested JSON from Firebase DataSnapshot
- almost all places added doc comments
- Updated README.md

## [0.4.1]

- minor fixes

## [0.4.0]

- The script was completely redesigned to generate additional `enum` methods
- Removed scripts for a certain type of variable in the `enum` constructor, now only one script is used.
- Updated README.md

## [0.3.2]

- now any `implements` of the fake `union class` are added to the main
- move `union class` documentation comments of the fake class to the main class
- Updated README.md

## [0.3.0]

- added hints to `fromMap` if value is empty - for all variables
- `fromMap` method now allows null value if all fields of the class are initialized (comment added: for example `/* init: false */` above all fields)

## [0.2.6]

- added an error description and the name of the variable if the value is not initialized in the `fromMap` method
- fixed a problem with reading `bool` in `frommap`

## [0.2.5]

- added hints to `fromMap` if the value is empty for `bool` `num` `String` `int` `enum`
- type `ThemeMode` is now automatically defined as `enum`
- added a hint if a variable does not have a type or only has a type

## [0.2.0]

- now, when generating `data class`, the type of the variable is automatically determined, and if this type is not in `TurnGen`, hints about this auto-detection appear
- when generating a data class, you can now not specify an empty comment above each variable `/* */`
- Updated README.md

## [0.1.1]

- fixed output in json `List<data>`

## [0.1.0]

- Added ability to generate "union types"
- Adding hints to the data class generator
- `List<Map<String, dynamic>>` support added to TurnGen

## [0.0.8]

- if the value is `required`, it now goes first to initialization since rule `always_put_required_named_parameters_first`

## [0.0.7]

- fixed `toMap` and `fromMap` for the `Map` type
- added for `enum` type - method  `T mapConst<T>`

## [0.0.6]

- fixed work with mixin `equatable`

## [0.0.5]

- removed the dependency on `intl`

## [0.0.4]

- added support for configuring the `only: equatable`
- added a message if more than one value is used with the `only:` key

## [0.0.3]

- fix version intl

## [0.0.2]

- Updated README.md

## [0.0.1]

- Initial version
