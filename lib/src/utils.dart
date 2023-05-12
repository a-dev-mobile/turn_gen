import 'dart:io';

/// extension для изменения регистра строк
extension StringCasingExtension on String {
  /// первая буква в верхнем регистре, остальные - без изменения
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';

  /// первая буква в нижнем регистре, остальные - без изменения
  String toNotTitle() =>
      length > 0 ? '${this[0].toLowerCase()}${substring(1)}' : '';

  /// преобразование строки в "title case", т.е. каждое слово начинается с большой буквы
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

/// класс для работы с терминалом
abstract class Terminal {
  /// запуск команды форматирования
  static void runFormat(String path) {
    final _ = Process.run('dart', ['format', path]);
  }
}

/// класс для генерации сообщений об ошибках
abstract class ErrorMsg {
  /// генерация сообщения об ошибке
  static String generate(Exception e, String? error) {
    final errorOutput = error == null ? '' : ' \n$error';

    return '\n✗ ERROR: ${(e).runtimeType}$errorOutput';
  }
}

/// класс для работы с числами
abstract class UtilsNumber {
  /// удаляет незначащие нули и преобразует число в строку
  static String removeTrailingZerosAndNumberfy(num v) {
    return v.truncateToDouble() == v ? v.toInt().toString() : v.toString();
  }
}

/// класс для работы со строками
abstract class UtilsString {
  /// читает содержимое файла и возвращает его в виде строки
  static Future<String> readFile({required String path}) async {
    final file = File(path);

    try {
      // Read the file
      return await file.readAsString();
    } catch (e) {
      return 'ERROR $e';
    }
  }

  /// заменяет заданные строки на пустые строки в тексте
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

/// класс для работы с регулярными выражениями
abstract class UtilsRegex {
  /// ищет первое или последнее вхождение заданного регулярного выражения в тексте и возвращает его
  static String getTextRegexMatch({
    required String regex,
    required String content,
    bool isLast = true,
  }) {
    final regexFindNameState = RegExp(regex, multiLine: true);
    final match = regexFindNameState.allMatches(content);
    if (match.isEmpty) {
      return '';
    }

    return isLast ? match.last[0] ?? '' : match.first[0] ?? '';
  }

  /// ищет все вхождения заданного регулярного выражения в тексте и возвращает список найденных строк
  static List<String> getTextRegexListMatch({
    required String regex,
    required String content,
  }) {
    final regexFindNameState = RegExp(regex, multiLine: true);
    final matches = regexFindNameState.allMatches(content);
    if (matches.isEmpty) return [];
    final list = <String>[];
    for (final Match m in matches) {
      final match = m[0] ?? '';
      list.add(match);
    }

    return list;
  }
}
