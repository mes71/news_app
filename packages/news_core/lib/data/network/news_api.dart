import 'package:news_core/data/model/model.dart';
import 'package:news_core/data/utils/date_time_utils.dart';

import 'dio_client.dart';

abstract class NewsApi {
  Future<Map<String, dynamic>> _getNews(
      {NewsCategory? category, NewsSort? sort, required int page});

  Future<Map<String, dynamic>> getGoogleNews({NewsSort? sort, int page = 1});

  Future<Map<String, dynamic>> getAppleNews({NewsSort? sort, int page = 1});

  Future<Map<String, dynamic>> getMicrosoftNews({NewsSort? sort, int page = 1});

  Future<Map<String, dynamic>> getTeslaNews({NewsSort? sort, int page = 1});
}

class NewsApiImp extends NewsApi {
  DateTime now = DateTime.now();
  DioClient dioClient = DioClient();

  @override
  Future<Map<String, dynamic>> _getNews(
      {NewsCategory? category, NewsSort? sort, required int page}) async {
    Map<String, dynamic> query = {
      'q': category?.name ?? NewsCategory.apple.name,
      'sort': sort?.name ?? NewsSort.popularity.name,
      'from': now.subtract(const Duration(days: 1)).formatedDate,
      'to': now.formatedDate,
      'pageSize': 10,
      'page': page
    };
    var res = await dioClient.dio.get("/everything", queryParameters: query);
    return res.data;
  }

  @override
  Future<Map<String, dynamic>> getAppleNews(
          {NewsSort? sort, int page = 1}) async =>
      await _getNews(category: NewsCategory.apple, sort: sort, page: page);

  @override
  Future<Map<String, dynamic>> getMicrosoftNews(
          {NewsSort? sort, int page = 1}) async =>
      await _getNews(category: NewsCategory.microsoft, sort: sort, page: page);

  @override
  Future<Map<String, dynamic>> getTeslaNews(
          {NewsSort? sort, int page = 1}) async =>
      await _getNews(category: NewsCategory.tesla, sort: sort, page: page);

  @override
  Future<Map<String, dynamic>> getGoogleNews(
          {NewsSort? sort, int page = 1}) async =>
      await _getNews(category: NewsCategory.google, sort: sort, page: page);
}
