// import 'dart:io';
// import 'dart:math';
// import 'package:path/path.dart' as p;
// import 'package:turn_gen/src/src.dart';

// Future<void> runUpdate({
//   required String pathBase,
//   required FLILogger logger,
// }) async {
//   logger.progress('\nПоиск всех файлов turn gen');

//   final slash = Platform.isWindows ? r'\' : '/';
//   final pathAssets = await _searchFolderAssets(pathBase, logger);

//   // final filePaths = Directory(pathBase)
//   //     .listSync(recursive: true)
//   //     .whereType<File>()
//   //     .where((v) => v.path.contains(RegExp(r'.*.dart$')))
//   //     .toList();

//   // final pathsWithTurnGen = findPathsWithText(filePaths, r'\/\/.*--TURN_GEN--');

//   // print('Paths with "hello": $pathsWithTurnGen');

//   logger
//     ..info('\nAssets folder found: $pathAssets')
//     ..progress('\nReading the assets folder')
//     ..info('');

//   final allFiles = Directory(pathAssets)
//       .listSync(recursive: true)
//       .whereType<File>()
//       .toList();

//   var fileFullPatch = '';
//   var fileNameWithExtension = '';
//   var fileExtension = '';
//   var fileName = '';
//   var fileOnlyNameFormat = '';
//   var fileFromAssetsPath = '';

//   var type = TypeNameFile.init;
//   final assetsList = <AssetItem>[];
//   final extensionUniq = <String>{};

//   final nameFormatList = <String>[];
//   for (final v in allFiles) {
//     fileFullPatch = v.path;

//     fileNameWithExtension = fileFullPatch.split(slash).last;

//     final fileNameWithExtensionSplit = fileNameWithExtension.split('.');
//     // если есть больше одной точки в имени файла
//     if (fileNameWithExtensionSplit.length >= 3) {
//       fileExtension = fileNameWithExtensionSplit.last;
//       fileName = fileNameWithExtension.replaceAll(fileExtension, '');

//       type = TypeNameFile.notNormal;
//       // если нет имени но есть расширение
//     } else if (fileNameWithExtensionSplit.length == 2 &&
//         fileNameWithExtensionSplit.first.isEmpty) {
//       type = TypeNameFile.onlyExtension;
//       fileName = fileNameWithExtensionSplit.last;
//       fileExtension = fileNameWithExtensionSplit.last;
//       // если нет расширения
//     } else if (fileNameWithExtensionSplit.length == 2 &&
//         fileNameWithExtensionSplit.last.isEmpty) {
//       fileName = fileNameWithExtensionSplit.first;
//       fileExtension = ConstHelper.noExtension;
//       type = TypeNameFile.onlyName;
//       // если  имя с расширением
//     } else if (fileNameWithExtensionSplit.length == 2 &&
//         fileNameWithExtensionSplit.last.isNotEmpty &&
//         fileNameWithExtensionSplit.first.isNotEmpty) {
//       fileName = fileNameWithExtensionSplit.first;
//       fileExtension = fileNameWithExtensionSplit.last;

//       type = TypeNameFile.normal;
//     } else if (fileNameWithExtensionSplit.length == 1) {
//       type = TypeNameFile.onlyName;
//       fileName = fileNameWithExtensionSplit.first;
//       fileExtension = ConstHelper.noExtension;
//     }

//     /// rename if the file names are the same
//     fileOnlyNameFormat = _formatFileName(fileName);

//     final foldersRaw = _getListFolder(fileFullPatch);

//     final folders = <String>[];

//     for (var i = 0; i < foldersRaw.length; i++) {
//       final folder = foldersRaw[i];
//       if (i == 0) {
//         folders.add(
//           _formatFileName(folder).toNotTitle(),
//         ); // do not use toTitleCase() for the first element
//       } else {
//         folders.add(_formatFileName(folder).toCapitalized());
//       }
//     }
//     folders.add(fileOnlyNameFormat.toCapitalized());
//     final formatPathWithNameFile = folders.join();
//     // loop because the names of files in different folders can be the same
//     // for (var i = 0; i < 2000; i++) {
//     //   if (nameFormatList.contains(fileOnlyNameFormat)) {
//     //     type = TypeNameFile.identical;
//     //     fileOnlyNameFormat = _incrNameFile(fileOnlyNameFormat);
//     //   } else {
//     //     break;
//     //   }
//     // }
//     nameFormatList.add(fileOnlyNameFormat);
//     final stat = FileStat.statSync(fileFullPatch);
//     fileFromAssetsPath =
//         fileFullPatch.replaceAll(pathBase, '').replaceAll(r'\', '/');
//     // .replaceAll('/asset', 'asset');
//     assetsList.add(
//       AssetItem(
//         folders: folders,
//         fileOnlyName: fileName,
//         fileOnlyExtension: fileExtension,
//         fileFullPath: fileFullPatch,
//         type: type,
//         fileFromAssetsPath: fileFromAssetsPath,
//         fileNameWithExtension: fileNameWithExtension,
//         size: await _getFileSize(fileFullPatch, 1),
//         dateAccessed: _getDateFormat(stat.accessed),
//         dateModified: _getDateFormat(stat.modified),
//         dateChanged: _getDateFormat(stat.changed),
//         fileOnlyNameFormat: formatPathWithNameFile,
//         // fileOnlyNameFormat: fileOnlyNameFormat,
//       ),
//     );
//     type = TypeNameFile.init;
//     extensionUniq.add(fileExtension);
//   }
//   for (final n in nameFormatList.toSet().toList()) {
//     final list = assetsList.where((i) => i.fileOnlyName == n).toList();
//     if (list.length == 1) continue;

//     for (final l in list) {
//       assetsList
//         ..remove(l)
//         ..add(l.copyWith(type: TypeNameFile.identical));
//     }
//   }

//   _errorIfNotFiles(assetsList, logger);

//   _foundFiles(logger, extensionUniq, assetsList);

//   _foundFilesWithoutExtension(assetsList, logger);

//   var pathGenFolder = YamlRead().getPathAssetsSetting(
//     basePath: pathBase,
//     logger: logger,
//   );

//   pathGenFolder = _sendInfoIfNotConfigInPubspec(pathGenFolder, logger);

//   final pathGenFile = '${pathGenFolder}assets.gen.dart';
//   await _createFolderAndFile(pathGenFolder, pathGenFile);

//   var vFormat = '';
//   final sb = StringBuffer();
//   var listAssets = <AssetItem>[];
//   final listStrNameFile = <String>[];
//   var symbol = '';

//   sb.write('''

// class AppAssets {
//   factory AppAssets() => _internalSingleton;
//   AppAssets._internal();

//   static final AppAssets _internalSingleton = AppAssets._internal();  
// ''');

//   for (final l in assetsList) {
//     // line screening
//     if (l.fileFromAssetsPath.contains(RegExp(r'[&$]+'))) {
//       symbol = 'r';
//     } else {
//       symbol = '';
//     }

//     final comment = true
//         ? '''
  
//   ///     * Accessed: ${l.dateAccessed}
//   ///     * Changed:  ${l.dateChanged}
//   ///     * Modified: ${l.dateModified}'''
//         : '';

//     //  I fill it out to display the complete list
//     listStrNameFile.add(l.fileOnlyNameFormat);
//     sb.write('''
 
//   /// * Size:\t${l.size}
//   /// * File path: _${l.fileFromAssetsPath}$comment
//   static const String ${l.fileOnlyNameFormat} = $symbol'${l.fileFromAssetsPath}';
// ''');
//   }

//   for (final v in extensionUniq) {
//     vFormat = _extensionFormat(v);
//     listAssets = assetsList.where((e) => e.fileOnlyExtension == v).toList();

//     sb.write('''

//   /// List of $vFormat assets
//   static const List<String> values$vFormat = ${listAssets.map((e) => e.fileOnlyNameFormat).toList()};
// ''');
//   }

//   sb.write('''

//   /// List of all assets
//   static const List<String> valuesAll = $listStrNameFile;

// }
// ''');
//   listStrNameFile.clear();

//   await File(pathGenFile).writeAsString('''
// ${ConstConsole.GEN_MSG_START(TypeRun.assets)}
// // coverage:ignore-file
// // ignore_for_file: type=lint
// // ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use
// $sb

// ''');

//   logger.info(ConstConsole.GEN_MSG_END);
// }

// // ignore: prefer-static-class
// List<String> findPathsWithText(List<File> paths, String rawRegex) {
//   final matchingPaths = <String>[];

//   for (final path in paths) {
//     final fileContents = path.readAsStringSync();
//     if (fileContents.contains(RegExp(rawRegex))) {
//       matchingPaths.add(path.path);
//     }
//   }
//   return matchingPaths;
// }

// List<String> _getListFolder(String fileFullPatch) {
//   final folders = fileFullPatch
//       .replaceAll(r'\', '/') // replace backslashes with forward slashes
//       .split('/') // split the path into an array of folders
//       .skipWhile(
//         (folder) => folder != 'assets',
//       ) // skip all folders until we reach the 'assets' folder
//       .skip(1) // skip the 'assets' folder itself
//       .map(
//         (folder) => folder.toLowerCase(),
//       ) // convert all folders to lowercase
//       .toList(); // convert the iterable to a list
//   final _ = folders.removeLast(); // remove the last element (the file name)
//   return folders;
// }

// void _errorIfNotFiles(List<AssetItem> assetsList, FLILogger logger) {
//   if (assetsList.isEmpty) {
//     logger.error('Files in assets not found');
//     exit(0);
//   }
// }

// String _getDateFormat(DateTime date) {
//   return '${date.year}-${date.month}-${date.day}';
// }

// String _extensionFormat(String v) {
//   return v.replaceAll('.', '').replaceAll('-', '_').toUpperCase();
// }

// void _foundFilesWithoutExtension(List<AssetItem> assetsList, FLILogger logger) {
//   final fileNoneList =
//       assetsList.where((v) => v.fileOnlyExtension == ConstHelper.noExtension);
//   if (fileNoneList.isNotEmpty) {
//     logger.info('\nFile without an extension:');
//     for (final v in fileNoneList) {
//       logger
//         ..info(v.fileFullPath)
//         ..info('---');
//     }
//   }
// }

// Future<String> _getFileSize(String filepath, int decimals) async {
//   final file = File(filepath);
//   final bytes = await file.length();
//   if (bytes <= 0) return '0 B';
//   const suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
//   final i = (log(bytes) / log(1024)).floor();
//   return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
// }

// // void _foundFilesWithoutName(List<AssetItem> assetsList, FLILogger logger) {
// //   final fileNoneList =
// //       assetsList.where((v) => v.fileOnlyExtension == ConstHelper.noExtension);
// //   if (fileNoneList.isNotEmpty) {
// //     logger.info('\nFiles without a name:');
// //     for (final v in fileNoneList) {
// //       logger.info(v.fileFullPath);
// //     }
// //   }
// // }

// String _sendInfoIfNotConfigInPubspec(
//   String pathGenFolder,
//   FLILogger logger,
// ) {
//   if (pathGenFolder.isEmpty) {
//     logger.info('''

//   No configuration found in ${ConstHelper.pubspecFilePath}. 
//   # example:
  
//   turn_gen:
//   assets_output: "lib/gen/"

//   Default path lib/gen/ is used

//   ''');

//     return 'lib/gen/';
//   } else {
//     return pathGenFolder;
//   }
// }

// void _foundFiles(
//   FLILogger logger,
//   Set<String> extensionUniq,
//   List<AssetItem> assetsList,
// ) {
//   logger
//     ..info('files found:')
//     ..info('---')
//     ..info('total\textension')
//     ..info('---');
//   var lenght = 0;
//   for (final e in extensionUniq) {
//     if (e.isEmpty || e == ConstHelper.noExtension) continue;
//     lenght = assetsList.where((v) => v.fileOnlyExtension == e).length;
//     logger.info('$lenght\t$e');
//   }
//   lenght = assetsList
//       .where((v) => v.fileOnlyExtension == ConstHelper.noExtension)
//       .length;
//   logger
//     ..info('---')
//     ..info('$lenght\tNo extension');
// }

// Future<String> _searchFolderAssets(String pathBase, FLILogger logger) async {
//   final pathAssetsFolderExamp1 = p.join(pathBase, 'assets');
//   final pathAssetsFolderExamp2 = p.join(pathBase, 'asset');
//   if (_isExistFolder(pathAssetsFolderExamp1)) {
//     return pathAssetsFolderExamp1;
//   } else if (_isExistFolder(pathAssetsFolderExamp2)) {
//     logger.error('Rename the asset folder to assets');
//     exit(0);
//   } else {
//     logger.error('Assets folder not found');
//     exit(0);
//   }
// }

// Future<void> _createFolderAndFile(
//   String pathGenFolder,
//   String pathGenFile,
// ) async {
//   await Directory(pathGenFolder).create(recursive: true);
//   final file = File(pathGenFile);
//   await file.create();
// }

// bool _isExistFolder(String path) {
//   return Directory(path).existsSync();
// }

// String _formatFileName(String s) {
//   final sFormat = s.trim();

//   final separatedWords =
//       sFormat.split(RegExp(r'[!@#<>?":`~;[\]\\|=+)(*&^%-\.-$—\s_]+'));
//   var newString = '';

//   if (separatedWords[0].isEmpty ||
//       int.tryParse(separatedWords[0]) != null ||
//       int.tryParse(separatedWords[0][0]) != null) {
//     separatedWords[0] = ConstHelper.replaceIfFirstLetterNumber;
//   }

//   for (final word in separatedWords) {
//     if (word.isEmpty) continue;
//     // ignore: use_string_buffers
//     newString += word[0].toCapitalized() + word.substring(1);
//   }
//   var text = '${newString[0]}${newString.substring(1)}';

//   var letter = '';

//   for (var i = 0; i < text.length; i++) {
//     letter = text[i];
//     if (AlphabetRuEn.lowerMap.containsKey(letter)) {
//       text = _replaceCharAt(text, i, AlphabetRuEn.lowerMap[letter]!);
//     } else if (AlphabetRuEn.upperMap.containsKey(letter)) {
//       text = _replaceCharAt(text, i, AlphabetRuEn.upperMap[letter]!);
//     }
//   }
//   // reserved word
//   return text == 'values' ? 'vValues' : text;
// }

// // String _incrNameFile(String text) {
// //   final intInStr = RegExp(r'\d+$');
// //   final listMath = intInStr.allMatches(text).map((m) => m.group(0));
// //   final defValue = '${text}1';
// //   if (listMath.isEmpty) return defValue;

// //   var i = int.tryParse(listMath.first ?? '');

// //   if (i == null) return defValue;

// //   i = i + 1;
// //   final updateText = text.replaceAll(intInStr, '');

// //   return '$updateText$i';
// // }

// String _replaceCharAt(String oldString, int index, String newChar) {
//   return oldString.substring(0, index) +
//       newChar +
//       oldString.substring(index + 1);
// }
