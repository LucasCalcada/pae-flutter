import 'package:aula4_entrega/widgets/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        leading: const Icon(
          Icons.menu, 
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Listagem e navegação",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
                textAlign: TextAlign.center,
            ),
            const Text("Uma aplicação para gerência de estado e navegação com flutter"),
            StyledButton(
              title: "Ir para a List Page",
              onPress: () {
                Navigator.pushNamed(
                  context, 
                  "/listPage"
                );
              },
            ),
          ]
        ),
      ),
    );
  }
}