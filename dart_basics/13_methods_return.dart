void main() {
  print('start');
  int number1 = 4;
  int number2 = 5;
  int result1 = add(num1: number1, num2: number2);
  int result2 = add(num1: result1, num2: number2);

  print('Result off $number1 + $number2 is $result1');
  print('Result off $result1 + $number2 is $result2');
  print('end');
}

int add({required int num1, required int num2}) {
  return num1 + num2;
}
