import 'package:flutter/material.dart';

class Exercicio06 extends StatelessWidget {
  const Exercicio06({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 6"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.lightbulb_outline,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  size: 48,
                ),
                Text(
                  "Dica do Dia:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  "\"A persistência é o caminho do êxito\" - Charles Chaplin",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(onPressed: () => {}, child: Text("OK")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
