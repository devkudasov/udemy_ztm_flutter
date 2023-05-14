import 'package:flutter/material.dart';
import 'package:quizpocker/data/questions.dart';
import 'package:quizpocker/managers/question_manager.dart';
import 'package:quizpocker/screens/question_details/question_details.dart';
import 'package:quizpocker/screens/question_list/question_list.dart';

final QuestionManager _questionManager = QuestionManager();

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Quiz App'),
        ),
      ),
      body: QuestionListScreen(questionManager: _questionManager),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionDetails(
                question: _questionManager.getQuestion(),
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
