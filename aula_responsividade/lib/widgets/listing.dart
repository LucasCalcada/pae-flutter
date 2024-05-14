import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Listing extends StatelessWidget{
  const Listing({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image(
          image: AssetImage("HoldingPhone.jpg"),
        ),
        AutoSizeText("Criação de Apps Android e iOS com Flutter - Crie 16 Apps"),
        AutoSizeText("R\$22,90")
      ],
    );
  }

}