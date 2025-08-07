import 'package:flutter/material.dart';

class ExercicioSete extends StatelessWidget {
  const ExercicioSete({super.key});

  @override
  Widget build(BuildContext context) {
    double larguraMascote = MediaQuery.of(context).size.width * 0.4;

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
                Text("Olá, esse é o exercício 7!", style: TextStyle(fontSize: 50, color: Theme.of(context).colorScheme.surface),),
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
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: larguraMascote * 1.1,
                    height: 0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child: Image.asset("images/K9.webp", cacheWidth: larguraMascote.toInt()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: larguraMascote * 1.1,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child: Image.asset("images/K9.webp", cacheWidth: larguraMascote.toInt()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: larguraMascote * 1.1,
                    height: 0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child: Image.asset("images/K9.webp", cacheWidth: larguraMascote.toInt()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: larguraMascote * 1.1,
                    height: 0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child: Image.asset("images/K9.webp", cacheWidth: larguraMascote.toInt()),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlutterLogo(),
                Text("Eu amo o Flutter!")
              ],
            ),
          ),
          Expanded(child: Padding(padding: EdgeInsets.all(0))),
          Text("Desenvolvimento de Aplicativos", style: TextStyle(fontSize: 12),)
        ],
      ),
    );
  }
}