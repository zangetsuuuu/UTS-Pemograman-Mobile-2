import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Flutter'),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}