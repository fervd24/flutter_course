import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  MyListViewBuilder({super.key});

  final List<String> elementos = ['Elemento A', 'Elemento B', 'Elemento C'];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: elementos.length,
      itemBuilder: (context, i) => ListTile(
        title: Text(elementos[i]),
        trailing: const Icon(Icons.arrow_forward_ios_outlined),
      )
    );
  }
}