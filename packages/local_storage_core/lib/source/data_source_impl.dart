import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_storage_core/entity/article_entity.dart';

import 'data_source.dart';

class LocalSource extends LocalDataSource {
  late Box<ArticleEntity> newBox;

  LocalSource() {
    _init();
  }

  Future<void> _init() async {
    await initLocalStorage();
  }

  Future<void> initLocalStorage() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ArticleEntityAdapter());
    newBox = await Hive.openBox<ArticleEntity>('NewsBox');
  }

  @override
  Future<void> addAllNews(List<ArticleEntity> news) async =>
      await newBox.addAll(news);

  @override
  Future<void> addNews(ArticleEntity news) async => await newBox.add(news);

  @override
  Future<void> clearBox() async => await newBox.clear();

  @override
  List<ArticleEntity> getAllNews() => newBox.values.toList();
}
