import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  MyListView({super.key});

  final List<String> elementos = ['Elemento A', 'Elemento B', 'Elemento C'];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        //Primera explicacion
        const Text('Elemento A'),
        const Text('Elemento B'),
        const Text('Elemento C'),
        //Segunda explicacion
        const ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text('Elemento A'),
        ),
        //Tercera explicacion
        ...elementos.map(
          (element) => ListTile(
            title: Text(element),
          )
        ).toList()
      ],
    );
  }
}