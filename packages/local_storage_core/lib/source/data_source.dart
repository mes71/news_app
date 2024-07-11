import 'package:local_storage_core/entity/article_entity.dart';

abstract class LocalDataSource {

  Future<void> addNews(ArticleEntity news);

  Future<void> addAllNews(List<ArticleEntity> news);

  List<ArticleEntity> getAllNews();

  Future<void> clearBox();
}
