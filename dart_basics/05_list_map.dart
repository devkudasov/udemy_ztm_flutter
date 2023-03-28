void main() {
  List<dynamic> list = [1, 2, 3, 4, 5];
  print(list);
  print(list[1]);
  print(list[0]);

  print(list.length);
  print(list.isEmpty);
  print(list.first);
  print(list.last);

  print(list);
  list.add("added value");
  print(list);

  Map<String, int> map = {'one': 1, 'two': 2, 'three': 3};
  print(map);
  print(map['one']);
  print(map.length);
  print(map.keys);
  print(map.values);
}
