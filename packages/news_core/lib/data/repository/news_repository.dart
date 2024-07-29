import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:news_core/data/model/model.dart';
import 'package:news_core/data/source/local_data_source.dart';
import 'package:news_core/data/source/remote_data_source.dart';

class NewsRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  NewsRepository(
      {required this.remoteDataSource, required this.localDataSource});

  Future<List<Article>?> getNews() async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());

    if (connectivityResult.contains(ConnectivityResult.none)) {
      return await localDataSource.getNews();
    } else {
      return await remoteDataSource.getNews();
    }
  }

  Future<void> cashNews(Article article) async =>
      await localDataSource.cashNews(article);
}
