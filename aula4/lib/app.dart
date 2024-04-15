import 'package:aula4/home_page.dart';
import 'package:aula4/second_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Terceira Aplicação",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => HomePage(),
        "/second": (context) => Second_Page()
      },
    );
  }
}