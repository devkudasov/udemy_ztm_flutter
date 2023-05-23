import 'package:flutter/material.dart';

class ScreenUtils {
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 768;
}
