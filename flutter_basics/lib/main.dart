import 'package:basics/presentation/screens/navigation_example_screens/screen_one.dart';
import 'package:basics/presentation/screens/navigation_example_screens/screen_two.dart';
import 'package:basics/presentation/screens/root_bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.amber,
          ),
        ),
        initialRoute: RootBottonNavigation.id,
        routes: {
          RootBottonNavigation.id: (context) => const RootBottonNavigation(),
          ScreenOneScreen.id: (context) => const ScreenOneScreen(),
          ScreenTwoScreen.id: (context) => const ScreenTwoScreen(),
        });
  }
}
