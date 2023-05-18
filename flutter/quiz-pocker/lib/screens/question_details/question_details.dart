import 'package:flutter/material.dart';
import 'package:quizpocker/models/question.dart';

class QuestionDetails extends StatelessWidget {
  static const String id = '/details';

  const QuestionDetails({super.key});

  void onPressHint(BuildContext context, Question question) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          question.showNextHint(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Question question =
        ModalRoute.of(context)!.settings.arguments as Question;
    return Scaffold(
      appBar: AppBar(
        title: Text(question.category),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(question.text),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                    child: const Text('Answer 1'),
                    onPressed: () {
                      onPressHint(context, question);
                    },
                  ),
                  TextButton(
                    child: const Text('Answer 2'),
                    onPressed: () {
                      onPressHint(context, question);
                    },
                  ),
                  TextButton(
                    child: const Text('Answer 3'),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'You are right. Awesome!!!',
                          ),
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: const Text('Answer 4'),
                    onPressed: () {
                      onPressHint(context, question);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
