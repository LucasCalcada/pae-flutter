import 'package:flutter/material.dart';

class TextInput extends StatelessWidget{
  const TextInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white
          )
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white
          )
        ),
        labelText: "Digite alguma busca aqui",
        labelStyle: TextStyle(
          color: Colors.white
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.white
        ),
      ),
    );
  }
}