import 'package:flutter/material.dart';

class ExercicioCinco extends StatelessWidget {
  const ExercicioCinco({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: Icon(Icons.menu, color: Theme.of(context).colorScheme.surface,),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Olá, esse é o exercício 5!", style: TextStyle(fontSize: 50, color: Theme.of(context).colorScheme.surface),),
                Icon(Icons.woman, size: 50, color: Theme.of(context).colorScheme.surface,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recomendados", style: TextStyle(fontSize: 30),),
                TextButton(onPressed: null, style: ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(Theme.of(context).colorScheme.inversePrimary)), child: Text("Mais"))
              ],
            ),
          )
        ],
      ),
    );
  }
}