import 'package:flutter/material.dart';
import '../base/base_stateless.dart';

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
        heroTag: 'p1',
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'p2a',
            onPressed: () {
              nav.pop();
            },
            child: const Icon(Icons.arrow_back),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            heroTag: 'p2b',
            onPressed: () {
              nav.push(ThirdPage());
            },
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends BaseStateless {
  ThirdPage({Key? key}) : super(key: key);

  @override
  Widget body() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: const Center(
        child: Text('Third Page'),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'p3',
        onPressed: () {
          nav.pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
