import 'package:flutter/material.dart';

import '../models/post.dart';
import '../models/story.dart';
import '../post_item.dart';
import '../story_item.dart';
import 'add_post.dart';
import 'add_story.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Post> _posts = <Post>[
    Post(title: 'Post 1', text: 'Texto Post 1'),
    Post(title: 'Post 2', text: 'Texto Post 2'),
    Post(title: 'Post 3', text: 'Texto Post 3'),
  ];
  final List<Story> _stories = <Story>[
    Story(title: 'Story 1'),
    Story(title: 'Story 2', closeFriends: true),
    Story(title: 'Story 3', closeFriends: true),
    Story(title: 'Story 4'),
    Story(title: 'Story 5'),
  ];

  void deletePost(int index) {
    setState(() {
      _posts.removeAt(index);
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
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return PostItem(
                  post: _posts[index],
                  deletePost: () => deletePost(index),
                );
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
