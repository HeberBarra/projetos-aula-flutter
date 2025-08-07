import 'package:flutter/material.dart';

class ExercicioUm extends StatelessWidget {
  const ExercicioUm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício Um", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: Center(
          child: Column(
            children: [
              Text("Bem vindo, usuário!", style: TextStyle(fontSize: 24), textAlign: TextAlign.center),
              Image.asset("images/DoctorWho.jpg", cacheHeight: 300, cacheWidth: 500,)
            ],
          ),
        ),
      ),
    );
  }
}
