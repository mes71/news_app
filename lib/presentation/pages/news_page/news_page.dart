import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/data/controller/root/root_controller.dart';
import 'package:news_core/news_core.dart';

class NewsPage extends GetView<RootController> {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: CachedNetworkImage(
                      imageUrl: controller.selectedArticle?.urlToImage ?? '',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200,
                      placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(),
                          )),
                )),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.selectedArticle?.title ?? "No Title",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    if (controller.selectedArticle?.author != null)
                      Text(
                        'By ${controller.selectedArticle?.author}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    const SizedBox(height: 10),
                    Text(
                      DateFormat('yyyy-MM-dd')
                          .format(controller.selectedArticle!.publishedAt),
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 20),
                    if (controller.selectedArticle?.description != null)
                      Text(
                        controller.selectedArticle?.description ??
                            'No description',
                        style: const TextStyle(fontSize: 18),
                      ),
                    const SizedBox(height: 10),
                    Text(
                      controller.selectedArticle?.content ?? '',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
