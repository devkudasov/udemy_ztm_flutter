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
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('clicked'),
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const AppBarTitle(),
        ),
        body: const ScaffoldBody(),
      ),
    );
  }
}

class ScaffoldBody extends StatelessWidget {
  const ScaffoldBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200.0,
        width: 200.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Flutter basics'),
    );
  }
}
