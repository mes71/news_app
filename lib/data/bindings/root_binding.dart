import 'package:get/get.dart';
import 'package:news_app/data/controller/root/root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RootController>(RootController(), permanent: true);

  }
}
