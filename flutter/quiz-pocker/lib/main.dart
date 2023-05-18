import 'package:flutter/material.dart';
import 'package:quizpocker/screens/question_details/question_details.dart';
import 'package:quizpocker/screens/question_list/question_list.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: QuestionListScreen.id,
      routes: {
        QuestionListScreen.id: (context) => const QuestionListScreen(),
        QuestionDetails.id: (BuildContext context) => const QuestionDetails(),
      },
    );
  }
}
