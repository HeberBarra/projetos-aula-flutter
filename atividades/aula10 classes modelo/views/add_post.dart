import 'package:flutter/material.dart';

import '../models/post.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _postTitleController = TextEditingController();
  final TextEditingController _postTextController = TextEditingController();

  @override
  void dispose() {
    _postTitleController.dispose();
    _postTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Post'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.surface,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _postTitleController,
                decoration: InputDecoration(label: Text('Título: ')),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Entre com o título do seu post';
                  }

                  return null;
                },
              ),
              TextFormField(
                controller: _postTextController,
                decoration: InputDecoration(label: Text('Texto:')),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Entre com o texto do seu post';
                  }

                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(const SnackBar(content: Text('Salvando')));
                    Navigator.pop(context, [
                      Post(
                        title: _postTitleController.text,
                        text: _postTextController.text,
                      ),
                    ]);
                  }
                },
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
