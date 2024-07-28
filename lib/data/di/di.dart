import 'package:get_it/get_it.dart';
import 'package:news_core/data/network/news_api.dart';
import 'package:news_core/data/repository/news_repository.dart';
import 'package:news_core/data/source/remote_data_source.dart';

final di = GetIt.instance;

void setup({bool skipInit = false}) {
  //news core
  di.registerSingleton<NewsApi>(NewsApiImp());
  di.registerSingleton<NetworkDataSourceImp>(
      NetworkDataSourceImp(di<NewsApi>()));
  di.registerSingleton<NewsRepository>(
      NewsRepository(remoteDataSource: di<NetworkDataSourceImp>()));
}
