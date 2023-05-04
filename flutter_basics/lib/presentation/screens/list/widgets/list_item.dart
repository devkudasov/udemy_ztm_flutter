import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key, required this.index, required this.title});

  final String title;
  final int index;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
      ),
      subtitle: Text('item number ${widget.index}'),
      leading: Checkbox(
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value ?? false;
          });
        },
      ),
    );
  }
}
