import 'package:flutter/material.dart';

class AtividadeComponentes extends StatelessWidget {
  const AtividadeComponentes({super.key});

  @override
  Widget build(BuildContext context) {
    Size tamanhoTela = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Receita de Bolo de Cenoura"),
        backgroundColor: Theme.of(context).colorScheme.surface,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: tamanhoTela.height * 0.3,
                width: tamanhoTela.width,
                child: Image.asset(
                  "images/bolo_cenoura.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 24),
                  Icon(Icons.star, color: Colors.amber, size: 24),
                  Icon(Icons.star, color: Colors.amber, size: 24),
                  Icon(Icons.star, color: Colors.amber, size: 24),
                  Icon(Icons.star_half, color: Colors.amber, size: 24),
                  Text(" 4.5 (250 avaliações)"),
                ],
              ),
            ),
            Section(titulo: "Ingredientes: ", valores: ["\u2022 Cenouras, Ovos, Óleo, Açúcar, Farinha Fermento", "\u2022 Cobertura: Açúcar, Chocolate em pó, Manteiga, Leite"]),
            SizedBox(height: 10,),
            Section(titulo: "Modo de Preparo: ", valores: ["1. Bata cenoura, ovos e óleo no liquidificador.", "2. Misture os líquidos com açúcar e farinha. Adicione o fermento por último.", "3. Asse em forno médio (180°C) por 30-40 minutos.", "4. Para a cobertura: Cozinhe todos os ingredientes em fogo baixo até engrossar. Despeje sobre o bolo quente."]),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String titulo;
  final List<String> valores;

  const Section({super.key, required this.titulo, required this.valores});

  @override
  Widget build(BuildContext context) {
    List<Text> textos = [];
    for (var valor in valores) {
      textos.add(Text(valor));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            titulo,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: textos,
        ),
      ],
    );
  }
}
