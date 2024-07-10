import 'package:news_core/model/model.dart';
import 'package:news_core/source/news_api.dart';

abstract class NewsRepository {
  Future<NewsData> getNews({NewsCategory? category, NewsSort? sort});
}

class NewsRepositoryImp extends NewsRepository {
  NewsRepositoryImp(this.api);

  final NewsApi api;

  @override
  Future<NewsData> getNews({NewsCategory? category, NewsSort? sort}) async {
    var json =  await api.getNews(category: category, sort: sort);

    return NewsData.fromJson(json);
  }
}
