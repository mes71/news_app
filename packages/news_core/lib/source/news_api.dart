import 'package:news_core/model/model.dart';
import 'package:news_core/source/dio_client.dart';
import 'package:news_core/utils/date_time_utils.dart';

abstract class NewsApi {
  Future<Map<String, dynamic>> getNews(
      {NewsCategory? category, NewsSort? sort});
}

class NewsApiImp extends NewsApi {
  DateTime now = DateTime.now();

  DioClient dioClient = DioClient();

  @override
  Future<Map<String, dynamic>> getNews(
      {NewsCategory? category, NewsSort? sort}) async {
    Map<String, dynamic> query = {
      'q': category?.name ?? NewsCategory.apple.name,
      'sort': sort?.name ?? NewsSort.popularity.name,
      'from': now.subtract(const Duration(days: 1)).formatedDate,
      'to': now.formatedDate
    };
    var res = await dioClient.dio.get("/everything", queryParameters: query);

    return res.data;
  }
}
