import 'package:flutter/material.dart';

class ExercicioQuatro extends StatelessWidget {
  const ExercicioQuatro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: Icon(Icons.menu, color: Theme.of(context).colorScheme.surface,),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Olá, esse é o exercício 4!", style: TextStyle(fontSize: 50, color: Theme.of(context).colorScheme.surface),),
            Icon(Icons.woman, size: 50, color: Theme.of(context).colorScheme.surface,)
          ],
        ),
      ),
    );
  }
}