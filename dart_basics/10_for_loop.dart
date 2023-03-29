void main() {
  List<int> numberList = [3, 4, 5, 6, 7, 5];
  List<int> secondList = [];

  for (int i = 0; i < numberList.length; i++) {
    if (numberList[i] % 2 == 1) {
      secondList.add(numberList[i]);
    }
  }

  print('New list is $secondList');
}
