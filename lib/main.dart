import 'package:flutter/material.dart';
import 'package:flutter_topics/22_ListView_listTile_listViewBuilder/list_view.dart';
import 'package:flutter_topics/22_ListView_listTile_listViewBuilder/list_view_builder.dart';
import 'package:flutter_topics/24_stateful_widget/counter_screen.dart';
import 'package:flutter_topics/25_Future_async_await/future_screen.dart';
import 'package:flutter_topics/26_http_parse/cat_fact_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CatFactScreen()
      
    );
  }

  // 22.ListView, ListViewBuilder

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Material App',
  //     home: MyListBuilderScreen(),
  //     //home: MyListViewScreen()
      
  //   );
  // }

  // 23. Routes
  
  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Material App',
  //     initialRoute: '/screen1',
  //     onGenerateRoute: RouteGenerator.generateRoute,
  //     // routes: {
  //     //   '/screen1': (context) => const FirstScreen(),
  //     //   '/screen2': (context) => const SecondScreen()
  //     // },
  //   );
  // }

  // 24. Stateful widget
  
  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Material App',
  //     home: CounterScreen()
  //   );
  // }
}
  // 25. Future Async Await

  // @override
  // Widget build(BuildContext context) {
  //   return const  MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Material App',
  //     home: FutureScreen()
      
  //   );
  // }