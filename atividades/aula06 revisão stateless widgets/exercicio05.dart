import 'package:flutter/material.dart';

class Exercicio05 extends StatelessWidget {
  const Exercicio05({super.key});

  @override
  Widget build(BuildContext context) {
    double larguraListTile = MediaQuery.of(context).size.width * 0.3;

    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 5"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: larguraListTile,
              child: ListTile(
                title: Text("Item da Lista 1"),
                leading: Icon(Icons.star),
                subtitle: Text("Descrição do item 1"),
              ),
            ),
            SizedBox(
              width: larguraListTile,
              child: ListTile(
                title: Text("Item da Lista 2"),
                leading: Icon(Icons.favorite),
                subtitle: Text("Descrição do item 2"),
              ),
            ),
            SizedBox(
              width: larguraListTile,
              child: ListTile(
                title: Text("Item da Lista 3"),
                leading: Icon(Icons.check_circle),
                subtitle: Text("Descrição do item 3"),
              ),
            ),
            SizedBox(
              width: larguraListTile,
              child: ListTile(
                title: Text("Item da Lista 4"),
                leading: Icon(Icons.info),
                subtitle: Text("Descrição do item 4"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
