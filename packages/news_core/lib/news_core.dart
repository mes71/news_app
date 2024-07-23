library news_core;

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_core/data/network/dio_client.dart';


export 'data/model/model.dart';
export 'data/source/remote_data_source.dart';
export 'package:intl/intl.dart';



void main() async {
  await dotenv.load(fileName: '.env');
}