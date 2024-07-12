import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:local_storage_core/local_storage_core.dart';
import 'package:local_storage_core/source/data_source_impl.dart';
import 'package:news_app/main.dart';

final GetIt di = GetIt.instance;

void main() {

  setUp(() {
    di.registerSingleton<LocalSource>(LocalSource());
    di.registerSingleton<LocalStorageRepository>(
        LocalStorageRepository(di<LocalSource>()));
  });


  testWidgets('MyApp widget test', (WidgetTester tester) async {
    // Build the MyApp widget
    await tester.pumpWidget(const MyApp());



    // Verify that the MaterialApp theme is set correctly
    final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(materialApp.theme?.colorScheme.primary, Color(0xff6f43c0));

    // Verify that the initial route is set correctly
    expect(materialApp.initialRoute, equals('/'));

    // You can add more test cases here to verify the behavior of the widget

  });
}
