import 'package:flutter/material.dart';
import 'package:quizpocker/managers/question_manager.dart';
import 'package:quizpocker/screens/question_details/question_details.dart';
import 'package:quizpocker/screens/question_list/widgets/question_card.dart';

final QuestionManager _questionManager = QuestionManager();

class QuestionListScreen extends StatelessWidget {
  static const String id = '/list';

  const QuestionListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 500;
    final questionsList = _questionManager.getQuestions();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Quiz App'),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>
            QuestionCard(question: questionsList[index]),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: questionsList.length,
        scrollDirection: isSmallScreen ? Axis.vertical : Axis.horizontal,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
