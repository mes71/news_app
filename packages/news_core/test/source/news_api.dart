import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:news_core/model/model.dart';
import 'package:news_core/source/dio_client.dart';
import 'package:news_core/source/news_api.dart';
import 'package:news_core/utils/date_time_utils.dart';

class MockDioClient extends Mock implements DioClient {}

void main() {
  group('NewsApiImp', () {
    late NewsApiImp newsApi;
    late MockDioClient mockDioClient;

    setUp(() {
      mockDioClient = MockDioClient();
      newsApi = NewsApiImp();
      newsApi.dioClient = mockDioClient;
    });

    test('getNews with category and sort', () async {
      // Define test data
      const category = NewsCategory.microsoft;
      const sort = NewsSort.relevancy;
      final now = DateTime.now();

      // Mock response data
      final responseData = {'status': 'ok', 'totalResults': 10, 'articles': []};
      when(mockDioClient.dio
              .get('', queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => Response(
              data: responseData,
              statusCode: 200,
              requestOptions: RequestOptions()));

      // Call the method under test
      final result = await newsApi.getNews(category: category, sort: sort);

      // Verify the parameters passed to DioClient's get method
      verify(mockDioClient.dio.get('/everything', queryParameters: {
        'q': category.name,
        'sort': sort.name,
        'from': now.subtract(const Duration(days: 1)).formatedDate,
        'to': now.formatedDate,
      })).called(1);

      // Verify the result returned from getNews method
      expect(result, responseData);
    });

    test('getNews with default values', () async {
      // Mock response data
      final responseData = {'status': 'ok', 'totalResults': 10, 'articles': []};
      when(mockDioClient.dio
              .get('', queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => Response(
                data: responseData,
                statusCode: 200,
                requestOptions: RequestOptions(),
              ));

      // Call the method under test with default parameters
      final result = await newsApi.getNews();

      // Verify the parameters passed to DioClient's get method with default values
      verify(mockDioClient.dio.get('/everything', queryParameters: {
        'q': NewsCategory.apple.name,
        'sort': NewsSort.popularity.name,
        'from': anyNamed('from'),
        'to': anyNamed('to'),
      })).called(1);

      // Verify the result returned from getNews method
      expect(result, responseData);
    });
  });
}
