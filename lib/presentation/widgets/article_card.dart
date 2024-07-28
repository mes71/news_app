import 'package:cached_network_image/cached_network_image.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/data/config/assets.dart';
import 'package:news_app/presentation/widgets/logo.dart';
import 'package:news_core/news_core.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  final VoidCallback onPressed;

  const ArticleCard(
      {super.key, required this.article, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Stack(
                children: [
                  article.urlToImage != null
                      ? CachedNetworkImage(
                          imageUrl: article.urlToImage!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 200,
                          placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator(),
                              ))
                      : const Center(
                          child: SizedBox(
                            height: 200,
                            child: SvgPicture(
                              AssetBytesLoader(Assets.iconsImageNotFoundVec),
                              height: 80,
                              width: 80,
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: LogoWidget(category: article.category!),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title ?? "",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (article.author != null)
                        Text(
                          'By ${article.author}',
                          style: const TextStyle(
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      Text(
                        DateFormat('yyyy-MM-dd')
                            .format(article.publishedAt ?? DateTime.now()),
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                if (article.description != null)
                  Text(
                    article.description!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 14),
                  ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: onPressed,
                  child: const Text('Read more'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
