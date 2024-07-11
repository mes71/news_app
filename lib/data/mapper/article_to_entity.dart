import 'dart:typed_data';

import 'package:local_storage_core/local_storage_core.dart' as entity;
import 'package:news_core/news_core.dart';

class ArticleMapper {
  static entity.ArticleEntity toEntity(Article article) {
    return entity.ArticleEntity(
      source: entity.Source(
        id: article.source.id,
        name: article.source.name,
      ),
      author: article.author,
      title: article.title,
      description: article.description,
      url: article.url,
      urlToImage: article.urlToImage,
      publishedAt: article.publishedAt,
      content: article.content,
    );
  }

  static Article fromEntity(entity.ArticleEntity entity) {
    return Article(
      source: Source(
        id: entity.source.id,
        name: entity.source.name,
      ),
      author: entity.author,
      title: entity.title,
      description: entity.description,
      url: entity.url,
      urlToImage: entity.urlToImage,
      publishedAt: entity.publishedAt,
      content: entity.content,
    );
  }
}

class SourceMapper {
  static Source toEntity(Source source) {
    return Source(
      id: source.id,
      name: source.name,
    );
  }

  static Source fromEntity(Source entity) {
    return Source(
      id: entity.id,
      name: entity.name,
    );
  }
}
