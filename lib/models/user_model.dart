class User {
  final int id;
  final String name;
  final String post;
  final String desc;
  final String imageUrl;
  final bool isLive;
  final bool isOnline;
  final String lastLive;

  User(
      {this.id,
      this.name,
      this.post,
      this.desc,
      this.imageUrl,
      this.isLive,
      this.isOnline,
      this.lastLive});
}
