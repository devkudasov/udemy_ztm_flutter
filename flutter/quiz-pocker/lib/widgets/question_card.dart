import 'package:flutter/material.dart';
import 'package:quizpocker/models/question.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required Question question,
  }) : _question = question;

  final Question _question;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber[100],
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              _question.getCategory(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              _question.getText(),
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
