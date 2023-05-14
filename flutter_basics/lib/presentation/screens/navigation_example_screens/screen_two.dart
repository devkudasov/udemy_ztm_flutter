import 'package:basics/presentation/screens/navigation_example_screens/screen_one.dart';
import 'package:flutter/material.dart';

class ScreenTwoScreen extends StatelessWidget {
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
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenOneScreen(),
              ),
            );
          },
          child: const Text('Go to Screen One'),
        ),
      ),
    );
  }
}
