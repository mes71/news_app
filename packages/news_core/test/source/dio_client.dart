import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:news_core/source/dio_client.dart';

void main() {
  group('DioClient', () {
    late DioClient dioClient;

    setUp(() {
      dioClient = DioClient();
    });

    test('Initialization', () {
      // Verify base options are correctly set
      final BaseOptions baseOptions = BaseOptions(
        baseUrl: 'https://newsapi.org/v2',
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'X-Api-Key': '5deebe04323f4d0faa04863c1c31ed4d',
        },
      );
      expect(dioClient.dio.options.baseUrl, baseOptions.baseUrl);
      expect(dioClient.dio.options.connectTimeout, baseOptions.connectTimeout);
      expect(dioClient.dio.options.receiveTimeout, baseOptions.receiveTimeout);
      expect(dioClient.dio.options.headers, baseOptions.headers);
    });
  });
}
