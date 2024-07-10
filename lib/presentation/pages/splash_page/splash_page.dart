import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/data/controller/root/root_controller.dart';
import 'package:news_app/data/routes/app_pages.dart';

class SplashPage extends GetView<RootController> {
  SplashPage({super.key}) {
    Future.delayed(
      const Duration(milliseconds: 3000),
      () {
        Get.offNamedUntil(Routes.HOME, (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.purpleAccent, Colors.greenAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          children: [
            const Positioned(
              bottom: 50,
              child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: Colors.redAccent,
                  )),
            ),
            Positioned(
              bottom: 10,
              child: Obx(() {
                return Visibility(
                    visible: controller.connectionStatus
                        .contains(ConnectivityResult.none),
                    child: const Text(
                        "You are offline, will access to cached data"));
              }),
            ),
          ],
        ),
      ),
    );
  }
}
