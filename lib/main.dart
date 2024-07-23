import 'package:flutter/material.dart';
import "package:flutter_dotenv/flutter_dotenv.dart" as DotEnv;
import 'package:get/get.dart';
import 'package:news_app/data/di/di.dart';
import 'package:news_app/data/routes/routes.dart';

Future<void> main() async {
 await DotEnv.dotenv.load(fileName: 'packages/news_core/.env');
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter News',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    );
  }
}
