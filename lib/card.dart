import 'package:flutter/material.dart';
import 'package:prueba_flutter/article.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({super.key, required this.article});

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
                imageUrl: article.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(article.title),
              subtitle: Text('${article.author} \$'),
              trailing: Container(
                width:
                    100, // Set a specific width for the trailing widget container
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    SizedBox(
                        width:
                            8), // Add some spacing between the star icon and the text
                    Expanded(
                      child: Text(
                        article.content,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
