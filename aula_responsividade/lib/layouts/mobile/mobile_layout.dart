import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsividade/widgets/star.dart';
import 'package:responsividade/widgets/text_input.dart';

class MobileLayout extends StatelessWidget{
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          "Flutter",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 0
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                child: const Image(
                  image: AssetImage("HoldingPhone.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0
                ),
                child: Column(
                  children: [
                    AutoSizeText(
                      "Aprenda Flutter no seu tempo",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40
                      ),
                    ),
                    SizedBox(height: 8),
                    AutoSizeText(
                      "Bora aprender Flutter! Cursos por apenas R\$ 22,90. Qualidade Garantida!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextInput(),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StarVertical(
                          upperText: "+45.000 Alunos",
                          lowerText: "Didática garantida!",
                        ),
                        StarVertical(
                          upperText: "+45.000 Alunos",
                          lowerText: "Didática garantida!",
                        ),
                        StarVertical(
                          upperText: "+45.000 Alunos",
                          lowerText: "Didática garantida!",
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}