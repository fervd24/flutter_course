import 'package:flutter/material.dart';
import 'package:flutter_topics/26_http_parse/cat_fact_response.dart';
import 'package:http/http.dart' as http;

class CatFactScreen extends StatefulWidget {
  
  const CatFactScreen({super.key});

  @override
  State<CatFactScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<CatFactScreen> {
  bool isLoading = false;
  String content = "Antes de llamar a la API";

  Future<void> loadData() async {
    setState(() {
      isLoading = true;
    });

    //await Future.delayed(const Duration(seconds: 2));
    var url = Uri.https('catfact.ninja', '/fact' );
    final response = await http.get(url);
    final catFactsResponse = CatFactsResponse.fromJson(response.body);
    
    setState(() {
      isLoading = false;
      content = catFactsResponse.fact;
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
            : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Cat Fact:', style: TextStyle(fontSize: 30),),
                const SizedBox(height: 30,),
                Text(content),
              ],
            ), 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: loadData,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}