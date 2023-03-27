void main() {
  bool boolOutput = false;
  print(boolOutput);

  int intOutput = -1;
  print(intOutput);

  double doubleOutput = 1.5;
  print(doubleOutput);

  String stringOutput = 'stringOutput $boolOutput $intOutput $doubleOutput';
  print(stringOutput);

  dynamic dynamicOutput = 'dynamicOutput';
  print('dynamicOutput: $dynamicOutput');
  dynamicOutput = 7;
  print('dynamicOutput: $dynamicOutput');

  // keywords
  late int lateIntOutput;
  lateIntOutput = 0;
  print(lateIntOutput);

  final int finalIntOutput;
  finalIntOutput = 1;
  print(finalIntOutput);

  const double constDoubleOutput = -1.5;
  print(constDoubleOutput);

  var varOutput;
  varOutput = 'varOutput';
  print('varOutput: $varOutput');
}
