import 'dart:developer';

import 'package:get/get.dart';
import 'package:news_app/data/di/di.dart';
import 'package:news_app/data/routes/app_pages.dart';
import 'package:news_core/data/repository/news_repository.dart';
import 'package:news_core/news_core.dart';

class RootController extends GetxController with StateMixin {
  Rx<NewsCategory> selectedCategory = NewsCategory.apple.obs;
  RxList<Article> newsList = <Article>[].obs;
  Article? selectedArticle;

  late NewsRepository newsRepository;

  @override
  void onInit() {
    super.onInit();
    newsRepository = di<NewsRepository>();
  }

  void selectArticle(Article article) {
    selectedArticle = article;
    Get.toNamed(Routes.NEWS);
  }

  void getNews() async {
    change(null, status: RxStatus.loading());

    try {
      List<Article>? data = await newsRepository.getNews();

      log(data.toString());
      if (data?.isEmpty ?? false) {
        change(null, status: RxStatus.empty());
      } else {
        newsList.clear();
        newsList.addAll(data!);
        change(null, status: RxStatus.success());
      }
    } catch (e) {
      log('Error fetching news', error: e);
      change(null, status: RxStatus.error('Error fetching news'));
    }
  }

  Future<void> cashNews(Article article) async {
    await newsRepository.cashNews(article);
  }
}
