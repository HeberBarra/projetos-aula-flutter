class Story {
  String title;
  bool closeFriends;

  Story({required this.title, this.closeFriends = false});

  void toggleCloseFriends() {
    closeFriends = !closeFriends;
  }
}
