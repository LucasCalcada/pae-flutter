import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text("Home Page"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: TextButton(
          child: const Text("Navegar até a segunda página"),
          onPressed: (){
            print("Botão de Navegação");
            Navigator.pushNamed(context, "/second");
          },
        ),
      ),
    );
  }
}