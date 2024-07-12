import 'package:local_storage_core/local_storage_core.dart' as entity;
import 'package:news_app/data/mapper/article_to_entity.dart';
import 'package:news_core/news_core.dart';
import 'package:test/test.dart';

void main() {
  group('ArticleMapper', () {
    test('toEntity converts Article to ArticleEntity correctly', () {
      final article = Article(
        source: Source(id: 'source-id', name: 'Source Name'),
        author: 'John Doe',
        title: 'This is a test article',
        description: 'A short description for testing',
        url: 'https://example.com/article',
        urlToImage: 'https://example.com/image.jpg',
        publishedAt: DateTime.now(),
        content: 'Some content for the article',
      );

      final entityArticle = ArticleMapper.toEntity(article);

      expect(entityArticle.source.id, article.source.id);
      expect(entityArticle.source.name, article.source.name);
      expect(entityArticle.author, article.author);
      expect(entityArticle.title, article.title);
      expect(entityArticle.description, article.description);
      expect(entityArticle.url, article.url);
      expect(entityArticle.urlToImage, article.urlToImage);
      expect(entityArticle.publishedAt, article.publishedAt);
      expect(entityArticle.content, article.content);
    });

    test('fromEntity converts ArticleEntity to Article correctly', () {
      final entityArticle = entity.ArticleEntity(
        source: entity.Source(
          id: 'entity-id',
          name: 'Entity Source',
        ),
        author: 'Jane Doe',
        title: 'Another Test Article',
        description: 'Another description for testing',
        url: 'https://example.com/article2',
        urlToImage: 'https://example.com/image2.jpg',
        publishedAt: DateTime.now().subtract(Duration(days: 1)),
        content: 'Different content',
      );

      final article = ArticleMapper.fromEntity(entityArticle);

      expect(article.source.id, entityArticle.source.id);
      expect(article.source.name, entityArticle.source.name);
      expect(article.author, entityArticle.author);
      expect(article.title, entityArticle.title);
      expect(article.description, entityArticle.description);
      expect(article.url, entityArticle.url);
      expect(article.urlToImage, entityArticle.urlToImage);
      expect(article.publishedAt, entityArticle.publishedAt);
      expect(article.content, entityArticle.content);
    });
  });

  group('SourceMapper', () {
    test('toEntity converts Source to SourceEntity correctly', () {
      final source = Source(id: 'source-id', name: 'Source Name');
      final entitySource = SourceMapper.toEntity(source);

      expect(entitySource.id, source.id);
      expect(entitySource.name, source.name);
    });

    test('fromEntity converts SourceEntity to Source correctly', () {
      entity.Source entitySource =
          entity.Source(id: 'entity-id', name: 'Entity Source');
      final source = SourceMapper.fromEntity(entitySource as Source);

      expect(source.id, entitySource.id);
      expect(source.name, entitySource.name);
    });
  });
}
