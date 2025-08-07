import 'package:flutter/material.dart';

class ExercicioTres extends StatelessWidget {
  const ExercicioTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício Três", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 2))),
              Text("Doctor Who", style: TextStyle(fontSize: 24) ,textAlign: TextAlign.center),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset("images/DoctorWho.jpg", cacheHeight: 300, cacheWidth: 500,),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).colorScheme.inversePrimary)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Icon>[
                    Icon(Icons.star, size: 40,),
                    Icon(Icons.star, size: 40,),
                    Icon(Icons.star, size: 40,),
                    Icon(Icons.star, size: 40,),
                    Icon(Icons.star_border, size: 40,)
                  ],
                ),
              ),
              Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 2))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: null, style: ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(Theme.of(context).colorScheme.inversePrimary)), child: Text("Anterior"),),
                  TextButton(onPressed: null, style: ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(Theme.of(context).colorScheme.inversePrimary)), child: Text("Próximo"),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
