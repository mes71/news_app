import 'package:get_it/get_it.dart';
import 'package:local_storage_core/local_storage_core.dart';
import 'package:local_storage_core/repository/local_storage_repository.dart';
import 'package:local_storage_core/source/data_source_impl.dart';
import 'package:news_core/news_core.dart';
import 'package:news_core/source/news_api.dart';

final di = GetIt.instance;

void setup({bool skipInit = false}) {
  //news core
  di.registerSingleton<NewsApi>(NewsApiImp());
  di.registerSingleton<NewsRepository>(NewsRepositoryImp(di<NewsApi>()));

//local Storage
  di.registerSingleton<LocalSource>(LocalSource(skipInit: skipInit));
  di.registerSingleton<LocalStorageRepository>(
      LocalStorageRepository(di<LocalSource>()));
}
