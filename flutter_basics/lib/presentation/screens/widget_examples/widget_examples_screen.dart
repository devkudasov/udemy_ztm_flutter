import 'package:basics/presentation/screens/widget_examples/widgets/app_bar_title.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/avatar_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/buttons_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/first_column_child.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/hello_world.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/layout_builder_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/media_query_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/person.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/row_expanded_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/divider_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/stack_example.dart';
import 'package:basics/presentation/widgets/custom_button.dart';
import 'package:basics/presentation/widgets/gesture_custom_button.dart';
import 'package:flutter/material.dart';

class WidgetExamplesScreen extends StatelessWidget {
  const WidgetExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('clicked'),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const AppBarTitle(),
      ),
      body: const ScaffoldBody(),
    );
  }
}

class ScaffoldBody extends StatelessWidget {
  const ScaffoldBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const DividerExample(),
            const MediaQueryExample(),
            const DividerExample(),
            const RowExpandedExample(),
            const DividerExample(),
            const FirstColumnChild(),
            const DividerExample(),
            const HelloWorld(),
            const DividerExample(),
            const StackExample(),
            const DividerExample(),
            const Person(
              pictureUrl: 'assets/asset.png',
              name: 'Dmitry Kudasov',
              age: '35',
              country: 'Belarus',
              job: 'Dev Lead',
            ),
            const DividerExample(),
            const LayoutBuilderExample(),
            const DividerExample(),
            const ButtonsExample(),
            const DividerExample(),
            CustomButton(
              onTap: () => print('Custom Button tapped'),
              icon: Icons.home,
            ),
            const DividerExample(),
            CustomButton(
              onTap: () => print('Custom Button tapped'),
              icon: Icons.play_arrow,
            ),
            const DividerExample(),
            GestureCustomButton(
              onTap: () => print('Gesture Button tapped'),
              text: 'Gesture Button',
            ),
            const DividerExample(),
          ],
        ),
      ),
    );
  }
}
