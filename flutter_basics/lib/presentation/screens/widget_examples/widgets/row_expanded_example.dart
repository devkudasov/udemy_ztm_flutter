import 'package:flutter/material.dart';

class RowExpandedExample extends StatelessWidget {
  const RowExpandedExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Flexible(
          child: Text(
            'I\'m the best flutter developer ; But this text doesn\'t feet whole screen width ;))',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          height: 20.0,
          width: 20.0,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 8.0,
        ),
        Container(
          height: 20.0,
          width: 20.0,
          color: Colors.green,
        ),
        const SizedBox(
          width: 8.0,
        ),
      ],
    );
  }
}
