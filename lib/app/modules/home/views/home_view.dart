import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:resumehome/app/routes/app_pages.dart';
import 'package:resumehome/app/widgets/CustomButton.dart';
import 'package:resumehome/app/widgets/custom_text.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: CustomText(
          text: "ResumeHomes",
          color: Colors.white,
          size: 20,
          bold: true,
        ),
      ),
      body: const Center(
        child: Text(
          'No resume yet',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Get.toNamed(Routes.RESUME_SCREEN);
        },
        child: CustomButton(
          text: "Create Resume",
        ),
      ),
    );
  }
}
