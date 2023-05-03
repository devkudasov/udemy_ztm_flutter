import 'package:flutter/material.dart';

class AvatarExample extends StatelessWidget {
  const AvatarExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100.0,
      width: 100.0,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/asset.png'),
      ),
    );
  }
}
