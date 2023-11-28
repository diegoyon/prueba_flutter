class Article {
  final int id;
  final String title;
  final String author;
  final String imageUrl;
  final String content;
  final String published;

  Article(
      {required this.id,
      required this.title,
      required this.author,
      required this.imageUrl,
      required this.content,
      required this.published});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      imageUrl: json['image_url'],
      content: json['content'],
      published: json['published'],
    );
  }
}
