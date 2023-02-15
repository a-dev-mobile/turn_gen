import 'dart:io';

abstract class ErrorMsg {
  static String generate(Exception e, String? error) {
    final errorOutput = error == null ? '' : ' \n$error';

    return '\n✗ ERROR: ${(e).runtimeType}$errorOutput';
  }
}

abstract class UtilsNumber {
  static String removeTrailingZerosAndNumberfy(num v) {
    return v.truncateToDouble() == v ? v.toInt().toString() : v.toString();
  }
}

abstract class UtilsString {
  static Future<String> readFile({required String path}) async {
    final file = File(path);

    try {
      // Read the file
      final contents = await file.readAsString();

      return contents;
    } catch (e) {
      return 'ERROR $e';
    }
  }

  static String replaceToEmpty({
    required String text,
    required List<String> replaceable,
  }) {
    var result = text;
    for (final i in replaceable) {
      result = result.replaceAll(i, '');
    }
    return result;
  }
}

abstract class UtilsRegex {
  static String getTextRegexLastMatch({
    required String regex,
    required String content,
  }) {
    final regexFindNameState = RegExp(regex, multiLine: true);
    final match = regexFindNameState.allMatches(content);
    if (match.isEmpty) {
      return '';
    }

    return match.last[0] ?? '';
  }

  static List<String> getTextRegexListMatch({
    required String regex,
    required String content,
  }) {
    final regexFindNameState = RegExp(regex, multiLine: true);
    final matches = regexFindNameState.allMatches(content);
    if (matches.isEmpty) {}
    final list = <String>[];
    for (final Match m in matches) {
      final match = m[0]!;
      list.add(match);
    }

    return list;
  }
}
