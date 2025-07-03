import 'package:aula_seis/exercicio01.dart';
import 'package:aula_seis/exercicio02.dart';
import 'package:aula_seis/exercicio03.dart';
import 'package:aula_seis/exercicio04.dart';
import 'package:aula_seis/exercicio05.dart';
import 'package:aula_seis/exercicio06.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Exercicio06(),
      debugShowCheckedModeBanner: false,
    );
  }
}
