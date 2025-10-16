class Story {
  int? id;
  String title;
  bool closeFriends;

  Story({this.id, required this.title, this.closeFriends = false});

  void toggleCloseFriends() {
    closeFriends = !closeFriends;
  }

  factory Story.fromMap(Map<String, dynamic> json) => Story(
    id: json['id'],
    title: json['title'],
    closeFriends: json['closeFriends']
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'title': title,
    'closeFriends': closeFriends ? 1 : 0
  };

}
