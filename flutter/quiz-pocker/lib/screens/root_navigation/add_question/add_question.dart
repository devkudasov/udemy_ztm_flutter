import 'package:flutter/material.dart';
import 'package:quizpocker/data/questions.dart';
import 'package:quizpocker/managers/question_manager.dart';
import 'package:quizpocker/models/question.dart';

final QuestionManager _questionManager = QuestionManager();

class AddQuestionScreen extends StatefulWidget {
  const AddQuestionScreen({super.key});

  @override
  State<AddQuestionScreen> createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  QuestionCategory? _category;
  String _question = '';

  @override
  Widget build(BuildContext context) {
    final inputWidth = MediaQuery.of(context).size.width / 2;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Select category'),
                  DropdownButton(
                    value: _category?.title,
                    items: _questionManager
                        .getQuestionCategories()
                        .map(
                          (item) => DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          ),
                        )
                        .toList(),
                    onChanged: (value) => setState(() {
                      _category = QuestionCategory.values
                          .firstWhere((element) => element.title == value);
                    }),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Type your question'),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      constraints: BoxConstraints(
                        maxWidth: inputWidth,
                        maxHeight: 40.0,
                      ),
                    ),
                    onChanged: (text) => setState(() {
                      _question = text;
                    }),
                  ),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () => {
              _questionManager.addQuestion(
                Question(
                    category: _category,
                    text: _question,
                    hints: mockQuestionHints,
                    solution: mockSolution),
              )
            },
            child: Text(
              'SAVE',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.green[700],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
