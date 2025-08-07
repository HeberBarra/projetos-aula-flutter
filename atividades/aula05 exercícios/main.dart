import 'package:atividades_revisao/exercicio_cinco.dart';
import 'package:atividades_revisao/exercicio_dois.dart';
import 'package:atividades_revisao/exercicio_quatro.dart';
import 'package:atividades_revisao/exercicio_seis.dart';
import 'package:atividades_revisao/exercicio_sete.dart';
import 'package:atividades_revisao/exercicio_um.dart';
import 'package:atividades_revisao/exercicios_tres.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

DateTime dataAtual = DateTime.now();
String saudacao(String nome) => "Bom dia, $nome!";
String despedida(String nome) => "Tchau, $nome. Aproveite seu dia!";
String getFullName() => "Barra, Heber Ferreira";
String getFullName2() => "Heber Ferreira BARRA";
String getCurrentDate() => "${dataAtual.day}/${dataAtual.month}/${dataAtual.year}";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello, World!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const ExercicioTres(),
    );
  }
}

class FirstHomePage extends StatelessWidget {
  const FirstHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String nome = "Heber";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        leading: Icon(
          Icons.person,
          color: Theme.of(context).colorScheme.surface,
        ),
        title: Text(
          "Programa aula três",
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text(saudacao(nome), style: TextStyle(fontSize: 36)),
            Text(despedida(nome), style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello, World!",
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Hello, World!"), Text(getFullName())],
        ),
      ),
    );
  }
}

class ThirdHomePage extends StatelessWidget {
  const ThirdHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exercícios",
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, World!"),
            Padding(padding: EdgeInsets.all(4)),
            Text(getFullName2()),
          ],
        ),
      ),
    );
  }
}

class ForthHomePage extends StatelessWidget {
  const ForthHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exercícios",
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(getFullName2()), Text(getCurrentDate())],
            ),
          ),
          Expanded(child: Padding(padding: EdgeInsets.all(1))),
          Text("Olá, mundo!"),
          Expanded(child: Padding(padding: EdgeInsets.all(1))),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Messages",
          ),
        ],
      ),
    );
  }
}