import 'package:flutter_test/flutter_test.dart';
import 'package:news_core/news_core.dart';


void main() {
  group('NewsSort', () {
    test('toString', () {
      expect(NewsSort.relevancy.toString(), 'NewsSort.relevancy');
      expect(NewsSort.popularity.toString(), 'NewsSort.popularity');
      expect(NewsSort.publishedAt.toString(), 'NewsSort.publishedAt');
    });

    test('switch statement', () {
      NewsSort sort = NewsSort.relevancy;
      String result = '';

      switch (sort) {
        case NewsSort.relevancy:
          result = 'Relevant';
          break;
        case NewsSort.popularity:
          result = 'Popular';
          break;
        case NewsSort.publishedAt:
          result = 'Published';
          break;
      }

      expect(result, 'Relevant');
    });
  });

  group('NewsCategory', () {
    test('toString', () {
      expect(NewsCategory.apple.toString(), 'NewsCategory.apple');
      expect(NewsCategory.tesla.toString(), 'NewsCategory.tesla');
      expect(NewsCategory.microsoft.toString(), 'NewsCategory.microsoft');
      expect(NewsCategory.google.toString(), 'NewsCategory.google');
    });

    test('switch statement', () {
      NewsCategory category = NewsCategory.apple;
      String result = '';

      switch (category) {
        case NewsCategory.apple:
          result = 'Apple News';
          break;
        case NewsCategory.tesla:
          result = 'Tesla News';
          break;
        case NewsCategory.microsoft:
          result = 'Microsoft News';
          break;
        case NewsCategory.google:
          result = 'Google News';
          break;
      }

      expect(result, 'Apple News');
    });
  });
}
