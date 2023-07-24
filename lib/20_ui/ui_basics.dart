import 'package:flutter/material.dart';

class UiScreen extends StatelessWidget {
   
  const UiScreen({super.key});
  
  @override
  //Explicaicon Build Context
  Widget build(BuildContext context) {
    //Explicacion Scaffold
    return Scaffold(
      //Explicacion AppBar
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: const Center(
         child: Text('UiScreen'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //Explicacion FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        }
      ),
      //Explicacion BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.call)
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt)
            ),
        ],
      ),
    );
  }
}