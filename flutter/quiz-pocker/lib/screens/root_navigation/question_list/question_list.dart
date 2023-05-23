import 'package:flutter/material.dart';
import 'package:quizpocker/managers/question_manager.dart';
import 'package:quizpocker/screens/root_navigation/question_list/widgets/question_card.dart';

final QuestionManager _questionManager = QuestionManager();

class QuestionListScreen extends StatelessWidget {
  static const String routeName = '/list';

  const QuestionListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 500;
    final questionsList = _questionManager.getQuestions();

    return ListView.separated(
      itemBuilder: (context, index) =>
          QuestionCard(question: questionsList[index]),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: questionsList.length,
      scrollDirection: isSmallScreen ? Axis.vertical : Axis.horizontal,
    );
  }
}
