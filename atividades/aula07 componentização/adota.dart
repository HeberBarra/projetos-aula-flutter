import 'package:flutter/material.dart';
import 'package:projetosaulaflutter/pet.dart';

class Adota extends StatelessWidget {
  const Adota({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    List<Pet> pets = [
      Pet(nome: "Toby", raca: "SRD", idade: 2, foto: "images/dog.jpg"),
      Pet(nome: "Popy", raca: "Lhasa Apso", idade: 1, foto: "images/lhasa.jpg"),
      Pet(nome: "Axel", raca: "Puggy", idade: 4, foto: "images/pug.jpg"),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.pets)),
        title: const Text("Pet Love"),
        backgroundColor: colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: ListView(
          children: pets.map((pet) => PetCard(pet: pet)).toList(),
        ),
      ),
    );
  }
}

class PetCard extends StatelessWidget {
  final Pet pet;

  const PetCard({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              pet.foto,
              fit: BoxFit.cover,
              width: size.width,
              height: size.height * 0.2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(pet.nome),
              Text(pet.raca, style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colorScheme.secondaryContainer,
                ), //BoxShadow),
                child: Text(pet.getTextoIdade()),
              ),
              TextButton(onPressed: () {}, child: const Text("Quero Adotar")),
            ],
          ),
        ],
      ),
    );
  }
}
