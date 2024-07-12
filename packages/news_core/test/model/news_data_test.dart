import 'package:flutter_test/flutter_test.dart';
import 'package:news_core/model/model.dart';

void main() {
  group('NewsData', () {
    test('fromJson and toJson', () {
      final Map<String, dynamic> jsonData = {
        'status': 'ok',
        'totalResults': 2,
        'articles': [
          {
            'source': {'id': 'abc-news', 'name': 'ABC News'},
            'author': 'John Doe',
            'title': 'Breaking News',
            'description': 'This is a breaking news article.',
            'url': 'https://example.com/news/1',
            'urlToImage': 'https://example.com/news/1.jpg',
            'publishedAt': '2023-07-11T10:00:00Z',
            'content': 'Lorem ipsum dolor sit amet.',
          },
          {
            'source': {'id': null, 'name': 'BBC News'},
            'author': null,
            'title': 'News Update',
            'description': 'Latest news update.',
            'url': 'https://example.com/news/2',
            'urlToImage': null,
            'publishedAt': '2023-07-12T12:00:00Z',
            'content': null,
          },
        ],
      };

      // Convert JSON to NewsData object
      final newsData = NewsData.fromJson(jsonData);

      // Verify parsing
      expect(newsData.status, 'ok');
      expect(newsData.totalResults, 2);
      expect(newsData.articles.length, 2);

      // Convert NewsData object back to JSON
      final convertedJson = newsData.toJson();

      // Verify conversion
      expect(convertedJson['status'], 'ok');
      expect(convertedJson['totalResults'], 2);
      expect(convertedJson['articles'].length, 2);
      expect(convertedJson['articles'][0].source.name, 'ABC News');
      expect(convertedJson['articles'][1].source.name, 'BBC News');
    });
  });

  group('Article', () {
    test('fromJson and toJson', () {
      // Sample JSON data for Article
      final Map<String, dynamic> jsonData = {
        'source': {'id': 'abc-news', 'name': 'ABC News'},
        'author': 'John Doe',
        'title': 'Breaking News',
        'description': 'This is a breaking news article.',
        'url': 'https://example.com/news/1',
        'urlToImage': 'https://example.com/news/1.jpg',
        'publishedAt': '2023-07-11T10:00:00Z',
        'content': 'Lorem ipsum dolor sit amet.',
      };

      // Convert JSON to Article object
      final article = Article.fromJson(jsonData);

      // Verify parsing
      expect(article.source.name, 'ABC News'); // Correct way to access name property

      expect(article.author, 'John Doe');
      expect(article.title, 'Breaking News');
      expect(article.description, 'This is a breaking news article.');
      expect(article.url, 'https://example.com/news/1');
      expect(article.urlToImage, 'https://example.com/news/1.jpg');
      expect(article.publishedAt.toIso8601String(), '2023-07-11T10:00:00.000Z');
      expect(article.content, 'Lorem ipsum dolor sit amet.');

      // Convert Article object back to JSON
      final convertedJson = article.toJson();

      // Verify conversion
      expect(convertedJson['source'].name, 'ABC News'); // Correct way to access name property in converted JSON
      expect(convertedJson['author'], 'John Doe');
      expect(convertedJson['title'], 'Breaking News');
      expect(convertedJson['description'], 'This is a breaking news article.');
      expect(convertedJson['url'], 'https://example.com/news/1');
      expect(convertedJson['urlToImage'], 'https://example.com/news/1.jpg');
      expect(convertedJson['publishedAt'], '2023-07-11T10:00:00.000Z');
      expect(convertedJson['content'], 'Lorem ipsum dolor sit amet.');
    });
  });

  group('Source', () {
    test('fromJson and toJson', () {
// Sample JSON data for Source
      final Map<String, dynamic> jsonData = {
        'id': 'abc-news',
        'name': 'ABC News',
      };

// Convert JSON to Source object
      final source = Source.fromJson(jsonData);

// Verify parsing
      expect(source.id, 'abc-news');
      expect(source.name, 'ABC News');

// Convert Source object back to JSON
      final convertedJson = source.toJson();

// Verify conversion
      expect(convertedJson['id'], 'abc-news');
      expect(convertedJson['name'], 'ABC News');
    });
  });
}
