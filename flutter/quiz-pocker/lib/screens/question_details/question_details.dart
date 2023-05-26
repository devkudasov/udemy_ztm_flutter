import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizpocker/models/question.dart';

class QuestionDetails extends StatefulWidget {
  static const String id = '/details';

  const QuestionDetails({super.key});

  @override
  State<QuestionDetails> createState() => _QuestionDetailsState();
}

class _QuestionDetailsState extends State<QuestionDetails> {
  String text = '';
  bool isShowHint = false;

  void onPressHint(Question question) {
    setState(() {
      text = question.showNextHint();
      isShowHint = true;
    });

    Timer(
        const Duration(
          seconds: 4,
        ), () {
      setState(() => isShowHint = false);
    });
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
              padding: const EdgeInsets.all(16.0),
              child: AnimatedOpacity(
                opacity: isShowHint ? 1 : 0,
                duration: const Duration(seconds: 1),
                child: Text(text),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                    child: const Text('Answer 1'),
                    onPressed: () {
                      onPressHint(question);
                    },
                  ),
                  TextButton(
                    child: const Text('Answer 2'),
                    onPressed: () {
                      onPressHint(question);
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
                      onPressHint(question);
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
