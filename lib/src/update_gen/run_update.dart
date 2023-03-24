import 'dart:io';
import 'dart:math';
import 'package:path/path.dart' as p;
import 'package:turn_gen/main.dart';
import 'package:turn_gen/src/src.dart';
import 'package:turn_gen/src/update_gen/update_gen.dart';

// ignore: prefer-static-class
Future<void> runUpdate({
  required String pathBase,
  required FLILogger logger,
}) async {
  final _ = logger.progress('\nFind all turn gen files');

  // final slash = Platform.isWindows ? r'\' : '/';
  // final pathAssets = await _searchFolderAssets(pathBase, logger);

  final fileDartPaths = Directory(pathBase)
      .listSync(recursive: true)
      .whereType<File>()
      .where((v) => v.path.contains(RegExp(r'.*.dart$')))
      .toList();

  final pathsWithTurnGen = findPathsWithTextTurnGen(fileDartPaths);
  // final pathsWithTurnGen = findPathsWithText(filePaths, r'\/\/.*--TURN_GEN--');

  final listUpdate = <UpdateRunModel>[];

  for (final path in pathsWithTurnGen) {
    final contentFile = await UtilsString.readFile(path: path);

    final textTitle = UtilsRegex.getTextRegexMatch(
      content: contentFile,
      regex: r'v\d.\d.\d \([a-z]*\)',
    );

    final typeRun = TypeRun.fromValue(
      textTitle.split('(').last.replaceAll(')', ''),
      fallback: TypeRun.none,
    );
    if (typeRun != TypeRun.none) {
      listUpdate.add(UpdateRunModel(enumTypeRun: typeRun, path: path));
    }
  }
  final mainRunModel = MainRunModel(basePath: pathBase, listRun: listUpdate);
// запуск генератора на список всех файлов
  for (final v in mainRunModel.listRun) {
    final _ = logger
        .progress('\nUpdate ${v.enumTypeRun.value} on the path ${v.path}\n');

    switch (v.enumTypeRun) {
      case TypeRun.assets:
        await runFromArguments(
          ['-t', v.enumTypeRun.value, '-f', mainRunModel.basePath],
        );
        break;
      case TypeRun.data:
      case TypeRun.enum_:
      case TypeRun.union:
        await runFromArguments(['-t', v.enumTypeRun.value, '-f', v.path]);
        break;

      case TypeRun.enumDefault:
      case TypeRun.enumInt:
      case TypeRun.enumString:
      case TypeRun.build:
      case TypeRun.none:
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
List<String> findPathsWithTextTurnGen(List<File> paths) {
  final matchingPaths = <String>[];
  final baseTitle = ConstConsole.BASE_TITLE;

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
