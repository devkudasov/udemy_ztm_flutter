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
      child: SizedBox(
        width: 300.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Image.asset(_question.image),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Flexible(
                child: Text(
                  _question.text,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
