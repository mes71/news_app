import 'package:news_core/data/model/model.dart';

abstract class DataSource {
  Future<List<Article>?> getNews({NewsSort? sort, int page = 1});
}