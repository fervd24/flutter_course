
import 'package:flutter/material.dart';
import 'package:flutter_topics/23_routes/screen1.dart';
import 'package:flutter_topics/23_routes/screen2.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch(settings.name) {
      case '/screen1':
        return MaterialPageRoute(builder: (context) => const FirstScreen());
      case '/screen2':
        return MaterialPageRoute(builder: (context) => const SecondScreen());
      default:
      return  _errorRoute();

    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Page not found!'),
      ),
    );
  });
}