class Post {
  final int postId;
  final int klantId;
  final int categorieId;
  final String tijd;
  final String titel;
  final String inhoud;

  const Post({
    this.postId,
    this.klantId,
    this.categorieId,
    this.tijd,
    this.titel,
    this.inhoud,
  });

  // factory Post.fromJson(Map<String, dynamic> json) {
  //   return Post(
  //    I: json[I'],
  //     klantId: json['klantId'],
  //    I: json[I'],
  //     tijd: json['tijd'],
  //     titel: json['titel'],
  //     inhoud: json['inhoud'],
  //   );
  // }
}
