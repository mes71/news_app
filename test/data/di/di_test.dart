import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:local_storage_core/local_storage_core.dart';
import 'package:local_storage_core/repository/local_storage_repository.dart';
import 'package:local_storage_core/source/data_source_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:news_app/data/di/di.dart';
import 'package:news_core/news_core.dart';
import 'package:news_core/source/news_api.dart';


class MockNewsApi extends Mock implements NewsApi {}

class MockLocalSource extends Mock implements LocalSource {}

void main() {
  final getIt = GetIt.instance;

  setUp(() async {
    getIt.reset(); // Clear all registrations before each test
  });

  group('setup', () {
    test('registers NewsApi as singleton', () {
      setup();
      expect(getIt<NewsApi>(), isInstanceOf<NewsApiImp>());
     
    });

    test('registers NewsRepository with NewsApi dependency', () {

      setup();

      expect(getIt<NewsRepository>(), isInstanceOf<NewsRepositoryImp>());

    });

    test('registers LocalSource as singleton', () {
      setup();
      expect(getIt<LocalSource>(), isInstanceOf<LocalSource>());
    });

    test('registers LocalStorageRepository with LocalSource dependency', () {
      setup();

      expect(getIt<LocalStorageRepository>(), isInstanceOf<LocalStorageRepository>());

    });
  });
}
