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
      final configName = map[ConstHelper.configName];
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
    final basePath = filePath
        .replaceAll(r'\', '/')
        .replaceAll(RegExp('/lib.*'), '')
        .replaceAll(RegExp('/test.*'), '');

    final pubspecFile = File(p.join(basePath, ConstHelper.pubspecFilePath));

    if (!pubspecFile.existsSync()) {
      return false;
    }
    final content = pubspecFile.readAsStringSync();
    final map = loadYaml(content);

    if (map == null) return false;

    try {
      // ignore: avoid_dynamic_calls
      final configName = map[ConstHelper.configName];
      if (configName == null) return false;
      // ignore: avoid_dynamic_calls
      final configValue = configName[ConstHelper.showComments];
      if (configValue == null) {
        // logger
        //   ..info(
        //     'Setting - ${ConstHelper.showComments}, not found - set by default - false',
        //   )
        //   ..info('');

        return false;
      }

      logger
        ..info(
          'Setting - ${ConstHelper.showComments}, found - set $configValue',
        )
        ..info('');

      return configValue as bool;
    } on Exception {
      return false;
    }
  }

  List<String> getFolderNameForImport({
    required String filePath,
    required FLILogger logger,
  }) {
    final basePath = filePath
        .replaceAll(r'\', '/')
        .replaceAll(RegExp('/lib.*'), '')
        .replaceAll(RegExp('/test.*'), '');

    final pubspecFile = File(p.join(basePath, ConstHelper.pubspecFilePath));

    if (!pubspecFile.existsSync()) {
      return [];
    }
    final content = pubspecFile.readAsStringSync();
    final map = loadYaml(content);

    if (map == null) return [];

    try {
      // ignore: avoid_dynamic_calls
      final configName = map[ConstHelper.configName];
      if (configName == null) return [];
      // ignore: avoid_dynamic_calls
      final configValue = configName[ConstHelper.folderBarrel];
      if (configValue == null) {
        return [];
      }

      logger
        ..info(
          'Setting - ${ConstHelper.folderBarrel}, found - $configValue',
        )
        ..info('');

      final listRaw = configValue.toString().split(',');
      // ignore: prefer-immediate-return
      final listUpdate = listRaw.map((e) => e.trim()).toList();

      return listUpdate;
    } on Exception {
      return [];
    }
  }
}
