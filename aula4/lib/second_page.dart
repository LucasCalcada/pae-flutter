import 'package:flutter/material.dart';

class Second_Page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SecondPageState();
}

class _SecondPageState extends State<Second_Page>{
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(contador.toString()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  contador += 1;
                });
                //print(contador);
              },
              child: const Text("Botão")
            )
          ]
        ),
      ),
    );
  }
}