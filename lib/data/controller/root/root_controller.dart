import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:news_app/data/di/di.dart';
import 'package:news_app/data/mapper/article_to_entity.dart';
import 'package:news_app/data/routes/app_pages.dart';
import 'package:news_core/news_core.dart';

class RootController extends GetxController with StateMixin {
  RxList<ConnectivityResult> connectionStatus = [ConnectivityResult.none].obs;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  Rx<NewsCategory> selectedCategory = NewsCategory.apple.obs;
  RxList<Article> newsList = <Article>[].obs;
  Article? selectedArticle;

  late NetworkDataSourceImp localRepository;

  @override
  void onInit() async {
    super.onInit();
    localRepository = di<NetworkDataSourceImp>();
    await initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);


  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    connectionStatus.value = result;
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    late List<ConnectivityResult> result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      log('Couldn\'t check connectivity status', error: e);
      return;
    }
    return _updateConnectionStatus(result);
  }

/*  void changeCategory(NewsCategory category) {
    selectedCategory.value = category;
    getNews();
  }*/

  void selectArticle(Article article) {
    selectedArticle = article;
    Get.toNamed(Routes.NEWS);
  }
/*
  Future<void> getNews() async {
    change(null, status: RxStatus.loading());

    if (connectionStatus.contains(ConnectivityResult.none)) {
      // Load news from local storage if no internet connection
      try {
        List<ArticleEntity> cachedNews = localRepository.getAllNews();
        if (cachedNews.isEmpty) {
          change(null, status: RxStatus.empty());
        } else {
          newsList.clear();
          newsList.addAll(cachedNews.map((e) => ArticleMapper.fromEntity(e)));
          change(null, status: RxStatus.success());
        }
      } catch (e) {
        log('Error loading cached news', error: e);
        change(null, status: RxStatus.error('Error loading cached news'));
      }
    } else {
      // Fetch news from the network
      try {
        NewsData data = await di<NewsRepository>()
            .getNews(category: selectedCategory.value);
        if (data.totalResults == 0) {
          change(null, status: RxStatus.empty());
        } else {
          newsList.clear();
          newsList.addAll(data.articles);
          change(null, status: RxStatus.success());
        }
      } catch (e) {
        log('Error fetching news', error: e);
        change(null, status: RxStatus.error('Error fetching news'));
      }
    }
  }

  Future<void> cashNews(Article news) async {
    await localRepository.addNews(ArticleMapper.toEntity(news));
  }*/

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  void getNews() async{
    await localRepository.getNews();
  }
}
