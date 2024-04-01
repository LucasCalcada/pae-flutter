import 'package:aula3/widgets/star_widget.dart';
import 'package:flutter/material.dart';

class PageBody extends StatelessWidget{
  const PageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Aprenda Flutter no seu tempo",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                  color: Colors.white,
              ),
            ),
            Text(
              "Bora aprender flutter! Cursos por apenas R\$22.90, Qualidade Garantida.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white
              ),
            ),
            Text(
              "Digite o seu texto",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StarWidget(
                  title: "+45.000 alunos",
                  description: "Placeholder text" 
                ),
                StarWidget(
                  title: "+45.000 alunos",
                  description: "Placeholder text" 
                ),
                StarWidget(
                  title: "+45.000 alunos",
                  description: "Placeholder text" 
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}