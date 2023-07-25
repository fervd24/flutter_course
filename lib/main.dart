import 'package:flutter/material.dart';
import 'package:flutter_topics/23_ListView_listTile_listViewBuilder/list_view.dart';
import 'package:flutter_topics/23_ListView_listTile_listViewBuilder/list_view_builder.dart';
import 'package:flutter_topics/21_stateful_widget/counter_screen.dart';
import 'package:flutter_topics/25_Future_async_await/future_screen.dart';
import 'package:flutter_topics/26_http_cat_facts/cat_fact_screen.dart';

void main() => runApp(const MyApp());

//TODO: PROYECTO FINAL: 
/*
  - Una app con login(2 textfields email-contrasena), 
  - boton consume endpoint y hace un post
  - Todos los endpoints mockeados
  - Sin guardar token
  - Validacion email password
  - Usar provider como manejador de estado
  - Navega segunda pantalla con 2 botones(escanear qr, informacion, num de serie, logout)
    
    Botones llevan
  - 1. Escanner abre paquete qr scanner (mockear llamadas con Future delay y regrese json mockeado)
  - 2. Navega pantalla nueva sera http.get que trae marca, modelo y serie e imprimir en pantalla Textfield y boton de regresar
  - 3. Navega pantalla con textfield usuario ingresa el id y boton que mande el id mediante un post a la llamada
  - 4. manda otro endpoint delete y navega al login
*/
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