import 'package:animations/presentation/screens/widgets/sun_shine.dart';
import 'package:flutter/material.dart';

class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return SunShine(
      radius: 160.0,
      child: SunShine(
        radius: 120.0,
        child: SunShine(
          radius: 80.0,
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xDDFC554F),
                  Color(0xDDFFF79E),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
