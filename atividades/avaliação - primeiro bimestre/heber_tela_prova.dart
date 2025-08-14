import 'package:flutter/material.dart';

class HeberTelaProva extends StatelessWidget {
  const HeberTelaProva({super.key});

  @override
  Widget build(BuildContext context) {
    double larguraContainer = MediaQuery.of(context).size.width;
    double alturaImagem = MediaQuery.of(context).size.height * 0.6;
    double larguraImagem = larguraContainer * 0.6;

    TextStyle estiloNome = TextStyle(fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Pet Love'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onInverseSurface,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70),
        child: Expanded(
          child: Center(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'images/dog.jpg',
                            fit: BoxFit.cover,
                            height: alturaImagem,
                            width: larguraImagem,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(
                                        context,
                                      ).colorScheme.inversePrimary,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  border: Border.all(
                                    color:
                                        Theme.of(
                                          context,
                                        ).colorScheme.inversePrimary,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text('2 anos'),
                                ),
                              ),
                              Text('Toby - RSD', style: estiloNome),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () => {},
                          child: Text('Quero adotar'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: larguraContainer,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'images/lhasa.jpg',
                            fit: BoxFit.cover,
                            height: alturaImagem,
                            width: larguraImagem,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Lhasa', style: estiloNome),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(
                                        context,
                                      ).colorScheme.inversePrimary,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  border: Border.all(
                                    color:
                                        Theme.of(
                                          context,
                                        ).colorScheme.inversePrimary,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text('1 ano'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () => {},
                          child: Text('Quero adotar'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SizedBox(
                    width: larguraContainer,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'images/pug.jpg',
                            fit: BoxFit.cover,
                            height: alturaImagem,
                            width: larguraImagem,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Axel - Puggy', style: estiloNome),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(
                                        context,
                                      ).colorScheme.inversePrimary,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  border: Border.all(
                                    color:
                                        Theme.of(
                                          context,
                                        ).colorScheme.inversePrimary,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text('2 anos'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () => {},
                          child: Text('Quero adotar'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
