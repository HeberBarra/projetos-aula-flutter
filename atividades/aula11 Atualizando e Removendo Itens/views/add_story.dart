import 'package:flutter/material.dart';

import '../models/story.dart';

class AddStory extends StatefulWidget {
  final Story? story;

  const AddStory({super.key, this.story});

  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _storyTitleController = TextEditingController();
  bool closeFriends = false;

  @override
  void initState() {
    super.initState();
    if (widget.story != null) {
      _storyTitleController.text = widget.story!.title;
      closeFriends = widget.story!.closeFriends;
    }
  }

  @override
  void dispose() {
    _storyTitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            widget.story == null
                ? const Text('Novo Story')
                : const Text('Alterando o Story'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.surface,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: const Icon(Icons.close),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _storyTitleController,
                decoration: InputDecoration(label: const Text('Título: ')),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Entre com o título do seu story';
                  }

                  return null;
                },
              ),
              Row(
                children: [
                  const Text('Close Friends: '),
                  Checkbox(
                    value: closeFriends,
                    onChanged: (bool? value) {
                      setState(() {
                        closeFriends = value!;
                      });
                    },
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) return;

                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text('Salvando')));

                  if (widget.story == null) {
                    Navigator.pop(context, [
                      Story(
                        title: _storyTitleController.text,
                        closeFriends: closeFriends,
                      ),
                    ]);
                  } else {
                    widget.story?.title = _storyTitleController.text;
                    widget.story?.closeFriends = closeFriends;
                    Navigator.pop(context);
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
