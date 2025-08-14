import 'package:flutter/material.dart';

import 'tela_saudacao.dart';
import 'tela_soma.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  int indexTelaAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widgets'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.surface,
      ),
      body:
          <Widget>[
            Center(
              child: Image.asset(
                'images/twelfth_doctor.jpg',
                width: 600,
                height: 400,
              ),
            ),
            TelaSoma(),
            TelaSaudacao(),
          ][indexTelaAtual],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            indexTelaAtual = index;
          });
        },
        selectedIndex: indexTelaAtual,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'HOME'),
          NavigationDestination(icon: Icon(Icons.add), label: 'SOMAR'),
          NavigationDestination(icon: Icon(Icons.handshake), label: 'SAUDAÇÃO'),
        ],
      ),
    );
  }
}
