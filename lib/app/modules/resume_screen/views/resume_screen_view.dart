import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:resumehome/app/widgets/CustomButton.dart';
import 'package:resumehome/app/widgets/CustomInput.dart';
import 'package:resumehome/app/widgets/custom_text.dart';
import 'package:resumehome/app/widgets/education_card.dart';
import 'package:resumehome/app/widgets/experience_card.dart';
import 'package:resumehome/app/widgets/skills_card.dart';

import '../controllers/resume_screen_controller.dart';

class ResumeScreenView extends GetView<ResumeScreenController> {
  const ResumeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
          onTap: controller.ResumeSaveHandler,
          child: CustomButton(text: "Save Resume")),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomInput(
                    hintText: "Your Name",
                    controller: controller.nameController,
                    validation: null,
                    border: InputBorder.none,
                    inputFontSize: 14,
                    bold: true,
                  ),
                  CustomInput(
                    hintText: "Designation",
                    controller: controller.designationController,
                    inputFontSize: 12,
                    validation: null,
                    border: InputBorder.none,
                  ),
                  CustomInput(
                    hintText: "Short summary about you",
                    controller: controller.bioController,
                    inputFontSize: 12,
                    validation: null,
                    border: InputBorder.none,
                  ),
                  const Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Get.width * 0.45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Work Experience",
                                  color: Colors.black,
                                  bold: true,
                                  size: 16,
                                ),
                                if (controller.ExperienceList.isNotEmpty)
                                  SizedBox(
                                    height: 10,
                                  ),
                                if (controller.ExperienceList.isNotEmpty)
                                  Column(
                                    children: controller.ExperienceList.map(
                                        (e) => Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
                                              width: Get.width * 0.3,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: e["designation"],
                                                    bold: true,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  CustomText(
                                                    text: e["company"],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  CustomText(
                                                    text: e["summary"],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      CustomText(
                                                        text: e["from"],
                                                      ),
                                                      CustomText(
                                                        text: e["to"],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )).toList(),
                                  ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isExperiencePopup.value = true;
                                  },
                                  child: CustomButton(
                                    text: "Add Experience",
                                    textSize: 10,
                                    height: 20,
                                    width: 100,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Education",
                                  color: Colors.black,
                                  bold: true,
                                  size: 16,
                                ),
                                if (controller.EducationList.isNotEmpty)
                                  SizedBox(
                                    height: 10,
                                  ),
                                if (controller.EducationList.isNotEmpty)
                                  Column(
                                    children: controller.EducationList.map(
                                        (e) => Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 10),
                                              width: Get.width * 0.3,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: e["education"],
                                                    bold: true,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  CustomText(
                                                    text: e["board"],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      CustomText(
                                                        text: e["from"],
                                                      ),
                                                      CustomText(
                                                        text: e["to"],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )).toList(),
                                  ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isEducationPopup.value = true;
                                  },
                                  child: CustomButton(
                                    text: "Add Education",
                                    textSize: 10,
                                    height: 20,
                                    width: 100,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: Get.width * 0.45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Skills",
                              color: Colors.black,
                              bold: true,
                              size: 16,
                            ),
                            if (controller.SkillsList.isNotEmpty)
                              SizedBox(
                                height: 10,
                              ),
                            if (controller.SkillsList.isNotEmpty)
                              Wrap(
                                children:
                                    controller.SkillsList.map((e) => Container(
                                          margin: EdgeInsets.only(
                                              right: 5, bottom: 5),
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.grey,
                                          ),
                                          child: CustomText(
                                            text: e['skills'],
                                            color: Colors.white,
                                          ),
                                        )).toList(),
                              ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                controller.isSkillsPopup.value = true;
                              },
                              child: CustomButton(
                                text: "Add Skills",
                                textSize: 10,
                                height: 20,
                                width: 100,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              if (controller.isExperiencePopup.value ||
                  controller.isEducationPopup.value ||
                  controller.isSkillsPopup.value)
                InkWell(
                  onTap: () {
                    if (controller.isExperiencePopup.value == true) {
                      controller.isExperiencePopup.value = false;
                    } else if (controller.isEducationPopup.value == true) {
                      controller.isEducationPopup.value = false;
                    } else {
                      controller.isSkillsPopup.value = false;
                    }
                  },
                  child: Container(
                    height: Get.height,
                    width: Get.width,
                    color: Colors.black54,
                    child: Center(
                      child: Container(
                        width: Get.width * 0.7,
                        height: Get.height / 2,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: controller.isExperiencePopup.value
                            ? ExperienceCard()
                            : controller.isEducationPopup.value
                                ? EducationCard()
                                : controller.isSkillsPopup.value
                                    ? SkillsCard()
                                    : null,
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
