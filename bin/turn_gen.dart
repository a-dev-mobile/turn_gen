import 'package:turn_gen/main.dart' as turn_gen;
import 'package:turn_gen/src/src.dart';

void main(List<String> arguments) {
  // ignore: avoid_print
  print(ConstConsole.introMessage(packageVersion));
  turn_gen.runFromArguments(arguments);
}
