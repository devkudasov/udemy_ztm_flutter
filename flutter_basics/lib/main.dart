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
    return Container(
      color: Colors.pink,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
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
          ),
          Container(
            color: Colors.green,
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'First column child',
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue,
            ),
            child: const Text(
              'Hello World',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 100.0,
                width: 100.0,
                child: Image.asset(
                  'assets/asset.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                top: 45,
                child: Text('Kudasov'),
              ),
            ],
          ),
          const SizedBox(
            height: 100.0,
            width: 100.0,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/asset.png'),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          const Text(
            'Last Column child',
          ),
        ],
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
