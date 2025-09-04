import 'package:flutter/material.dart';
import 'models/post.dart';
import 'views/add_post.dart';

class PostItem extends StatefulWidget {
  final Post post;
  final Function() deletePost;

  const PostItem({super.key, required this.post, required this.deletePost});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        leading: IconButton(
          onPressed:
              () => {
                setState(() {
                  widget.post.toggleLike();
                }),
              },
          icon:
              widget.post.liked
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_border),
        ),
        title: Text(widget.post.title),
        subtitle: Text(widget.post.text),
        tileColor: Theme.of(context).colorScheme.primaryContainer,
        contentPadding: const EdgeInsets.all(5),
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
        trailing: Wrap(
          children: [
            IconButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddPost(post: widget.post),
                  ),
                );

                setState(() {});
              },
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: widget.deletePost,
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
