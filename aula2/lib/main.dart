import 'package:flutter/material.dart';

void main() {
    runApp(const App(
        key: Key("Key do app"),
        titulo: "Meu Primeiro App",
    ));
}

class App extends StatelessWidget {
    // Named Parameters
    final String titulo;

    const App({super.key, required this.titulo});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(title: titulo, home: HomePage());
    }
}

class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            //backgroundColor: Colors.black,
            appBar: AppBar(
                title: const Text("Minha Appbar"),
                leading: const Icon(Icons.home),
                backgroundColor: const Color.fromARGB(255, 29, 29, 29),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Text(
                            "Texto 1", 
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.red,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        const Padding(
                            padding: EdgeInsets.all(100.0),
                            child: Text("Texto 2"),
                        ),
                        ElevatedButton(
                            onPressed: () {
                                print("Hello world");
                            },
                            child: const Text("Botão 1"))
                    ],
                ),
            ),
        );
    }
}
