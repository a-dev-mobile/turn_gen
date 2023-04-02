
## 0.8.3

- fixed name variable in enum script
- Updated README.md

## 0.8.2

- added json test
- fixed exit from terminal on mac
- Updated README.md

## 0.8.1

- removed redundant logs

## 0.8.0

- added a command to automatically start the desired generator `dart run turn_gen`
- in the `fromValue` method of the `enum` generator a correction was made to handle values of type `double`
- removed `@deprecated` methods from the `enum` generator
- renamed the `show_method_comments` setting to `show_comments` in `pubspec.yaml
- Updated README.md

## 0.7.1

- fix: name version

## 0.7.0

- added `build` command that looks through all files with text `--TURN_GEN--` and updates them to the latest version. Full command `dart run turn_gen build`
- Updated README.md

## 0.6.7

- improved `assets` generator

## 0.6.6

- improved `assets` generator
- renamed file `AppAssets` to `AssetPaths`

## 0.6.5

- Now you can not set the path for the generated `assets` file. Default is: `lib/gen/`
- Updated README.md

## 0.6.4

- fix assets generator
- Updated README.md

## 0.6.3

- changed the fromMap method for some types

## 0.6.2

- fix path when generating assets

## 0.6.1

- updated hints in the console when generating
- added the ability to auto-detect the types `List<enum>` and `List<enum?>`
- Updated README.md

## 0.6.0

- To simplify the process of generating `assets files`, you no longer need to specify the path when starting the generator. Simply run `dart run turn_gen assets` to initiate the generator.
- Updated README.md

## 0.5.1

- Updated CHANGELOG.md.

## 0.5.0

- Improved - Removed additional comments in enum and asset generators. These comments are included when show_method_comments: true.
- Added additional console hints about setting show_method_comments.
- Updated README.md

## 0.4.7

- I  improved the code by removing the `fromDynamicMap` method, and in the `fromMap` method you changed the variable type to `Map<dynamic, dynamic>` instead of `Map<String, dynamic>`. This method can now be used to convert nested JSON from Firebase - `DataSnapshot`.
- Comments for `data class` are disabled by default, but you can enable them by writing in `pubspec.yaml` the value `show_method_comments: true`.

## 0.4.5

- Added `fromDynamicMap` method to `data` class, which works well where you need to convert `Map<dynamic, dynamic>` to `Map<String, dynamic>`. For example nested JSON from Firebase DataSnapshot
- almost all places added doc comments
- Updated README.md

## 0.4.1

- minor fixes

## 0.4.0

- The script was completely redesigned to generate additional `enum` methods
- Removed scripts for a certain type of variable in the `enum` constructor, now only one script is used.
- Updated README.md

## 0.3.2

- now any `implements` of the fake `union class` are added to the main
- move `union class` documentation comments of the fake class to the main class
- Updated README.md

## 0.3.0

- added hints to `fromMap` if value is empty - for all variables
- `fromMap` method now allows null value if all fields of the class are initialized (comment added: for example `/* init: false */` above all fields)

## 0.2.6

- added an error description and the name of the variable if the value is not initialized in the `fromMap` method
- fixed a problem with reading `bool` in `frommap`

## 0.2.5

- added hints to `fromMap` if the value is empty for `bool` `num` `String` `int` `enum`
- type `ThemeMode` is now automatically defined as `enum`
- added a hint if a variable does not have a type or only has a type

## 0.2.0

- now, when generating `data class`, the type of the variable is automatically determined, and if this type is not in `TurnGen`, hints about this auto-detection appear
- when generating a data class, you can now not specify an empty comment above each variable `/* */`
- Updated README.md

## 0.1.1

- fixed output in json `List<data>`

## 0.1.0

- Added ability to generate "union types"
- Adding hints to the data class generator
- `List<Map<String, dynamic>>` support added to TurnGen

## 0.0.8

- if the value is `required`, it now goes first to initialization since rule `always_put_required_named_parameters_first`

## 0.0.7

- fixed `toMap` and `fromMap` for the `Map` type
- added for `enum` type - method  `T mapConst<T>`

## 0.0.6

- fixed work with mixin `equatable`

## 0.0.5

- removed the dependency on `intl`

## 0.0.4

- added support for configuring the `only: equatable`
- added a message if more than one value is used with the `only:` key

## 0.0.3

- fix version intl

## 0.0.2

- Updated README.md

## 0.0.1

- Initial version
