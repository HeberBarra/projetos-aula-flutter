import 'package:flutter/material.dart';

class ReceitaBolo1 extends StatelessWidget {
  const ReceitaBolo1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Receita de Bolo de Cenoura'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.3,
                    width: size.width * 0.3,
                    child: Image.asset(
                      'images/bolo_cenoura.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 24),
                      Icon(Icons.star, color: Colors.amber, size: 24),
                      Icon(Icons.star, color: Colors.amber, size: 24),
                      Icon(Icons.star, color: Colors.amber, size: 24),
                      Icon(
                        Icons.star_half,
                        color: Colors.amber,
                        size: 24,
                      ), // Meia estrela
                    ],
                  ),
                  const Text('4.5', style: TextStyle(fontSize: 16)),
                  const Text(
                    '(250 avaliações)',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),

            SizedBox(
              width: size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Section(
                    title: 'Ingredientes:',
                    itens: [
                      '- Cenouras, Ovos, Óleo, Açúcar, Farinha, Fermento',
                      '- Cobertura: Açúcar, Chocolate em pó, Manteiga, Leite',
                    ],
                  ),
                  SizedBox(height: 20),
                  Section(
                    title: 'Modo de Preparo:',
                    itens: [
                      '1. Bata cenoura, ovos e óleo no liquidificador.',
                      '2. Misture os líquidos com açúcar e farinha. Adicione o fermento por último.',
                      '3. Asse em forno médio (180°C) por 30-40 minutos.',
                      '4. Para a cobertura: Cozinhe todos os ingredientes em fogo baixo até engrossar. Despeje sobre o bolo quente.',
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<String> itens;

  const Section({super.key, required this.title, required this.itens});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: colorScheme.primary,
          ),
        ),
        const SizedBox(height: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: itens.map((item) => Text(item)).toList(),
        ),
      ],
    );
  }
}
