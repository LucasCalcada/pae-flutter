import 'package:aula8_entrega/pokemon_data.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget{
  final PokemonData data;

  const InfoPage({
    super.key,
    required this.data
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Pokemon Page",
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage(data.spriteUrl),
              width: 300,
              height: 300,
              fit: BoxFit.fill,
              filterQuality: FilterQuality.none,
            ),
            Text(
              "Name: ${data.name}",
              style: const TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 24.0
              ),
            ),
            Text(
              "Id: ${data.id}",
              style: const TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 24.0
              ),
            ),
            Text(
              "Type: ${data.types}",
              style: const TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 24.0
              ),
            )
          ],
        )
      ),
    );
  }

}