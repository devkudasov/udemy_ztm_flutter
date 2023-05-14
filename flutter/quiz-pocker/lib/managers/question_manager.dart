import 'dart:math';

import 'package:quizpocker/data/questions.dart';
import 'package:quizpocker/models/question.dart';

class QuestionManager {
  Question getQuestion() {
    return questions[Random().nextInt(questions.length)];
  }

  List<Question> getQuestions() => questions;
}
