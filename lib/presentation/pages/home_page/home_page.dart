import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/data/controller/root/root_controller.dart';
import 'package:news_app/presentation/widgets/article_card.dart';
import 'package:news_core/news_core.dart';

class HomePage extends GetView<RootController> {
  HomePage({super.key}) {
    controller.getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: newsListVIew()),
    );
  }

  Widget newsListVIew() {
    return controller.obx(
        (state) => ListView.builder(
            itemBuilder: (context, index) {
              Article article = controller.newsList[index];
              controller.cashNews(article);
              return ArticleCard(
                article: article,
                onPressed: () {
                  controller.selectArticle(article);
                },
              );
            },
            itemCount: controller.newsList.length),
        onLoading: const Center(
          child: CircularProgressIndicator(),
        ),
        onEmpty: emptyStateWidget(),
        onError: errorStateWidget);
  }

  Widget errorStateWidget(error) => const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline_outlined,
              color: Colors.redAccent,
            ),
            Text("Some thing is wrong")
          ],
        ),
      );

  Widget emptyStateWidget() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(),
        Icon(
          Icons.hourglass_empty_rounded,
          color: Colors.redAccent,
          size: 50,
        ),
        Text("Not News Found")
      ],
    );
  }
}
