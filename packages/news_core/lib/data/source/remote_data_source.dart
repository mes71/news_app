import 'dart:developer';

import 'package:news_core/data/model/model.dart';
import 'package:news_core/data/network/news_api.dart';
import 'package:news_core/data/source/data_source.dart';

class NetworkDataSourceImp extends DataSource {
  NetworkDataSourceImp(this.newsApi);

  final NewsApi newsApi;

  @override
  Future<List<Article>?> getNews({NewsSort? sort, int page = 1}) async {
    return await Future.wait([
      newsApi.getTeslaNews(page: page, sort: sort),
      newsApi.getMicrosoftNews(page: page, sort: sort),
      newsApi.getAppleNews(page: page, sort: sort),
      newsApi.getGoogleNews(page: page, sort: sort),
    ]).then(
      (value) {
        List<Article>? result = [];
        int maxLength =
            value.map((list) => list.length).reduce((a, b) => a > b ? a : b);

        for (int i = 0; i < maxLength; i++) {
          for (int j = 0; j < value.length; j++) {
            if (i < value[j].length) {
              result.add(value[j][i]);
            }
          }
        }
        log('there is 2');
        return result.isNotEmpty ? result : null;
      },
    );
  }
}
