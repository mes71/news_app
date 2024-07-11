import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'news_entity.g.dart';

@HiveType(typeId: 1)
class Source extends HiveObject {
  @HiveField(0)
  String? id;

  @HiveField(1)
  String name;

  Source({
    this.id,
    required this.name,
  });
  
}

@HiveType(typeId: 2)
class Article extends HiveObject {
  @HiveField(0)
  Source source;

  @HiveField(1)
  String? author;

  @HiveField(2)
  String title;

  @HiveField(3)
  String? description;

  @HiveField(4)
  String url;

  @HiveField(5)
  String? urlToImage;

  @HiveField(6)
  DateTime publishedAt;

  @HiveField(7)
  String? content;

  @HiveField(8)
  Uint8List? imageData;

  Article(
      {required this.source,
      this.author,
      required this.title,
      this.description,
      required this.url,
      this.urlToImage,
      required this.publishedAt,
      this.content,
      required this.imageData});

}
