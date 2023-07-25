import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('1'),
        Text('2'),
        Text('3'),
      ],
    );
  }
}