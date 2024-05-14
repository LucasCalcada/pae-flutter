import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Listing extends StatelessWidget{
  const Listing({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image(
                image: AssetImage("HoldingPhone.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AutoSizeText(
            "Criação de Apps Android e iOS com Flutter - Crie 16 Apps",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0
            ),
          ),
          AutoSizeText(
            "R\$22,90",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0
            ),
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }

}