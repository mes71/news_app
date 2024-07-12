import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_test/hive_test.dart';
import 'package:local_storage_core/entity/article_entity.dart';
import 'package:local_storage_core/local_storage_core.dart';

import 'package:local_storage_core/source/data_source_impl.dart';

void main() async {
  await setUpTestHive();
  Hive.registerAdapter(ArticleEntityAdapter());
  Hive.registerAdapter(SourceAdapter());

  late LocalSource localSource;

  setUp(() async {
    localSource = LocalSource(skipInit: true);
    await localSource.initLocalStorageForTest();
    await localSource.newBox.clear(); // Clear the box before each test
  });

  tearDown(() async {
    await localSource.newBox.clear(); // Clear the box after each test
  });

  group('LocalSource', () {
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


    final article2 = ArticleEntity(
      source: source,
      author: 'Test Author2',
      title: 'Test Title2',
      description: 'Test Description2',
      url: 'https://test2.url',
      urlToImage: 'https://test22.url/image.jpg',
      publishedAt: DateTime.parse('2021-01-01T00:00:00Z'),
      content: 'Test Content2222',
    );

    test('should add a news article', () async {
      await localSource.addNews(article);

      final result = localSource.newBox.getAt(0);

      expect(result, isNotNull);
      expect(result?.source.id, '123');
      expect(result?.title, 'Test Title');
    });

    test('should add a list of news articles', () async {
      final articles = [article, article2];

      await localSource.addAllNews(articles);

      final result = localSource.newBox.values.toList();

      expect(result.length, 2);
      expect(result[0].title, 'Test Title');
      expect(result[1].title, 'Test Title2');
    });

    test('should clear the news box', () async {
      await localSource.addNews(article);
      await localSource.clearBox();

      final result = localSource.newBox.isEmpty;

      expect(result, true);
    });

    test('should get all news articles', () async {
      final articles = [article, article2];

      await localSource.addAllNews(articles);

      final result = localSource.getAllNews();

      expect(result.length, 2);
      expect(result[0].title, 'Test Title');
      expect(result[1].title, 'Test Title2');
    });
  });
}
