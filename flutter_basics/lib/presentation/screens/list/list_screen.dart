import 'package:basics/presentation/screens/list/widgets/list_item.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> example = [
      'first',
      'second',
      'third',
      'fourth',
      'fifth',
      'sixth'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          itemCount: example.length,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10.0,
            );
          },
          itemBuilder: ((context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListItem(
                index: index,
                title: example[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}
