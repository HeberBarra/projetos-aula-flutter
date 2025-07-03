import 'package:flutter/material.dart';

class Exercicio01 extends StatelessWidget {
  const Exercicio01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Exercício 01"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Bem-Vindo!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Esta é uma tela simples contendo apenas texto. Demonstra como exibir informações estáticas usando um Stateless Widget. Esta é uma tela simples contendo apenas texto. Demonstra como exibir informações estáticas usando um Stateless Widget.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
