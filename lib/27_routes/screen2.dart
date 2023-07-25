import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
   
  const SecondScreen({super.key});
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Screen 2'),
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Text('SecondScreen', style: TextStyle(fontSize: 30),),
             const SizedBox(height: 30,),
             TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              onPressed: () => Navigator.of(context).pushNamed('/screen1'), 
              child: const Text(
                'Screen 1', 
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