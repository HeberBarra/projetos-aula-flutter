import 'package:flutter/material.dart';

class TelaSoma extends StatefulWidget {
  const TelaSoma({super.key});

  @override
  State<TelaSoma> createState() => _TelaSomaState();
}

class _TelaSomaState extends State<TelaSoma> {
  final GlobalKey<FormState> chaveFormulario = GlobalKey<FormState>();
  final TextEditingController controllerPrimeiroValor = TextEditingController();
  final TextEditingController controllerSegundoValor = TextEditingController();
  double resultado = 0;

  @override
  void dispose() {
    controllerPrimeiroValor.dispose();
    controllerSegundoValor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: chaveFormulario,
          child: Column(
            children: [
              InputValor(
                label: 'Primeiro valor:',
                controller: controllerPrimeiroValor,
              ),
              InputValor(
                label: 'Segundo Valor:',
                controller: controllerSegundoValor,
              ),
              TextButton(
                onPressed: () {
                  if (chaveFormulario.currentState!.validate()) {
                    double primeiroValor = double.parse(
                      controllerPrimeiroValor.text,
                    );
                    double segundoValor = double.parse(
                      controllerSegundoValor.text,
                    );
                    setState(() {
                      resultado = primeiroValor + segundoValor;
                    });
                  }
                },
                child: Text('SOMAR'),
              ),
              Text('Resultado: $resultado'),
            ],
          ),
        ),
    );
  }
}

class InputValor extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const InputValor({super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Digite um número',
        labelText: label,
      ),
      onSaved: (newValue) {},
      validator: (String? valor) {
        return (valor == null || (double.tryParse(valor) != null))
            ? null
            : 'Valor inválido';
      },
    );
  }
}
