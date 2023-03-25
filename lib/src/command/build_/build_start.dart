import 'dart:io';
import 'package:turn_gen/main.dart';
import 'package:turn_gen/src/src.dart';

// ignore: prefer-static-class
Future<void> buildStart({
  required String pathBase,
  required FLILogger logger,
}) async {
  final _ = logger.progress('\nSearch for all files with the text: `--TURN_GEN--`');

  // final slash = Platform.isWindows ? r'\' : '/';
  // final pathAssets = await _searchFolderAssets(pathBase, logger);

  final fileDartPaths = Directory(pathBase)
      .listSync(recursive: true)
      .whereType<File>()
      .where((v) => v.path.contains(RegExp(r'.*.dart$')))
      .toList();

  final pathsWithTurnGen = _findPathsWithTextTurnGen(fileDartPaths);
  // final pathsWithTurnGen = findPathsWithText(filePaths, r'\/\/.*--TURN_GEN--');

  final listUpdate = <BuildItemModel>[];

  for (final path in pathsWithTurnGen) {
    final contentFile = await UtilsString.readFile(path: path);

    final textTitle = UtilsRegex.getTextRegexMatch(
      content: contentFile,
      regex: r'v\d.\d.\d \([a-z]*\)',
    );

    final typeRun = EnumTypeRun.fromValue(
      textTitle.split('(').last.replaceAll(')', ''),
      fallback: EnumTypeRun.none,
    );
    if (typeRun != EnumTypeRun.none) {
      listUpdate.add(BuildItemModel(enumTypeRun: typeRun, path: path));
    }
  }
  final mainRunModel = BuildMainModel(basePath: pathBase, listRun: listUpdate);
// запуск генератора на список всех файлов
  for (final v in mainRunModel.listRun) {
    final _ = logger
        .progress('\nUpdate ${v.enumTypeRun.value} on the path ${v.path}\n');

    switch (v.enumTypeRun) {
      case EnumTypeRun.assets:
        await runFromArguments(
          ['-t', v.enumTypeRun.value, '-f', mainRunModel.basePath],
        );
        break;
      case EnumTypeRun.data:
      case EnumTypeRun.enum_:
      case EnumTypeRun.union:
        await runFromArguments(['-t', v.enumTypeRun.value, '-f', v.path]);
        break;

      case EnumTypeRun.build:
      case EnumTypeRun.none:
        break;
      case EnumTypeRun.run:
        // TODO: Handle this case.
        break;
    }

    // logger.info(ConstConsole.GEN_MSG_END);
  }

  if (mainRunModel.listRun.isEmpty) {
    logger
      ..info('')
      ..error('  Files marked --TURN_GEN-- were not found');

    exit(0);
  }
}

// ignore: prefer-static-class
List<String> _findPathsWithTextTurnGen(List<File> paths) {
  final matchingPaths = <String>[];
  const baseTitle = ConstConsole.BASE_TITLE;

  for (final path in paths) {
    final fileContents = path.readAsStringSync();

    // если закомичен файл пропускаем
    if (fileContents.contains(RegExp('//\\s*?$baseTitle'))) continue;
    if (fileContents.contains(RegExp(r'^\/\*'))) continue;

    if (fileContents.contains(baseTitle)) {
      matchingPaths.add(path.path);
    }
  }

  return matchingPaths;
}
