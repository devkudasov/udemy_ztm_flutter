import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.0,
      width: 2.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFFC9E9FC),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFc9E9FC).withOpacity(0.5),
            spreadRadius: 5.0,
            blurRadius: 7.0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
    );
  }
}
