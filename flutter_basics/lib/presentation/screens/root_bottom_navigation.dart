import 'package:basics/presentation/screens/counter/counter_screen.dart';
import 'package:basics/presentation/screens/list/list_screen.dart';
import 'package:basics/presentation/screens/widget_examples/widget_examples_screen.dart';
import 'package:flutter/material.dart';

class RootBottonNavigation extends StatefulWidget {
  const RootBottonNavigation({super.key});
  static const String id = '/root';

  @override
  State<RootBottonNavigation> createState() => _RootBottonNavigation();
}

class _RootBottonNavigation extends State<RootBottonNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          WidgetExamplesScreen(),
          CounterScreen(),
          ListScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Examples',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Counter App',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'list',
          ),
        ],
      ),
    );
  }
}
