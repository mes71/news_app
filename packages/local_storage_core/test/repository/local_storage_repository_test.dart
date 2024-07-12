import 'package:flutter_test/flutter_test.dart';
import 'package:local_storage_core/local_storage_core.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:local_storage_core/source/data_source.dart';
import 'dart:typed_data';

import 'local_storage_repository_test.mocks.dart';

@GenerateMocks([LocalDataSource])
void main() {
  late LocalStorageRepository repository;
  late MockLocalDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockLocalDataSource();
    repository = LocalStorageRepository(mockDataSource);
  });

  group('LocalStorageRepository', () {
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

    test('should add a news article', () async {
      when(mockDataSource.addNews(article)).thenAnswer((_) async => Future.value());

      await repository.addNews(article);

      verify(mockDataSource.addNews(article)).called(1);
    });

    test('should add a list of news articles', () async {
      final articles = [article, article];

      when(mockDataSource.addAllNews(articles)).thenAnswer((_) async => Future.value());

      await repository.addAllNews(articles);

      verify(mockDataSource.addAllNews(articles)).called(1);
    });

    test('should clear the news box', () async {
      when(mockDataSource.clearBox()).thenAnswer((_) async => Future.value());

      await repository.clearBox();

      verify(mockDataSource.clearBox()).called(1);
    });

    test('should get all news articles', () {
      final articles = [article, article];

      when(mockDataSource.getAllNews()).thenReturn(articles);

      final result = repository.getAllNews();

      expect(result, articles);
      verify(mockDataSource.getAllNews()).called(1);
    });
  });
}
