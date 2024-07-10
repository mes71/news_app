import 'package:news_core/model/model.dart';
import 'package:news_core/source/dio_cilent.dart';

abstract class NewsApi {
  Future<NewsData> getNews({NewsCategory? category, NewsSort? sort});
}

class NewsApiImp extends NewsApi {
  DateTime now = DateTime.now();

  DioClient dioClient = DioClient();

  @override
  Future<NewsData> getNews({NewsCategory? category, NewsSort? sort}) async {
    Map<String, dynamic> query = {
      'q': category?.name ?? NewsCategory.apple,
      'sort': sort?.name ?? NewsSort.popularity,
      'from': now.subtract(const Duration(days: 1)),
      'to': now
    };
    var res = await dioClient.dio.get("/everything", queryParameters: query);



    return res.data;
  }
}
