import 'package:basics/presentation/screens/widget_examples/widgets/app_bar_title.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/avatar_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/buttons_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/first_column_child.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/hello_world.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/layout_builder_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/media_query_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/row_expanded_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/divider_example.dart';
import 'package:basics/presentation/screens/widget_examples/widgets/stack_example.dart';
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
      color: Colors.white,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            DividerExample(),
            MediaQueryExample(),
            DividerExample(),
            RowExpandedExample(),
            DividerExample(),
            FirstColumnChild(),
            DividerExample(),
            HelloWorld(),
            DividerExample(),
            StackExample(),
            DividerExample(),
            AvatarExample(),
            DividerExample(),
            LayoutBuilderExample(),
            DividerExample(),
            ButtonsExample(),
            DividerExample(),
          ],
        ),
      ),
    );
  }
}
