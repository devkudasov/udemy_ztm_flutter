import 'package:basics/presentation/screens/navigation_example_screens/screen_one.dart';
import 'package:flutter/material.dart';

class ScreenTwoScreen extends StatelessWidget {
  static const String id = '/screenTwo';

  const ScreenTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, ScreenOneScreen.id);
          },
          child: const Text('Go to Screen One'),
        ),
      ),
    );
  }
}
