class Post {
  final String title;
  final String text;
  bool liked;

  Post({required this.title, required this.text, this.liked = false});

  void toggleLike() {
    liked = !liked;
  }

}
