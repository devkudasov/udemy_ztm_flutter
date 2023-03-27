import 'dart:io';

void main() {
  print("What's your name?");

  String name = stdin.readLineSync() ?? '';
  if (name == '') name = 'Anonymous';

  print('Glad to see you there $name');
}
