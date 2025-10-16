import 'package:flutter/material.dart';

import '../models/post.dart';
import '../models/story.dart';
import '../post_item.dart';
import '../services/database_helper.dart';
import '../story_item.dart';
import 'add_post.dart';
import 'add_story.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Story> _stories = <Story>[
    Story(title: 'Story 1'),
    Story(title: 'Story 2', closeFriends: true),
    Story(title: 'Story 3', closeFriends: true),
    Story(title: 'Story 4'),
    Story(title: 'Story 5'),
  ];

  void deletePost(Post post) {
    setState(() {
      DatabaseHelper.instance.removePost(post.id!);
    });
  }

  void deleteStory(int index) {
    setState(() {
      _stories.removeAt(index);
    });
  }

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
              itemCount: _stories.length + 1,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddStory()),
                        );

                        if (result != null) {
                          setState(() {
                            _stories.add(result[0]);
                          });
                        }
                      },
                      child: Container(
                        height: StoryItem.height,
                        width: StoryItem.width,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('images/twelfth_doctor.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(child: Icon(Icons.add, size: 20,)),
                      ),
                    ),
                  );
                }

                index--;
                return StoryItem(
                  story: _stories[index],
                  deleteItem: () => deleteStory(index),
                );
              },
            ),
          ),
          Expanded(
            child: FutureBuilder(
                future: DatabaseHelper.instance.getPosts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return snapshot.data!.isEmpty ? const Center(child: Text('Você ainda não fez nenhum post'),) : ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        Post currentPost = snapshot.data![index];
                        return PostItem(
                          post: currentPost,
                          deletePost: () => deletePost(currentPost),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text(snapshot.error.toString()));
                  } else {
                    return const CircularProgressIndicator();
                  }
                }
            )
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
            setState(() {});
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
