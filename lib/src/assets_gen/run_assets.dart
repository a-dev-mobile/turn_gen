import 'dart:io';
import 'dart:math';

import 'package:path/path.dart' as p;
import 'package:turn_gen/src/src.dart';

import 'package:yaml/yaml.dart';

Future<void> runAssets({
  required String pathBase,
  required FLILogger logger,
}) async {
  logger.progress('\nLooking for the assets folder');
  final slash = Platform.isWindows ? r'\' : '/';
  final pathAssets = await _searchFolderAssets(pathBase, logger);

  logger
    ..info('\nAssets folder found: $pathAssets')
    ..progress('\nReading the assets folder')
    ..info('');

  final allFiles = Directory(pathAssets)
      .listSync(recursive: true)
      .whereType<File>()
      .toList();

  var fileFullPatch = '';
  var fileNameWithExtension = '';
  var fileExtension = '';
  var fileName = '';
  var fileOnlyNameFormat = '';
  var fileFromAssetsPath = '';

  var type = TypeNameFile.init;
  final assetsList = <AssetItem>[];
  final extensionUniq = <String>{};

  final nameFormatList = <String>[];
  for (final v in allFiles) {
    fileFullPatch = v.path;

    fileNameWithExtension = fileFullPatch.split(slash).last;
    final fileNameWithExtensionSplit = fileNameWithExtension.split('.');
    // если есть больше одной точки в имени файла
    if (fileNameWithExtensionSplit.length >= 3) {
      fileExtension = fileNameWithExtensionSplit.last;
      fileName = fileNameWithExtension.replaceAll(fileExtension, '');

      type = TypeNameFile.notNormal;
      // если нет имени но есть расширение
    } else if (fileNameWithExtensionSplit.length == 2 &&
        fileNameWithExtensionSplit.first.isEmpty) {
      type = TypeNameFile.onlyExtension;
      fileName = fileNameWithExtensionSplit.last;
      fileExtension = fileNameWithExtensionSplit.last;
      // если нет расширения
    } else if (fileNameWithExtensionSplit.length == 2 &&
        fileNameWithExtensionSplit.last.isEmpty) {
      fileName = fileNameWithExtensionSplit.first;
      fileExtension = ConstHelper.noExtension;
      type = TypeNameFile.onlyName;
      // если  имя с расширением
    } else if (fileNameWithExtensionSplit.length == 2 &&
        fileNameWithExtensionSplit.last.isNotEmpty &&
        fileNameWithExtensionSplit.first.isNotEmpty) {
      fileName = fileNameWithExtensionSplit.first;
      fileExtension = fileNameWithExtensionSplit.last;

      type = TypeNameFile.normal;
    } else if (fileNameWithExtensionSplit.length == 1) {
      type = TypeNameFile.onlyName;
      fileName = fileNameWithExtensionSplit.first;
      fileExtension = ConstHelper.noExtension;
    }

    /// rename if the file names are the same
    fileOnlyNameFormat = _formatFileName(fileName);
    // loop because the names of files in different folders can be the same
    for (var i = 0; i < 2000; i++) {
      if (nameFormatList.contains(fileOnlyNameFormat)) {
        type = TypeNameFile.identical;
        fileOnlyNameFormat = _incrNameFile(fileOnlyNameFormat);
      } else {
        break;
      }
    }
    nameFormatList.add(fileOnlyNameFormat);
    final stat = FileStat.statSync(fileFullPatch);
    fileFromAssetsPath = fileFullPatch
        .replaceAll(pathBase, '')
        .replaceAll(r'\', '/')
        .substring(1);
    // .replaceAll('/asset', 'asset');
    assetsList.add(
      AssetItem(
        fileOnlyName: fileName,
        fileOnlyExtension: fileExtension,
        fileFullPath: fileFullPatch,
        type: type,
        fileFromAssetsPath: fileFromAssetsPath,
        fileNameWithExtension: fileNameWithExtension,
        size: await _getFileSize(fileFullPatch, 1),
        dateAccessed: _getDateFormat(stat.accessed),
        dateModified: _getDateFormat(stat.modified),
        dateChanged: _getDateFormat(stat.changed),
        fileOnlyNameFormat: fileOnlyNameFormat,
      ),
    );
    type = TypeNameFile.init;
    extensionUniq.add(fileExtension);
  }
  for (final n in nameFormatList.toSet().toList()) {
    final list = assetsList.where((i) => i.fileOnlyName == n).toList();
    if (list.length == 1) continue;

    for (final l in list) {
      assetsList
        ..remove(l)
        ..add(l.copyWith(type: TypeNameFile.identical));
    }
  }

  _errorIfNotFiles(assetsList, logger);

  _foundFiles(logger, extensionUniq, assetsList);

  _foundFilesWithoutExtension(assetsList, logger);

  final pathGenFolder = _getPathAssetsOutput(pathBase, logger);

  _sendErrorIfNotConfigInPubspec(pathGenFolder);

  final pathGenFile = '${pathGenFolder}assets.gen.dart';
  await _createFolderAndFile(pathGenFolder, pathGenFile);

  var vFormat = '';
  final sb = StringBuffer();
  var listAssets = <AssetItem>[];
  final listStrNameFile = <String>[];
  var symbol = '';
  for (final v in extensionUniq) {
    vFormat = _extensionFormat(v);
    sb.write('''

class AppAssets$vFormat {''');

    listAssets = assetsList.where((e) => e.fileOnlyExtension == v).toList();
    for (final l in listAssets) {
      // line screening
      if (l.fileFromAssetsPath.contains(RegExp(r'[&$]+'))) {
        symbol = 'r';
      } else {
        symbol = '';
      }
      //  I fill it out to display the complete list
      listStrNameFile.add(l.fileOnlyNameFormat);
      sb.write('''
 
  /// * Size:\t${l.size}
  /// * File path: _${l.fileFromAssetsPath}
  ///     * Accessed: ${l.dateAccessed}
  ///     * Changed:  ${l.dateChanged}
  ///     * Modified: ${l.dateModified}
  static const String ${l.fileOnlyNameFormat} = $symbol'${l.fileFromAssetsPath}';
''');
    }

    sb.write('''

  /// List of all assets
  static const List<String> values = $listStrNameFile;
}
''');
    listStrNameFile.clear();
  }

  await File(pathGenFile).writeAsString('''
${ConstConsole.GEN_MSG_START}
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use
$sb

''');

  logger.info(ConstConsole.GEN_MSG_END);
}

void _errorIfNotFiles(List<AssetItem> assetsList, FLILogger logger) {
  if (assetsList.isEmpty) {
    logger.error('Files in assets not found');
    exit(0);
  }
}

String _getDateFormat(DateTime date) {
  return '${date.year}-${date.month}-${date.day}';
}

String _extensionFormat(String v) {
  return v.replaceAll('.', '').replaceAll('-', '_').toUpperCase();
}

void _foundFilesWithoutExtension(List<AssetItem> assetsList, FLILogger logger) {
  final fileNoneList =
      assetsList.where((v) => v.fileOnlyExtension == ConstHelper.noExtension);
  if (fileNoneList.isNotEmpty) {
    logger.info('\nFile without an extension:');
    for (final v in fileNoneList) {
      logger
        ..info(v.fileFullPath)
        ..info('---');
    }
  }
}

Future<String> _getFileSize(String filepath, int decimals) async {
  final file = File(filepath);
  final bytes = await file.length();
  if (bytes <= 0) return '0 B';
  const suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
  final i = (log(bytes) / log(1024)).floor();
  return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
}

// void _foundFilesWithoutName(List<AssetItem> assetsList, FLILogger logger) {
//   final fileNoneList =
//       assetsList.where((v) => v.fileOnlyExtension == ConstHelper.noExtension);
//   if (fileNoneList.isNotEmpty) {
//     logger.info('\nFiles without a name:');
//     for (final v in fileNoneList) {
//       logger.info(v.fileFullPath);
//     }
//   }
// }

void _sendErrorIfNotConfigInPubspec(String pathGenFolder) {
  if (pathGenFolder.isEmpty) {
    throw NoConfigFoundException(
      '''
  No configuration found in ${ConstHelper.pubspecFilePath}. 
  # example:
  
  turn_gen:
  assets_output: "lib/gen/"
  ''',
    );
  }
}

void _foundFiles(
  FLILogger logger,
  Set<String> extensionUniq,
  List<AssetItem> assetsList,
) {
  logger
    ..info('files found:')
    ..info('---')
    ..info('total\textension')
    ..info('---');
  var lenght = 0;
  for (final e in extensionUniq) {
    if (e.isEmpty || e == ConstHelper.noExtension) continue;
    lenght = assetsList.where((v) => v.fileOnlyExtension == e).length;
    logger.info('$lenght\t$e');
  }
  lenght = assetsList
      .where((v) => v.fileOnlyExtension == ConstHelper.noExtension)
      .length;
  logger
    ..info('---')
    ..info('$lenght\tNo extension');
}

Future<String> _searchFolderAssets(String pathBase, FLILogger logger) async {
  final pathAssetsFolderExamp1 = p.join(pathBase, 'assets');
  final pathAssetsFolderExamp2 = p.join(pathBase, 'asset');
  if (_isExistFolder(pathAssetsFolderExamp1)) {
    return pathAssetsFolderExamp1;
  } else if (_isExistFolder(pathAssetsFolderExamp2)) {
    return pathAssetsFolderExamp2;
  } else {
    logger.error('Assets folder not found');
    exit(0);
  }
}

Future<void> _createFolderAndFile(
  String pathGenFolder,
  String pathGenFile,
) async {
  await Directory(pathGenFolder).create(recursive: true);
  final file = File(pathGenFile);
  await file.create();
}

bool _isExistFolder(String path) {
  return Directory(path).existsSync();
}

String _formatFileName(String s) {
  final sFormat = s.trim();

  final separatedWords =
      sFormat.split(RegExp(r'[!@#<>?":`~;[\]\\|=+)(*&^%-\.-$—\s_]+'));
  var newString = '';

  if (separatedWords[0].isEmpty ||
      int.tryParse(separatedWords[0]) != null ||
      int.tryParse(separatedWords[0][0]) != null) {
    separatedWords[0] = ConstHelper.replaceIfFirstLetterNumber;
  }

  for (final word in separatedWords) {
    if (word.isEmpty) continue;
    // ignore: use_string_buffers
    newString += word[0].toUpperCase() + word.substring(1).toLowerCase();
  }
  var text = '${newString[0].toLowerCase()}${newString.substring(1)}';

  var letter = '';

  for (var i = 0; i < text.length; i++) {
    letter = text[i];
    if (AlphabetRuEn.lowerMap.containsKey(letter)) {
      text = _replaceCharAt(text, i, AlphabetRuEn.lowerMap[letter]!);
    } else if (AlphabetRuEn.upperMap.containsKey(letter)) {
      text = _replaceCharAt(text, i, AlphabetRuEn.upperMap[letter]!);
    }
  }
  // reserved word
  return text == 'values' ? 'vValues' : text;
}

/// Loads turn gen_extra_config from `pubspec.yaml` file
String _getPathAssetsOutput(String basePath, FLILogger logger) {
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

String _incrNameFile(String text) {
  final intInStr = RegExp(r'\d+$');
  final listMath = intInStr.allMatches(text).map((m) => m.group(0));
  final defValue = '${text}1';
  if (listMath.isEmpty) return defValue;

  var i = int.tryParse(listMath.first ?? '');

  if (i == null) return defValue;

  i = i + 1;
  final updateText = text.replaceAll(intInStr, '');

  return '$updateText$i';
}

String _replaceCharAt(String oldString, int index, String newChar) {
  return oldString.substring(0, index) +
      newChar +
      oldString.substring(index + 1);
}
