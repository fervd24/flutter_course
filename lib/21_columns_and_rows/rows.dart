import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('1'),
        Text('2'),
        Text('3'),
      ],
    );
  }
}