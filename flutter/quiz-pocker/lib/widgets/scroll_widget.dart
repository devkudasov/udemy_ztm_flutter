import 'package:flutter/material.dart';
import 'package:quizpocker/managers/question_manager.dart';
import 'package:quizpocker/widgets/question_card.dart';

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({
    super.key,
    required QuestionManager questionManager,
  }) : _questionManager = questionManager;

  final QuestionManager _questionManager;

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 500;
    final questionsList = _questionManager
        .getQuestions()
        .map((question) => QuestionCard(question: question))
        .toList();

    return ListView(
      scrollDirection: isSmallScreen ? Axis.vertical : Axis.horizontal,
      children: questionsList,
    );
  }
}
