import 'package:flutter/material.dart';

class StarWidget extends StatefulWidget{
  final String title;
  final String description;
  const StarWidget({
    super.key,
    required this.title,
    required this.description
  });

  @override
  State<StarWidget> createState() => _StarWidgetState();
}

class _StarWidgetState extends State<StarWidget> {
  bool estaFavoritado = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Icon(
            Icons.star,
            size: 48,
            color: estaFavoritado ? Colors.yellow : Colors.white,
          ),
          onTap: (){
            setState(() {
              estaFavoritado = !estaFavoritado;
            });
          },
        ),
        const SizedBox(height: 8),
        Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white
          ),
        ),
        Text(
          widget.description,
          style: const TextStyle(
            color: Colors.white
          ),
        )
      ],
    );
  }
}