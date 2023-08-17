import 'package:get/get.dart';
import 'package:resumehome/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  //TODO: Implement SplashScreenController

  final count = 0.obs;
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      return Get.offAllNamed(Routes.HOME);
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
