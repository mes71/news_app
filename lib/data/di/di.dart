import 'package:get_it/get_it.dart';
import 'package:news_core/news_core.dart';
import 'package:news_core/source/news_api.dart';

final di = GetIt.instance;

void setup() {
  di.registerSingleton<NewsApi>(NewsApiImp());
  di.registerSingleton<NewsRepository>(NewsRepositoryImp(di<NewsApi>()));
}
