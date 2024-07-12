import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:news_core/news_core.dart';
import 'package:news_core/source/news_api.dart';

// Mock class for NewsApi to mock its methods
class MockNewsApi extends Mock implements NewsApi {}

void main() {
  group('NewsRepositoryImp', () {
    late NewsRepositoryImp newsRepository;
    late MockNewsApi mockApi;

    setUp(() {
      mockApi = MockNewsApi();
      newsRepository = NewsRepositoryImp(mockApi);
    });

    test('getNews', () async {
      // Define test data
      const category = NewsCategory.microsoft;
      const sort = NewsSort.relevancy;
      final mockNewsData = NewsData(
        status: 'ok',
        totalResults: 10,
        articles: [],
      );

      // Mock the behavior of api.getNews method
      when(mockApi.getNews(category: category, sort: sort))
          .thenAnswer((_) async => mockNewsData.toJson());

      // Call the method under test
      final result =
          await newsRepository.getNews(category: category, sort: sort);

      // Verify that api.getNews was called with the correct parameters
      verify(mockApi.getNews(category: category, sort: sort)).called(1);

      // Verify the result returned from getNews method
      expect(result, mockNewsData);
    });
  });
}
