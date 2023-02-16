import 'dart:io';

import 'package:args/args.dart';
import 'package:turn_gen/src/src.dart';

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
      defaultsTo: 'data',
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
    ..progress('Start generate');

  if (argResults[ConstArgOptionFlag.fileOption] == null) {
    throw const NoPathFoundException(
      'No path found in arguments'
      ' use -f and add path to dart file',
    );
  }

  try {
    final path = argResults[ConstArgOptionFlag.fileOption].toString();

    logger.info('Path used: $path');

    final typeString = argResults[ConstArgOptionFlag.typeOption].toString();
    final typeRun = TypeRun.fromValue(typeString, fallback: TypeRun.none);
    logger.info('Type of generator used: ${typeRun.value}');
    switch (typeRun) {
      case TypeRun.enumDefault:
        await runEnumDefault(path: path, logger: logger);
        break;
      case TypeRun.enumInt:
        await runEnumInt(path: path, logger: logger);
        break;
      case TypeRun.enumString:
        await runEnumString(path: path, logger: logger);
        break;

      case TypeRun.data:
        await runData(path: path, logger: logger);
        break;
      case TypeRun.assets:
        await runAssets(pathBase: path, logger: logger);
        break;
      case TypeRun.none:
        logger.error('Generator type not defined');
        exit(0);
    }
  } catch (e) {
    stderr
      ..writeln('\n✕ Could not generated extra features')
      ..writeln(e);
    exit(0);
  }
}
