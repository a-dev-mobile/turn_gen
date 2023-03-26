import 'dart:io';
import 'package:turn_gen/main.dart';
import 'package:turn_gen/src/src.dart';

// ignore: prefer-static-class
Future<void> runStart({
  required String pathBase,
  required FLILogger logger,
}) async {
  final _ =
      logger.progress('\nSearch for new files with the text: `// turnGen');

  // final slash = Platform.isWindows ? r'\' : '/';
  // final pathAssets = await _searchFolderAssets(pathBase, logger);

  final fileDartPaths = Directory(pathBase)
      .listSync(recursive: true)
      .whereType<File>()
      .where((v) => v.path.contains(RegExp(r'.*.dart$')))
      .toList()
    ..removeWhere((v) => v.path.contains(RegExp(r'.*.freezed.dart$')));
  final pathsWithTurnGen =
      _readFileAndGetListPathWithTextTurnGen(fileDartPaths);

  // final pathsWithTurnGen = findPathsWithText(filePaths, r'\/\/.*--TURN_GEN--');

  for (final path in pathsWithTurnGen) {
    final contentFile = await UtilsString.readFile(path: path);
    var enumTypeRun = EnumTypeRun.none;

    if (UtilsRegex.getTextRegexMatch(
      content: contentFile,
      regex: r'^[\s]*class[\s]+_',
    ).isNotEmpty) {
      enumTypeRun = EnumTypeRun.union;
    } else if (UtilsRegex.getTextRegexMatch(
      content: contentFile,
      regex: r'^[\s]*class[\s]+',
    ).isNotEmpty) {
      enumTypeRun = EnumTypeRun.data;
    } else if (UtilsRegex.getTextRegexMatch(
      content: contentFile,
      regex: r'^[\s]*enum[\s]+',
    ).isNotEmpty) {
      enumTypeRun = EnumTypeRun.enum_;
    }

    // final _ =
    //     logger.progress('\nUpdate ${enumTypeRun.value} on the path $path\n');

    switch (enumTypeRun) {
      case EnumTypeRun.data:
      case EnumTypeRun.enum_:
      case EnumTypeRun.union:
        await runFromArguments(['-t', enumTypeRun.value, '-f', path]);
        break;

      case EnumTypeRun.assets:
      case EnumTypeRun.build:
      case EnumTypeRun.none:
      case EnumTypeRun.run:
        break;
    }
  }

  if (pathsWithTurnGen.isEmpty) {
    logger
      ..info('')
      ..error('  Files marked // turnGen were not found');

    exit(0);
  }

  await Future<void>.delayed(const Duration(milliseconds: 100));
  exit(0);
}

// ignore: prefer-static-class
List<String> _readFileAndGetListPathWithTextTurnGen(List<File> paths) {
  final matchingPaths = <String>[];

  for (final path in paths) {
    final fileContents = path.readAsStringSync();

    // если закомичен файл пропускаем
    if (fileContents.contains(MyRegexText.commentCommenTurnGen())) continue;
    if (fileContents.contains(MyRegexText.firstglobalComment())) continue;

    if (fileContents.contains(MyRegexText.commenTurnGen())) {
      matchingPaths.add(path.path);
    }
  }

  return matchingPaths;
}
