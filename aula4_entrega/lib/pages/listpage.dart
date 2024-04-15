import 'package:aula4_entrega/widgets/button.dart';
import 'package:aula4_entrega/widgets/item_widget.dart';
import 'package:flutter/material.dart';

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
        title: const Text("List Page"),
        backgroundColor: Colors.redAccent,
        leading: const Icon(Icons.menu),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ...list,
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