import 'package:hive/hive.dart';

part 'news_enum.g.dart';

enum NewsSort {
  relevancy,
  popularity,
  publishedAt,
}

@HiveType(typeId: 3)
enum NewsCategory {
  @HiveField(1)
  apple,
  @HiveField(2)
  tesla,
  @HiveField(3)
  microsoft,
  @HiveField(4)
  google,
}
