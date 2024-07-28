import 'package:news_core/data/model/model.dart';
import 'package:news_core/data/source/data_source.dart';

class NewsRepository {
  final DataSource remoteDataSource;

  NewsRepository({required this.remoteDataSource});

  Future<List<Article>?> getNews() async {
    return await remoteDataSource.getNews();
  }
}
