import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
   
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int _counter = 0;

  void increaseCounter() => setState(() => _counter++);
  void restartCounter() => setState(() => _counter = 0);
  void decreaseCounter() => setState(() => _counter--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen'),),
      body: Center(
         child: Text('Counter: $_counter'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                increaseCounter();
              });
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                restartCounter();
              });
            },
            child: const Text('Restart'),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                decreaseCounter();
              });
            },
            child: const Icon(Icons.remove),
          ),
          
        ],
      ),
    );
  }
}