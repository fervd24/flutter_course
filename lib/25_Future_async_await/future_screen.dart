import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  bool isLoading = false;
  String content = "Antes de llamar a la API";

  Future<void> loadData() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      isLoading = false;
      content = 'Respuesta de la API';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delayed Content Screen'),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(content), 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: loadData,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}