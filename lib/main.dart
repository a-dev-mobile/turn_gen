import 'dart:io';

import 'package:args/args.dart';

import 'package:turn_gen/src/src.dart';

import 'src/command/import/run_import.dart';

// ignore: prefer-static-class
Future<void> runFromArguments(List<String> arguments) async {
  // ignore: cascade_invocations
  final parser = ArgParser()
    ..addFlag(
      ConstArgOptionFlag.helpFlag,
      abbr: 'h',
      help: 'Usage help',
      negatable: false,
    )
    // Make default null to differentiate when it is explicitly set
    ..addOption(
      ConstArgOptionFlag.fileOption,
      abbr: 'f',
      help: 'Path to dart file',
    )
    ..addOption(
      ConstArgOptionFlag.typeOption,
      abbr: 't',
      defaultsTo: '',
      help: '''
What to generate additional features for? - 
enum_default
enum_int
enum_string
data
''',
    )
    ..addFlag(
      ConstArgOptionFlag.verboseFlag,
      abbr: 'v',
      help: 'Verbose output',
    );

  final argResults = parser.parse(arguments);

  if (argResults[ConstArgOptionFlag.helpFlag] as bool) {
    stdout
      ..writeln('Generates additional features for the dart language')
      ..writeln(parser.usage);
    exit(0);
  }
  // creating logger based on -v flag
  final logger = FLILogger(argResults[ConstArgOptionFlag.verboseFlag] as bool)
    ..info('*** Run TurnGen Script ***');

  try {
    var path = argResults[ConstArgOptionFlag.fileOption].toString();

    if (path == 'null') {
// get path without arg
      path = Platform.script
          .toFilePath(windows: Platform.isWindows)
          .replaceAll(RegExp(r'\.dart_tool.*'), '')
          .replaceAll(RegExp(r'\\bin.*'), '');
    }

    logger.info('Path used: $path');

    var typeString = argResults[ConstArgOptionFlag.typeOption].toString();

// if we only pass assets
    if (typeString.isEmpty &&
        arguments.isNotEmpty &&
        (arguments.first == EnumTypeRun.assets.value ||
            arguments.first == EnumTypeRun.build.value ||
            arguments.first == EnumTypeRun.run.value ||
            arguments.first == EnumTypeRun.import.value)) {
      typeString = arguments.first;
    }
    if (path.isEmpty) logger.info('Path used: $path');

    // если запуск вообще без аргументов
    if (typeString.isEmpty && arguments.isEmpty) {
      typeString = EnumTypeRun.run.value;
    }
    final typeRun =
        EnumTypeRun.fromValue(typeString, fallback: EnumTypeRun.none);
    logger.info('The ${typeRun.value.toUpperCase()} script is used');
    switch (typeRun) {
      case EnumTypeRun.data:
        await dataStart(path: path, logger: logger);
        break;
      case EnumTypeRun.assets:
        await assetsStart(pathBase: path, logger: logger);
        break;
      case EnumTypeRun.none:
        logger.error('Generator type not defined');

        if (argResults[ConstArgOptionFlag.fileOption] == null) {
          throw const NoPathFoundException(
            'No path found in arguments'
            ' use -f and add path to dart file',
          );
        }

        exit(0);
      case EnumTypeRun.union:
        await unionStart(path: path, logger: logger);
        break;
      case EnumTypeRun.enum_:
        await enumStart(path: path, logger: logger);

        break;
      case EnumTypeRun.build:
        await buildStart(pathBase: path, logger: logger);
        break;
      case EnumTypeRun.run:
        await runStart(pathBase: path, logger: logger);

        break;
      case EnumTypeRun.import:
        await runImport(pathBase: path, logger: logger);
       
        break;
    }
  } catch (e) {
    stderr
      ..writeln('\n✕ Failed to use TurnGen')
      ..writeln(e);
    exit(0);
  }
}
