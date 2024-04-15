import 'package:aula4_entrega/pages/homepage.dart';
import 'package:aula4_entrega/pages/listpage.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => HomePage(),
        "/listPage": (context) => ListPage()
      },
    );
  }
}