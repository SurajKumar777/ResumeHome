import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:resumehome/app/modules/home/controllers/home_controller.dart';
import 'package:resumehome/app/routes/app_pages.dart';

class ResumeScreenController extends GetxController {
  //TODO: Implement ResumeScreenController
  final TextEditingController nameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController designationController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final TextEditingController fromController = TextEditingController();
  final TextEditingController experienceSummery = TextEditingController();
  final TextEditingController experienceDesignation = TextEditingController();
  final TextEditingController experienceCompany = TextEditingController();
  final TextEditingController educationName = TextEditingController();
  final TextEditingController educationboard = TextEditingController();
  final TextEditingController educationtoController = TextEditingController();
  final TextEditingController educationFromController = TextEditingController();
  final TextEditingController skillName = TextEditingController();
  final isExperiencePopup = false.obs;
  final isEducationPopup = false.obs;
  final isSkillsPopup = false.obs;
  List<Map> ExperienceList = [];
  List<Map> SkillsList = [];
  List<Map> EducationList = [];
  List<Map> ResumesList = [];
  @override
  void onInit() {
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

  void saveHandler() {
    if (isExperiencePopup.value) {
      ExperienceList.add({
        "designation": experienceDesignation.text,
        "company": experienceCompany.text,
        "from": fromController.text,
        "to": toController.text,
        "summary": experienceSummery.text
      });
      if (isExperiencePopup.value == true) {
        isExperiencePopup.value = false;
      } else if (isEducationPopup.value == true) {
        isEducationPopup.value = false;
      } else {
        isSkillsPopup.value = false;
      }
      experienceDesignation.clear();
      experienceCompany.clear();
      fromController.clear();
      toController.clear();
      experienceSummery.clear();
    }
    if (isEducationPopup.value) {
      EducationList.add({
        "education": educationName.text,
        "board": educationboard.text,
        "from": educationFromController.text,
        "to": educationtoController.text,
      });
      if (isExperiencePopup.value == true) {
        isExperiencePopup.value = false;
      } else if (isEducationPopup.value == true) {
        isEducationPopup.value = false;
      } else {
        isSkillsPopup.value = false;
      }
      educationName.clear();
      educationboard.clear();
      educationFromController.clear();
      educationtoController.clear();
    }
    if (isSkillsPopup.value) {
      SkillsList.add({'skills': skillName.text});
      if (isExperiencePopup.value == true) {
        isExperiencePopup.value = false;
      } else if (isEducationPopup.value == true) {
        isEducationPopup.value = false;
      } else {
        isSkillsPopup.value = false;
      }
      skillName.clear();
    }
  }

  void ResumeSaveHandler() {
    ResumesList.add({
      "resume": {
        "name": nameController,
        "bio": bioController,
        "designation": designationController,
        "experience": ExperienceList,
        "education": EducationList,
        "skills": SkillsList
      }
    });

    Get.toNamed(
      Routes.HOME,
    );
  }
}
