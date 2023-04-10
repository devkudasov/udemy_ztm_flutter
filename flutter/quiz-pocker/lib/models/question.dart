class Question {
  late QuestionCategory _category;
  late String _text;

  Question({required category, required text}) {
    _category = category;
    _text = text;
  }

  // Getters
  String get text => _text;
  String get category => questionCategoryTitle[_category]!;
  String get image => questionCategoryImage[_category]!;
}

enum QuestionCategory {
  sport,
  business,
  movie,
  videoGame,
}

Map<QuestionCategory, String> questionCategoryImage = {
  QuestionCategory.sport: 'assets/categories/sport.png',
  QuestionCategory.business: 'assets/categories/business.png',
  QuestionCategory.movie: 'assets/categories/movie.png',
  QuestionCategory.videoGame: 'assets/categories/video_game.png',
};

Map<QuestionCategory, String> questionCategoryTitle = {
  QuestionCategory.sport: 'Sport',
  QuestionCategory.business: 'Business',
  QuestionCategory.movie: 'Movie',
  QuestionCategory.videoGame: 'Video Game',
};
