// ignore_for_file: cascade_invocations

import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:path/path.dart';
import 'package:turn_gen/main.dart';
import 'package:turn_gen/src/src.dart';
import 'package:path/path.dart' as p;

final _slash = Platform.isWindows ? r'\' : '/';
// ignore_for_file: prefer-static-class, avoid-ignoring-return-values
Future<void> runImport({
  required String pathBase,
  required FLILogger logger,
}) async {
  final _ = logger.progress('\nПоиск каталогов в pubspec');

  final listFolder =
      YamlRead().getFolderNameForImport(filePath: pathBase, logger: logger);
  listFolder
      .map((e) => e.replaceAll(r'\', _slash).replaceAll('/', _slash))
      .toList();
  // final slash = Platform.isWindows ? r'\' : '/';
  // final pathAssets = await _searchFolderAssets(pathBase, logger);
  if (listFolder.isEmpty) {
    logger
      ..info('')
      ..error('Название папок в pubspec не найдено');

    exit(0);
  }

  final dir = Directory(join(pathBase, 'lib'));

  final fileDartPaths = dir
      .listSync(recursive: true)
      .whereType<Directory>()
      .where((v) => _isContains(v, listFolder))
      .toList();

  // final pathsWithTurnGen =
  //     _readFileAndGetListPathWithTextTurnGen(fileDartPaths);

  // final pathsWithTurnGen = findPathsWithText(filePaths, r'\/\/.*--TURN_GEN--');

  final listFileBasePath = listFolder.map((e) => join(pathBase, e)).toList();

  final listUpdatePath = <Directory>[];

  for (final e in fileDartPaths) {
    for (final i in listFileBasePath) {
      if (!e.path.contains(i)) continue;

      final path = e.path.replaceAll(i, '');
      if (path.isEmpty) continue;
      final lengthSplit = path.split('\\').length;

      if (lengthSplit == 2) listUpdatePath.add(e);
    }
  }

  for (final dir in listUpdatePath) {
    final mainFile = '${dir.path.split(_slash).last}.dart';
    // создаем пустой список для файлов
    final files = <FileSystemEntity>[];
    // рекурсивно проходим по всем каталогам и добавляем файлы с расширением ".dart"
    _getFiles(dir, files);
    // выводим список найденных файлов без базового каталога
    final listIncrFile = <String>[];

    for (final file in files) {
      // получаем относительный путь файла и выводим его имя
      final nameFile = file.path.substring(dir.path.length + 1);
      if (nameFile != mainFile) {
        final addText = "export '$nameFile';\n";
        listIncrFile.add(addText.replaceAll(r'\', '/'));
      }
    }

    if (listIncrFile.isNotEmpty) {
      final filePath = join(dir.path, mainFile);
      final createFile = File(filePath);
      final sink = createFile.openWrite();
      logger.info('Создаем ${createFile.absolute}');

      sink.writeAll(listIncrFile);
      await sink.flush();
      await sink.close();
    }
  }

  // final List<FileSystemEntity> entities = await dirFirst.list().toList();
  // final fullPaths = entities.whereType<File>().toList();
  // final pathIncremFile =
  //     fullPaths.map((e) => e.path.replaceAll(dirFirst.path, '')).toList();

  await Future<void>.delayed(const Duration(milliseconds: 100));
  exit(0);
}

void _getFiles(Directory dir, List<FileSystemEntity> files) {
  // получаем все файлы и каталоги в текущей директории
  final entities = dir.listSync();

  // проходим по всем файлам и каталогам
  for (final entity in entities) {
    if (entity is Directory) {
      // если это каталог, рекурсивно вызываем эту же функцию для него
      _getFiles(entity, files);
    } else if (entity is File && entity.path.endsWith('.dart')) {
      // если это файл с расширением ".dart", добавляем его в список файлов
      files.add(entity);
    }
  }
}

bool _isContains(Directory path, List<String> findList) {
  // var pathStr = '';

  // pathStr = '${path.path.substring(path.path.length + 1)};\n';
  // pathStr = '${path.path};\n';

  for (final i in findList) {
    final iUpdate = i.replaceAll(r'\', _slash).replaceAll('/', _slash);

    final RegExp nameExp = new RegExp(iUpdate + r'\w+$');

    if (path.path.contains(iUpdate)) {
      return true;
    }
  }

  return false;
}
