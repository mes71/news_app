import 'package:local_storage_core/entity/article_entity.dart';
import 'package:local_storage_core/source/data_source.dart';

abstract class LocalRepository {
  Future<void> addNews(ArticleEntity news);

  Future<void> addAllNews(List<ArticleEntity> news);

  List<ArticleEntity> getAllNews();

  Future<void> clearBox();
}

class LocalStorageRepository extends LocalRepository {
  final LocalDataSource dataSource;

  LocalStorageRepository(this.dataSource);

  @override
  Future<void> addAllNews(List<ArticleEntity> news) async =>
      await dataSource.addAllNews(news);

  @override
  Future<void> addNews(ArticleEntity news) async =>
      await dataSource.addNews(news);

  @override
  Future<void> clearBox() async => await dataSource.clearBox();

  @override
  List<ArticleEntity> getAllNews() => dataSource.getAllNews();
}
