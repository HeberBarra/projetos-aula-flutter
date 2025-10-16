class Post {
  int? id;
  String title;
  String text;
  bool liked;

  Post({this.id, required this.title, required this.text, this.liked = false});

  void toggleLike() {
    liked = !liked;
  }

  factory Post.fromMap(Map<String, dynamic> json) => Post(
    id: json['id'],
    title: json['title'],
    text: json['text'],
    liked: json['liked'] != 0
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'text': text,
      'liked': liked ? 1 : 0
    };
  }

}
