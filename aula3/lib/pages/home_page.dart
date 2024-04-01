import 'package:aula3/pages/page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 24,
          ),
          Icon(Icons.shopping_cart)
        ],
        centerTitle: true,
        title: const Text(
          "Flutter",
          style: TextStyle(
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black,
      ),
      body: const PageBody(),
      backgroundColor: Colors.black,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
        ),
        child: const Icon(
          Icons.home,
          size: 48,
        ),
      )
    );
  }
}