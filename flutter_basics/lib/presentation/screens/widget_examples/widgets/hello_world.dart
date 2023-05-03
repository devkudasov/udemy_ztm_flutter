import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
      ),
      child: const Text(
        'Hello World',
        style: TextStyle(
          color: Colors.red,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
