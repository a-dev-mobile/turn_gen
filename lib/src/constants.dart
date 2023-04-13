// ignore_for_file: constant_identifier_names, non_constant_identifier_names, use_raw_strings
import 'package:path/path.dart' as path;
import 'package:turn_gen/src/src.dart';

class ConstHelper {
  /// Relative pubspec.yaml path
  static final String pubspecFilePath = path.join('pubspec.yaml');

  /// pubspec.yaml
  static const String nameConfigAssetsOutput = 'assets_output';
  static const String showComments = 'show_comments';

  ///
  static const String noExtension = 'noExtension';
  static const String replaceIfFirstLetterNumber = 'n';
  static const String emptyUnionName = '_';

  static const String configName = 'turn_gen';
  static const String packageOnlyLetter = 'turngen';
  // static const String version = '0.8.7';
}

class ConstConsole {
  static String introMessage() => '''

         --TURN_GEN--
  ******************************
             START 
  ******************************
  ''';

  static const BASE_TITLE = '//          --TURN_GEN--';

  static String GEN_MSG_START(EnumTypeRun type) => '''
$BASE_TITLE
//             (${type.value})
//  *************************************
//         GENERATED CODE
//  *************************************''';

  static String GEN_MSG_END(String path) => '''

Congratulations! You have successfully completed the task
File: $path
''';
}

class ConstArgOptionFlag {
  static const String fileOption = 'file';
  static const String typeOption = 'type';
  static const String helpFlag = 'help';
  static const String verboseFlag = 'verbose';
}

class MyRegexText {
  MyRegexText._();

  static const turnGen = '[tT][uU][rR][nN][gG][eE][nN]';
  static const commentSpaceEnd = r'\/\/\s*?[eE][nN][dD]';

  static const spaceCommentSpace = '^\\s*?//\\s*?';

  ///  space  /*
  static const firstGlobalComment = r'^[\s]*?\/\*';

  static const _spaceCommentSpaceCommentSpace = '^\\s*?//\\s*?//\\s*?';

  static RegExp commenEnd() {
    return RegExp(commentSpaceEnd, multiLine: true);
  }

  static RegExp comment() {
    return RegExp(spaceCommentSpace, multiLine: true);
  }

  static RegExp firstglobalComment() {
    return RegExp(firstGlobalComment);
  }

  static RegExp commenTurnGen() {
    return RegExp('$spaceCommentSpace$turnGen', multiLine: true);
  }

  static RegExp commentCommenTurnGen() {
    return RegExp('$_spaceCommentSpaceCommentSpace$turnGen', multiLine: true);
  }
}
