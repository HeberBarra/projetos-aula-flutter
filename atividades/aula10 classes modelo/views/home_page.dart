import 'package:flutter/material.dart';
import 'package:projetosaulaflutter/models/post.dart';
import 'add_post.dart';
import '../story_item.dart';
import '../post_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _posts = <Post>[
    Post(title: 'Post 1', text: 'Texto Post 1'),
    Post(title: 'Post 2', text: 'Texto Post 2'),
    Post(title: 'Post 3', text: 'Texto Post 3'),
  ];
  final List _stories = ['story 1', 'story 2', 'story 3', 'story 4', 'story 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Style APP'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.surface,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return StoryItem(texto: _stories[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return PostItem(post: _posts[index]);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push<List<Post>>(
            context,
            MaterialPageRoute(builder: (context) => const AddPost()),
          );

          if (result != null) {
            setState(() {
              _posts.add(result[0]);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
