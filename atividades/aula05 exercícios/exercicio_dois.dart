import 'package:flutter/material.dart';

class ExercicioDois extends StatelessWidget {
  const ExercicioDois({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício Dois", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Icon>[
                  Icon(Icons.star, size: 40,),
                  Icon(Icons.star, size: 40,),
                  Icon(Icons.star, size: 40,),
                  Icon(Icons.star, size: 40,),
                  Icon(Icons.star_border, size: 40,)
                ],
              ),
              Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 2))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: null, child: Text("Anterior", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),),
                  TextButton(onPressed: null, child: Text("Próximo", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
