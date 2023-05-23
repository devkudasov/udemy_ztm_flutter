import 'dart:math';

import 'package:quizpocker/data/questions.dart';
import 'package:quizpocker/models/question.dart';

class QuestionManager {
  Question getQuestion() {
    return questions[Random().nextInt(questions.length)];
  }

  List<String> getQuestionCategories() => ([
        QuestionCategory.business.title,
        QuestionCategory.sport.title,
        QuestionCategory.movie.title,
        QuestionCategory.videoGame.title,
      ]);

  List<Question> getQuestions() => questions;

  void addQuestion(Question question) => questions.add(question);
}
