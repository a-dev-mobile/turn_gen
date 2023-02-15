import 'package:turn_gen/utils.dart';

class InvalidConfigException implements Exception {
  const InvalidConfigException([this.message]);
  final String? message;

  @override
  String toString() {
    return ErrorMsg.generate(this, message);
  }
}

class NoPathFoundException implements Exception {
  const NoPathFoundException([this.message]);
  final String? message;

  @override
  String toString() {
    return ErrorMsg.generate(this, message);
  }
}

class NoConfigFoundException implements Exception {
  const NoConfigFoundException([this.message]);
  final String? message;

  @override
  String toString() {
    return ErrorMsg.generate(this, message);
  }
}

/// A exception to throw when given [fileName] is not found
class FileNotFoundException implements Exception {
  /// Creates a instance of [FileNotFoundException].
  const FileNotFoundException(this.fileName);

  /// Name of the file
  final String fileName;

  @override
  String toString() {
    return ErrorMsg.generate(this, '$fileName file not found');
  }
}
