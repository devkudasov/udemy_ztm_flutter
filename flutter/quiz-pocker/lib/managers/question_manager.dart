import 'dart:ffi';

import 'package:quizpocker/data/questions.dart';
import 'package:quizpocker/models/question.dart';

class QuestionManager {
  Question getQuestion() {
    return questions.first;
  }

  List<Question> getQuestions() => questions;
}
