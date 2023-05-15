import 'package:flutter/material.dart';

class ScreenOneScreen extends StatelessWidget {
  static const String id = '/screenOne';

  const ScreenOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
