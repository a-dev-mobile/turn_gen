```dart
import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:collection/collection.dart';

enum Speed with Comparable<Speed> {
  stop(0),
  slow(5),
  normal(10),
  fast(20);

  const Speed(this.value);

  final int value;
  // end
}

@immutable
class RegistrationState {
  final bool isLoad;
  final String? name;
  final List<int> activitySelected;
// end
}

@immutable
class _Union {
  _Union.success();
  _Union.load();
  _Union.init();
  _Union.error();
}

// end
```
