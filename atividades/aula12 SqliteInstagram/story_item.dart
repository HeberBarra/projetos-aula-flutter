import 'package:flutter/material.dart';

import 'models/story.dart';
import 'views/add_story.dart';

class StoryItem extends StatefulWidget {
  static const double height = 120;
  static const double width = 120;

  final Story story;
  final Function() deleteItem;

  const StoryItem({super.key, required this.story, required this.deleteItem});

  @override
  State<StoryItem> createState() => _StoryItemState();
}

class _StoryItemState extends State<StoryItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: StoryItem.height,
        width: StoryItem.width,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.story.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Opacity(
                opacity: widget.story.closeFriends ? 1 : 0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.story.toggleCloseFriends();
                    });
                  },
                  child: Text(
                    'Close Friends',
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddStory(story: widget.story),
                        ),
                      );

                      setState(() {});
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: widget.deleteItem,
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
