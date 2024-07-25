// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsCategoryAdapter extends TypeAdapter<NewsCategory> {
  @override
  final int typeId = 3;

  @override
  NewsCategory read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 1:
        return NewsCategory.apple;
      case 2:
        return NewsCategory.tesla;
      case 3:
        return NewsCategory.microsoft;
      case 4:
        return NewsCategory.google;
      default:
        return NewsCategory.apple;
    }
  }

  @override
  void write(BinaryWriter writer, NewsCategory obj) {
    switch (obj) {
      case NewsCategory.apple:
        writer.writeByte(1);
        break;
      case NewsCategory.tesla:
        writer.writeByte(2);
        break;
      case NewsCategory.microsoft:
        writer.writeByte(3);
        break;
      case NewsCategory.google:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
