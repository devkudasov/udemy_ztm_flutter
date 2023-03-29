void main() {
  List<int> numberList = [3, 4, 5, 6, 7, 5];
  List<int> secondList = [];

  numberList.forEach((number) {
    if (number % 2 == 0) {
      secondList.add(number);
    }
  });

  print('New list is $secondList');
}
