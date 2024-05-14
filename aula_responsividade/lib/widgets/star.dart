import 'package:flutter/material.dart';

class StarVertical extends StatelessWidget{
  final String upperText;
  final String lowerText;


  const StarVertical({
    super.key,
    required this.upperText,
    required this.lowerText
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 48,
        ),
        Text(
          upperText,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          lowerText,
          style: const TextStyle(
            color: Colors.white
          ),
        )
      ],
    );
  }
}

class StarHorizontal extends StatelessWidget{
  final String upperText;
  final String lowerText;


  const StarHorizontal({
    super.key,
    required this.upperText,
    required this.lowerText
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 48,
        ),
        Column(
          children: [
            Text(
              upperText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              lowerText,
              style: const TextStyle(
                color: Colors.white
              ),
            )
          ],
        )
      ],
    );
  }
}