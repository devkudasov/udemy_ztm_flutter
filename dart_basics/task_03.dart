import 'dart:io';
import 'dart:math';

int secretNumber = Random().nextInt(100) + 1;

void main() {
  bool isUserGuess = false;

  print('Can you guess what number is?');

  int attemptAmount = 7;
  for (int i = 0; i < attemptAmount; i++) {
    print('Attempt ${i + 1}...');
    int userInput = getUserNumber();

    isUserGuess = isNumberCorrect(userInput);
    if (isUserGuess) {
      break;
    } else {
      print(getHelp(userInput));
    }
  }

  if (isUserGuess) {
    print('You guess the number. Magic everywhere ;)');
  } else {
    print('Sorry but you lose. Try again and find magic ;)');
  }
}

int getUserNumber() {
  int? number = null;
  // Waiting while user entered integer
  while (number == null) {
    try {
      number = int.parse(stdin.readLineSync() ?? '');
    } catch (e) {
      print('Entered number isn\'t an integer');
      number = null;
    }
  }

  return number;
}

bool isNumberCorrect(int number) => number == secretNumber;

String getHelp(int number) {
  if (number > secretNumber) {
    return 'Secret number less then yours';
  }

  return 'Secret number greater then yours';
}
