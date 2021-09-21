import 'package:flutter/material.dart';
import 'base/base_stateless.dart';
import 'services/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: NavigationService.instance.navigatorKey,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends BaseStateless {
  FirstPage({Key? key}) : super(key: key);

  @override
  Widget body() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: const Center(
        child: Text('First Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nav.push(SecondPage());
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class SecondPage extends BaseStateless {
  SecondPage({Key? key}) : super(key: key);

  @override
  Widget body() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Center(
        child: Text('Second Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nav.push(FirstPage());
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
