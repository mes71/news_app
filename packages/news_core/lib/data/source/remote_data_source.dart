import 'package:news_core/data/model/model.dart';
import 'package:news_core/data/network/news_api.dart';

abstract class NetworkDataSource {
  Future<List<Article>> getNews({NewsSort? sort, int page = 1});
}

class NetworkDataSourceImp extends NetworkDataSource {
  NetworkDataSourceImp(this.newsApi);

  final NewsApi newsApi;

  @override
  Future<List<Article>> getNews({NewsSort? sort, int page = 1}) async {
    Future.wait([
      newsApi.getTeslaNews(page: page, sort: sort),
      newsApi.getMicrosoftNews(page: page, sort: sort),
      newsApi.getAppleNews(page: page, sort: sort),
      newsApi.getGoogleNews(page: page, sort: sort),
    ]).then(
      (value) {
        for (var item in value) {
          print(item);
        }
      },
    );
    return [Article()];
  }
}
