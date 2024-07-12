// test/mock_path_provider.dart
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_test/hive_test.dart';
import 'package:local_storage_core/local_storage_core.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  TestWidgetsFlutterBinding.ensureInitialized();


  group('Source', () {
    test('Source should be instantiated correctly', () {
      final source = Source(id: '123', name: 'Test Source');

      expect(source.id, '123');
      expect(source.name, 'Test Source');
    });
  });

  group('ArticleEntity', () {
    test('ArticleEntity should be instantiated correctly', () {
      final source = Source(id: '123', name: 'Test Source');
      final article = ArticleEntity(
        source: source,
        author: 'Test Author',
        title: 'Test Title',
        description: 'Test Description',
        url: 'https://test.url',
        urlToImage: 'https://test.url/image.jpg',
        publishedAt: DateTime.parse('2022-01-01T00:00:00Z'),
        content: 'Test Content',
      );

      expect(article.source, source);
      expect(article.author, 'Test Author');
      expect(article.title, 'Test Title');
      expect(article.description, 'Test Description');
      expect(article.url, 'https://test.url');
      expect(article.urlToImage, 'https://test.url/image.jpg');
      expect(article.publishedAt, DateTime.parse('2022-01-01T00:00:00Z'));
      expect(article.content, 'Test Content');
    });

    test('ArticleEntity should be stored and retrieved from Hive', () async {
      await setUpTestHive();

      Hive.registerAdapter(SourceAdapter());
      Hive.registerAdapter(ArticleEntityAdapter());

      final box = await Hive.openBox<ArticleEntity>('articles');
      final source = Source(id: '123', name: 'Test Source');
      final article = ArticleEntity(
        source: source,
        author: 'Test Author',
        title: 'Test Title',
        description: 'Test Description',
        url: 'https://test.url',
        urlToImage: 'https://test.url/image.jpg',
        publishedAt: DateTime.parse('2022-01-01T00:00:00Z'),
        content: 'Test Content',
      );

      await box.put('test_article', article);
      final retrievedArticle = box.get('test_article');

      expect(retrievedArticle, isNotNull);
      expect(retrievedArticle!.source.id, '123');
      expect(retrievedArticle.source.name, 'Test Source');
      expect(retrievedArticle.author, 'Test Author');
      expect(retrievedArticle.title, 'Test Title');
      expect(retrievedArticle.description, 'Test Description');
      expect(retrievedArticle.url, 'https://test.url');
      expect(retrievedArticle.urlToImage, 'https://test.url/image.jpg');
      expect(retrievedArticle.publishedAt, DateTime.parse('2022-01-01T00:00:00Z'));
      expect(retrievedArticle.content, 'Test Content');


      await box.close();
    });
  });
}
