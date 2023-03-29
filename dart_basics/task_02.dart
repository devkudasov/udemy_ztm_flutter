import 'dart:io';

void main() {
  int? number = null;
  // Waiting while user entered integer
  while (number == null) {
    print('Enter integer number pls...');
    try {
      number = int.parse(stdin.readLineSync() ?? '');
    } catch (e) {
      print('Entered number isn\'t an integer');
      number = null;
    }
  }

  // Calculate factorial
  int multiplyNumber = 2;
  int factorial = 1;
  while (multiplyNumber <= number) {
    factorial *= multiplyNumber++;
  }

  print('Factorial for $number equals $factorial');
}
