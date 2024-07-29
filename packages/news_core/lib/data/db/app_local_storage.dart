import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_core/data/model/model.dart';

abstract class LocalStorage {
  Future<void> cashNews(Article articles);

  List<Article>? getNews();
}

class AppLocalStorage extends LocalStorage {
  late Box<Article> articlesBox;

  AppLocalStorage._();

  // Factory constructor
  static Future<AppLocalStorage> create() async {
    var instance = AppLocalStorage._();
    await instance._initLocalStorage();
    return instance;
  }

  Future<void> _initLocalStorage() async {
    articlesBox = await Hive.openBox('ArticleBox');
  }

  @override
  Future<void> cashNews(Article articles) async {
    await articlesBox.add(articles);
  }

  @override
  List<Article>? getNews() => articlesBox.values.toList();
}
