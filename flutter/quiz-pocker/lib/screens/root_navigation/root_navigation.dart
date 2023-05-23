import 'package:flutter/material.dart';
import 'package:quizpocker/screens/root_navigation/add_question/add_question.dart';
import 'package:quizpocker/screens/root_navigation/question_list/question_list.dart';

class RootNavigation extends StatefulWidget {
  static const String routeName = '/root';

  const RootNavigation({super.key, this.body});

  final Widget? body;

  @override
  State<RootNavigation> createState() => _RootNavigationState();
}

class _RootNavigationState extends State<RootNavigation> {
  int _currentIndex = 0;
  final screens = const [
    QuestionListScreen(),
    AddQuestionScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Quiz App'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
        ],
      ),
      body: screens[_currentIndex],
    );
  }
}
