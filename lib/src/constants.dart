// ignore_for_file: constant_identifier_names, non_constant_identifier_names
import 'package:path/path.dart' as path;
import 'package:turn_gen/src/src.dart';

class ConstHelper {
  /// Relative pubspec.yaml path
  static final String pubspecFilePath = path.join('pubspec.yaml');

  /// pubspec.yaml
  static const String namePackage = 'turn_gen';
  static const String nameConfigAssetsOutput = 'assets_output';
  static const String showMethodComments = 'show_method_comments';

  ///
  static const String noExtension = 'noExtension';
  static const String replaceIfFirstLetterNumber = 'n';

  static const String configName = 'turn_gen';
  static const String version = '0.6.6';
}

class ConstConsole {
  static String introMessage() => '''

         --TURN_GEN--
            v${ConstHelper.version}
  ******************************
             START 
  ******************************
  ''';

  static String GEN_MSG_START(TypeRun type) => '''
//          --TURN_GEN--
//           v${ConstHelper.version} (${type.value})
//  *************************************
//         GENERATED CODE 
//  *************************************
  ''';

  static const String GEN_MSG_END = '''

           --TURN_GEN--
  ******************************
         ✓ Successfully 
  ******************************
  ''';
}

class ConstArgOptionFlag {
  static const String fileOption = 'file';
  static const String typeOption = 'type';
  static const String helpFlag = 'help';
  static const String verboseFlag = 'verbose';
}
