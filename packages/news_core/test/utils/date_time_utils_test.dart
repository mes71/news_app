import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:news_core/utils/date_time_utils.dart';

void main() {
  group('DateTime Extension', () {
    test('formatDate', () {
      // Test case 1: Valid date
      DateTime date1 = DateTime(2023, 7, 15);
      expect(date1.formatedDate, DateFormat('yyyy-MM-dd').format(date1));

      // Test case 2: Another valid date
      DateTime date2 = DateTime(2024, 3, 1);
      expect(date2.formatedDate, DateFormat('yyyy-MM-dd').format(date2));

      // Test case 3: Edge case with date close to boundary
      DateTime date3 = DateTime(2000, 1, 1);
      expect(date3.formatedDate, DateFormat('yyyy-MM-dd').format(date3));

      // Test case 4: Null check (if applicable in your context)
      DateTime? date4;
      expect(() => date4!.formatedDate, throwsNoSuchMethodError);
    });
  });
}
