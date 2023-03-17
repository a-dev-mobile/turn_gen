import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:turn_gen/src/src.dart';
import 'package:yaml/yaml.dart';

/// Loads turn gen_extra_config from `pubspec.yaml` file

/// YamlRead Singleton class
class YamlRead {
  factory YamlRead() => _internalSingleton;
  YamlRead._internal();

  static final YamlRead _internalSingleton = YamlRead._internal();

  String getPathAssetsSetting({
    required String basePath,
    required FLILogger logger,
  }) {
    logger
      ..progress('\nFinding a path to generate in pubspec')
      ..info('');

    final pubspecFile = File(p.join(basePath, ConstHelper.pubspecFilePath));
    if (!pubspecFile.existsSync()) {
      return '';
    }
    final content = pubspecFile.readAsStringSync();
    final map = loadYaml(content);

    if (map == null) return '';

    try {
      // ignore: avoid_dynamic_calls
      final configName = map[ConstHelper.namePackage];
      if (configName == null) return '';
      // ignore: avoid_dynamic_calls
      final configValue = configName[ConstHelper.nameConfigAssetsOutput];
      if (configValue == null) return '';

      final relPath = configValue.toString();
      final path = p.join(basePath, relPath);

      logger
        ..info('Path found: ${path.replaceAll(r'\', '/')}')
        ..info('');

      return path;
    } on Exception {
      return '';
    }
  }

  bool isShowComment({
    required String filePath,
    required FLILogger logger,
  }) {
    final _ = logger.progress('\nSearch settings TurnGen in pubspec.yaml');

    final basePath = filePath
        .replaceAll(r'\', '/')
        .replaceAll(RegExp('/lib.*'), '')
        .replaceAll(RegExp('/test.*'), '');

    // if(!basePath.contains('lib')){
    // logger
    //     ..info('pubspec.yaml not found')
    //     ..info('');

    // }
    final pubspecFile = File(p.join(basePath, ConstHelper.pubspecFilePath));

    if (!pubspecFile.existsSync()) {
      return false;
    }
    final content = pubspecFile.readAsStringSync();
    final map = loadYaml(content);

    if (map == null) return false;

    try {
      // ignore: avoid_dynamic_calls
      final configName = map[ConstHelper.namePackage];
      if (configName == null) return false;
      // ignore: avoid_dynamic_calls
      final configValue = configName[ConstHelper.showMethodComments];
      if (configValue == null) {
        logger
          ..info(
            'Setting - show_method_comments, not found - set by default - false',
          )
          ..info('');

        return false;
      }

      logger
        ..info('Setting - show_method_comments, found - set $configValue')
        ..info('');

      return configValue as bool;
    } on Exception {
      return false;
    }
  }
}
