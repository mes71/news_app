import 'package:get_it/get_it.dart';
import 'package:news_core/data/db/app_local_storage.dart';
import 'package:news_core/data/network/news_api.dart';
import 'package:news_core/data/repository/news_repository.dart';
import 'package:news_core/data/source/local_data_source.dart';
import 'package:news_core/data/source/remote_data_source.dart';

final di = GetIt.instance;

Future<void> setup({bool skipInit = false}) async {
  //news core
  di.registerSingleton<NewsApi>(NewsApiImp());
  di.registerSingleton<RemoteDataSource>(RemoteDataSource(di<NewsApi>()));
  di.registerSingleton<AppLocalStorage>(await AppLocalStorage.create());
  di.registerSingleton<LocalDataSource>(LocalDataSource(di<AppLocalStorage>()));
  di.registerSingleton<NewsRepository>(NewsRepository(
      localDataSource: di<LocalDataSource>(),
      remoteDataSource: di<RemoteDataSource>()));
}
