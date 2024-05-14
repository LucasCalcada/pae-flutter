import 'package:flutter/material.dart';
import 'package:responsividade/widgets/star.dart';
import 'package:responsividade/widgets/text_input.dart';

class DesktopLayout extends StatelessWidget{
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Flutter",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            //TextField(
            //  decoration: InputDecoration(
            //    icon: Icon(Icons.search),
            //    border: OutlineInputBorder(),
            //    fillColor: Colors.white
            //  ),
            //)
          ],
        ),
        backgroundColor: Colors.black,

        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Aprender")
              ),
              TextButton(
                onPressed: () {},
                child: const Text("flutter")
              ),
              const Icon(
                Icons.shopping_cart,
                color: Colors.white
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Fazer Login")
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Cadastre-se")
              ),
            ],
          )
        ]
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  child: const Image(
                    image: AssetImage("HoldingPhone.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned( 
                  left: 24,
                  top: 48,
                  child: SizedBox(
                    width: 400,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8.0)
                        )
                      ),
                      padding: const EdgeInsets.all(16.0),
                      //color: Colors.black,
                      child: const Column(
                        children: [
                          Text(
                            "Aprenda flutter no seu tempo",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Bora aprender Flutter! Cursos por apenas 22,90. Qualidade garantida",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),
                          ),
                          SizedBox(height: 8),
                          TextInput()
                        ],
                      ),
                    ),
                  ),
                )
              ]
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                StarHorizontal(
                  upperText: "+45.000 alunos",
                  lowerText: "Didática garantida"
                ),
                StarHorizontal(
                  upperText: "+45.000 alunos",
                  lowerText: "Didática garantida"
                ),
                StarHorizontal(
                  upperText: "+45.000 alunos",
                  lowerText: "Didática garantida"                ),
              ],
            )
          ]
        ),
      ),
    );
  }
}