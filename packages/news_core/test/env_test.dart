import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group('test .env file and value of it',() {
    
    test('load file', () async{

      await dotenv.load(fileName: '.env');


    },);
    test('get Api Key', () async{

      await dotenv.load(fileName: '.env');
      expect(dotenv.env['API_KEY'], '5deebe04323f4d0faa04863c1c31ed4d');

    },);

    
  },);
  
  
  
  
  
}