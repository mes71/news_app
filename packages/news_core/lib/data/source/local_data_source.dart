import 'package:news_core/data/db/app_local_storage.dart';
import 'package:news_core/data/model/news_data.dart';
import 'package:news_core/data/model/news_enum.dart';
import 'package:news_core/data/source/data_source.dart';

class LocalDataSource extends DataSource {
  final LocalStorage localStorage;

  LocalDataSource(this.localStorage);

  @override
  Future<List<Article>?> getNews({NewsSort? sort, int page = 1}) async =>
      localStorage.getNews();

  Future<void> cashNews(Article article) async =>
      await localStorage.cashNews(article);
}
