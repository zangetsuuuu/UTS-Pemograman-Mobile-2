import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Row'),
        backgroundColor: Colors.amber,
      ),
      body: const Row(
        children: [
          Text('Item 1'),
          Text('Item 2'),
          Text('Item 3'),
        ],
      ),
    );
  }
}