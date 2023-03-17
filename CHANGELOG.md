## 0.5.0

- убрал дополнительные коментарии в enum и assets генераторах, данные коментарии включаются при `show_method_comments: true`
- добавил дополнительне подсказки в консоле о настройке show_method_comments
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
