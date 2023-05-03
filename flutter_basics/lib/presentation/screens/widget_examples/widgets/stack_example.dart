import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 100.0,
          width: 100.0,
          child: Image.asset(
            'assets/asset.png',
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          top: 45,
          child: Text('Kudasov'),
        ),
      ],
    );
  }
}
