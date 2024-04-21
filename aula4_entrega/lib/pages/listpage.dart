import 'package:aula4_entrega/widgets/button.dart';
import 'package:aula4_entrega/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListPage extends StatefulWidget{
  const ListPage({super.key});

  @override
  State<StatefulWidget> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage>{
  List<Widget> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: ListView(
                children: [...list],
              ),
            ),
            StyledButton(
              title: "Adicionar Item",
              onPress: (){
                setState(() {
                  String listSize = list.length.toString();
                  list.add(ListItem(title: "Item $listSize",));
                });
              }
            ),
            StyledButton(
              title: "Volta para a Home",
              onPress: (){
                  Navigator.pop(context);
              }
            )
          ],
        ),
      ),
    );
  }
}