import 'package:flutter/material.dart';

class Exercicio03 extends StatelessWidget {
  const Exercicio03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 3"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => {}, child: Text("Botão 1")),
            OutlinedButton(onPressed: () => {}, child: Text("Botão 2")),
            TextButton(onPressed: () => {}, child: Text("Botão 3")),
          ],
        ),
      ),
    );
  }
}
