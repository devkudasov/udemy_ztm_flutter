import 'package:flutter/material.dart';

class ButtonsExample extends StatelessWidget {
  const ButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () => print('Text button pressed'),
          onLongPress: () => print('Text button long pressed'),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Text Button',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () => print('Icon button pressed'),
          icon: const Icon(Icons.play_arrow),
        ),
        Switch(value: true, onChanged: (value) => print(value)),
      ],
    );
  }
}
