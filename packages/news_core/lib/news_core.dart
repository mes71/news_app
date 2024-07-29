library news_core;

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_core/data/db/app_local_storage.dart';
import 'package:news_core/data/model/model.dart';

export 'package:intl/intl.dart';

export 'data/model/model.dart';

Future<void> initNewsCore() async {
  //load .env file it has api key
  await dotenv.load(fileName: 'packages/news_core/.env');

  //local storage
  await Hive.initFlutter();
  Hive.registerAdapter(ArticleAdapter());
  Hive.registerAdapter(SourceAdapter());
  Hive.registerAdapter(NewsCategoryAdapter());

  await AppLocalStorage.create();
}
