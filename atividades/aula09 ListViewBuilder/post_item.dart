import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String texto;

  const PostItem({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 200,
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Center(child: Text(texto, style: TextStyle(fontSize: 20))),
      ),
    );
  }
}
