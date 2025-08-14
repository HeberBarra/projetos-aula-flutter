import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meu café',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.brown[200],
            width: larguraTela,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Como eu gosto do meu café...'),
            ),
          ),
          Container(
            color: Colors.brown[100],
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: CoffeePrefs()
            ),
          ),
          Expanded(
            child: Image.asset(
              'images/coffee_bg.jpg',
              width: larguraTela,
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int intensidadeCafe = 1;
  int quantidadeAcucar = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Intensidade: '),
            for (int i = 0; i < intensidadeCafe; i++) Image.asset('images/coffee_bean.png', width: 25,),
            Expanded(child: SizedBox()),
            FilledButton(onPressed: () {
              setState(() {
                if (intensidadeCafe == 3) {
                  intensidadeCafe = 1;
                  return;
                }

                intensidadeCafe++;
              });
            }, child: Icon(Icons.add)),
          ],
        ),
        Row(
          children: [
            Text('Açúcar: '),
            for(int i = 0; i < quantidadeAcucar; i++) Image.asset('images/sugar_cube.png', width: 25,),
            Expanded(child: SizedBox()),
            FilledButton(onPressed: () {
              setState(() {
                if (quantidadeAcucar == 5) {
                  quantidadeAcucar = 0;
                  return;
                }

                quantidadeAcucar++;
              });
            }, child: Icon(Icons.add)),
          ],
        ),
      ],
    );
  }
}
