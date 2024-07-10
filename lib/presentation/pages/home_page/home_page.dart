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
      body: SafeArea(
        child: Column(
          children: [categoryWidget(), Expanded(child: newsListVIew())],
        ),
      ),
    );
  }

  Widget newsListVIew() {
    return controller.obx(
        (state) => ListView.builder(
            itemBuilder: (context, index) => ArticleCard(
                  article: controller.newsList[index],
                  onPressed: () {
                    controller.selectArticle(controller.newsList[index]);
                  },
                ),
            itemCount: controller.newsList.length),
        onLoading: const Center(
          child: CircularProgressIndicator(),
        ),
        onEmpty: emptyStateWidget(),
        onError: errorStateWidget);
  }

  Widget errorStateWidget(error) => const Center(
        child: Column(
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

  Widget categoryWidget() {
    return Obx(() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Wrap(
            spacing: 5,
            children: NewsCategory.values
                .map(
                  (e) => ChoiceChip(
                    padding: const EdgeInsets.all(8),
                    label: Text('${e.name}'),
                    selectedColor: Colors.green,
                    onSelected: (bool selected) {
                      controller.changeCategory(e);
                    },
                    selected: controller.selectedCategory.value == e,
                  ),
                )
                .toList(),
          ),
        ));
  }
}
