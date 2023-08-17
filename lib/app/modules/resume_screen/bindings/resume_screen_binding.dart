import 'package:get/get.dart';

import '../controllers/resume_screen_controller.dart';

class ResumeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResumeScreenController>(
      () => ResumeScreenController(),
    );
  }
}
