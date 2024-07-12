import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_storage_core/entity/article_entity.dart';
import 'package:local_storage_core/local_storage_core.dart';

import 'data_source.dart';

class LocalSource extends LocalDataSource {
  late Box<ArticleEntity> newBox;

  LocalSource({bool skipInit = false}) {
    if (!skipInit) {
      _init();
    }
  }

  Future<void> _init() async {
    await initLocalStorage();
  }

  @visibleForTesting
  Future<void> initLocalStorageForTest() async {
    newBox = await Hive.openBox<ArticleEntity>('NewsBox');
  }

  Future<void> initLocalStorage() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ArticleEntityAdapter());
    Hive.registerAdapter(SourceAdapter());
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
