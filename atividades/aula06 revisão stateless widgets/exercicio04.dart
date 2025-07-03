import 'package:flutter/material.dart';

class Exercicio04 extends StatelessWidget {
  const Exercicio04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 4"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            title: Text("Item da Lista 1"),
            leading: Icon(Icons.star),
            subtitle: Text("Descrição do item 1"),
          ),
          Divider(height: 5),
          ListTile(
            title: Text("Item da Lista 2"),
            leading: Icon(Icons.favorite),
            subtitle: Text("Descrição do item 2"),
          ),
          Divider(height: 5),
          ListTile(
            title: Text("Item da Lista 3"),
            leading: Icon(Icons.check_circle),
            subtitle: Text("Descrição do item 3"),
          ),
          Divider(height: 5),
          ListTile(
            title: Text("Item da Lista 4"),
            leading: Icon(Icons.info),
            subtitle: Text("Descrição do item 4"),
          ),
        ],
      ),
    );
  }
}
