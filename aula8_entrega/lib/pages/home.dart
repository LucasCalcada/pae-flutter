import 'package:aula8_entrega/pages/pokemon_info.dart';
import 'package:aula8_entrega/pokemon_data.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  TextEditingController inputField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          "Home Page",
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
            TextField(
              controller: inputField,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(
                    color: Colors.amber
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(
                    color: Colors.amber
                  )
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(
                    color: Colors.amber
                  )
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async{
                PokemonData data = PokemonData(inputField.text);
                await data.fetchData();
                if(context.mounted){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => InfoPage(data: data,))
                  );
                }
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              child: const Text(
                "Pesquisar",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}