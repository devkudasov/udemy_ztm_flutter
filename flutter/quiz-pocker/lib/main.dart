import 'package:flutter/material.dart';
import 'package:quizpocker/managers/question_manager.dart';
import 'package:quizpocker/widgets/scroll_widget.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final QuestionManager _questionManager = QuestionManager();

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Quiz App'),
        ),
      ),
      body: ScrollWidget(questionManager: _questionManager),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _questionManager.addQuestion();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
