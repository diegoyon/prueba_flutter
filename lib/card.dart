import 'package:flutter/material.dart';
import 'package:prueba_flutter/article.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  ArticleCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: CachedNetworkImage(
                imageUrl: article.image,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(article.title),
            ),
          ],
        ),
      ),
    );
  }
}
