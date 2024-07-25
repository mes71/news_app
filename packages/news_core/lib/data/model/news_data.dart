import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:news_core/data/model/model.dart';

part 'news_data.freezed.dart';
part 'news_data.g.dart';

@freezed
sealed class NewsData with _$NewsData {
  const factory NewsData({
    required String status,
    required int totalResults,
    required List<Article> articles,
  }) = _NewsData;

  factory NewsData.fromJson(Map<String, dynamic> json) =>
      _$NewsDataFromJson(json);
}

@freezed
@HiveType(typeId: 1)
sealed class Article  with _$Article{
  @With<HiveObjectMixin>()
   factory Article({
    @HiveField(1) Source? source,
    @HiveField(2) String? author,
    @HiveField(3) String? title,
    @HiveField(4) String? description,
    @HiveField(5) String? url,
    @HiveField(6) String? urlToImage,
    @HiveField(7) DateTime? publishedAt,
    @HiveField(8) String? content,
    @HiveField(9) NewsCategory? category,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
@HiveType(typeId: 2)
sealed class Source with _$Source{
  @With<HiveObjectMixin>()
  factory Source({
    @HiveField(1) String? id,
    @HiveField(2) String? name,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
