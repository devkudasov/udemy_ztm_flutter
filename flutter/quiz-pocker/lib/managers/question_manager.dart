import 'package:quizpocker/data/questions.dart';
import 'package:quizpocker/models/question.dart';

class QuestionManager {
  Question getQuestion() {
    return questions.first;
  }

  List<Question> getQuestions() => questions;

  void addQuestion() => questions.add(
        Question(
            category: QuestionCategory.business,
            text: 'This is new question there'),
      );
}
