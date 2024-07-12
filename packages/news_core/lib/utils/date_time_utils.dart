import 'package:intl/intl.dart';

extension DataTimeExtionsion on DateTime {
  String get formatedDate => DateFormat("yyyy-MM-dd").format(this);
}

