import 'package:flutter/material.dart';

class GestureCustomButton extends StatelessWidget {
  final Function() onTap;
  final String text;

  const GestureCustomButton(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50.0,
        width: 150.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Colors.orange,
              Colors.lightBlue,
            ],
          ),
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
