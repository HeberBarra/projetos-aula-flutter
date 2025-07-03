import 'package:flutter/material.dart';

class TelaSaudacao extends StatefulWidget {
  const TelaSaudacao({super.key});

  @override
  State<TelaSaudacao> createState() => _TelaSaudacaoState();
}

class _TelaSaudacaoState extends State<TelaSaudacao> {
  final GlobalKey<FormState> chaveFormulario = GlobalKey<FormState>();
  final TextEditingController controllerNome = TextEditingController();
  bool mostrarSaudacao = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: chaveFormulario,
        child: Column(
          children: [
            TextFormField(
              controller: controllerNome,
              decoration: InputDecoration(
                labelText: "Nome:",
                hintText: "Por favor digite seu nome",
              ),
              validator: (String? valor) {
                if (valor == null || valor.isEmpty) {
                  return "Valor inválido";
                }

                return null;
              },
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  mostrarSaudacao = chaveFormulario.currentState!.validate();
                });
              },
              child: Text("Mostrar Saudação"),
            ),
            Visibility(
              visible: mostrarSaudacao,
              child: Column(
                children: [
                  Image.asset("images/doutor.jpg", width: 300, height: 200),
                  Text("Bom dia, ${controllerNome.text}!"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
