import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;

  const CustomButton({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        width: 50.0,
        height: 50.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.yellow,
              Colors.green,
            ],
          ),
        ),
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.red,
          customBorder: const CircleBorder(),
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
