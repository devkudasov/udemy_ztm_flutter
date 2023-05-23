class Question {
  late QuestionCategory _category;
  late String _text;
  late List<String> _hints;
  late String _solution;

  int _shownHintIndex = -1;

  Question({required category, required text, hints, required solution}) {
    _category = category;
    _text = text;
    _hints = hints;
    _solution = solution;
  }

  String showNextHint() {
    if (hasHint) {
      return nextHint;
    }

    return _solution;
  }

  // Getters
  String get text => _text;
  String get category => _category.title;
  String get image => _category.image;
  bool get hasHint {
    return _shownHintIndex + 1 < _hints.length;
  }

  String get nextHint => _hints[++_shownHintIndex];
}

enum QuestionCategory {
  sport(
    'Sport',
    'assets/categories/sport.png',
  ),
  business(
    'Business',
    'assets/categories/business.png',
  ),
  movie(
    'Movie',
    'assets/categories/movie.png',
  ),
  videoGame(
    'Video Game',
    'assets/categories/video_game.png',
  );

  final String _title;
  final String _image;
  const QuestionCategory(this._title, this._image);

  String get title => _title;
  String get image => _image;
}
