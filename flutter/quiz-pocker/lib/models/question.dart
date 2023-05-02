class Question {
  late QuestionCategory _category;
  late String _text;

  Question({required category, required text}) {
    _category = category;
    _text = text;
  }

  // Getters
  String get text => _text;
  String get category => _category.title;
  String get image => _category.image;
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
