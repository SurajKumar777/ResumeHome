import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:resumehome/app/modules/resume_screen/controllers/resume_screen_controller.dart';
import 'package:resumehome/app/routes/app_pages.dart';
import 'package:resumehome/app/widgets/CustomButton.dart';
import 'package:resumehome/app/widgets/custom_text.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final resumeC = Get.find<ResumeScreenController>();
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
      body: Obx(
        () => resumeC.ResumesList.isEmpty
            ? const Center(
                child: Text(
                  'No resume yet',
                  style: TextStyle(fontSize: 20),
                ),
              )
            : Wrap(
                children: resumeC.ResumesList.map((e) => Container(
                      width: Get.width * 0.3,
                      height: 100,
                      color: Colors.teal,
                      child:
                          Center(child: CustomText(text: "Resume ${e.length}")),
                    )).toList(),
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
