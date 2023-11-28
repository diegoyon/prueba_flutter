class Article {
  int? id;
  String? title;
  String? author;
  String? imageUrl;
  String? content;
  String? published;

  Article(
      {this.id,
      this.title,
      this.author,
      this.imageUrl,
      this.content,
      this.published});

  Article.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    author = json['author'];
    imageUrl = json['image_url'];
    content = json['content'];
    published = json['published'];
  }
}
