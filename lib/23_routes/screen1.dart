import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
   
  const FirstScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Screen 1'),
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Text('FirstScreen', style: TextStyle(fontSize: 30),),
             const SizedBox(height: 30,),
             TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)
                ),
              onPressed: () => Navigator.of(context).pushNamed('/screen2'), 
              child: const Text(
                'Screen 2', 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25),
                )
            )
           ],
         ),
      ),
    );
  }
}