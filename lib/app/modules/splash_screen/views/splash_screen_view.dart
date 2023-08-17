import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:resumehome/app/widgets/custom_text.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomText(
          text: "Welcome \n to \n ResumesHome",
          color: Colors.teal,
          size: 20,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
