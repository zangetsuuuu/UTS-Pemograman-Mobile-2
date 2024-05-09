import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Column'),
        backgroundColor: Colors.amber,
      ),
      body: const Column(
        children: [
          Text('Item 1'),
          Text('Item 2'),
          Text('Item 3'),
        ],
      ),
    );
  }
}
