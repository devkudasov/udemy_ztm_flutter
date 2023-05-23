import 'package:flutter/material.dart';
import 'package:quizpocker/screens/question_details/question_details.dart';
import 'package:quizpocker/screens/root_navigation/root_navigation.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: RootNavigation.routeName,
      routes: {
        RootNavigation.routeName: (context) => const RootNavigation(),
        QuestionDetails.id: (context) => const QuestionDetails(),
      },
    );
  }
}
