import 'package:aula3/pages/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Segunda Aplicação",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}