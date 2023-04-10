class Question {
  late String _category;
  late String _text;

  Question({required category, required text}) {
    _category = category;
    _text = text;
  }

  // Getters
  String getText() => _text;
  String getCategory() => _category;
}
