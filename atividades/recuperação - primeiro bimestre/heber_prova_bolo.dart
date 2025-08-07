import 'package:flutter/material.dart';

class HeberProvaBolo extends StatelessWidget {
  const HeberProvaBolo({super.key});

  @override
  Widget build(BuildContext context) {
    Size tamanhoTela = MediaQuery.of(context).size;
    TextStyle estiloTitulo = TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Theme.of(context).colorScheme.primary);

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
                child: Image.asset("images/bolo_cenoura.jpg", fit: BoxFit.cover,),
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
            
            // Ingredientes
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("Ingredientes:", style: estiloTitulo,),
            ),
            Text("\u2022 Cenouras, Ovos, Óleo, Açúcar, Farinha Fermento"),
            Text("\u2022 Cobertura: Açúcar, Chocolate em pó, Manteiga, Leite"),

            // Modo de Preparo
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Modo de Preparo:", style: estiloTitulo,),
            ),
            Text("1. Bata cenoura, ovos e óleo no liquidificador."),
            Text("2. Misture os líquidos com açúcar e farinha. Adicione o fermento por último."),
            Text("3. Asse em forno médio (180°C) por 30-40 minutos."),
            Text("4. Para a cobertura: Cozinhe todos os ingredientes em fogo baixo até engrossar. Despeje sobre o bolo quente.")
          ],
        ),
      ),
    );
  }
}
