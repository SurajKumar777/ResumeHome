import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

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
  final isPopup = false.obs;
  List<Map> ExperienceList = [];
  List<Map> EducationList = [];
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
    ExperienceList.add({
      "designation": experienceDesignation.text,
      "company": experienceCompany.text,
      "from": fromController.text,
      "to": toController.text,
      "summary": experienceSummery.text
    });

    isPopup.value = false;
    experienceDesignation.clear();
    experienceCompany.clear();
    fromController.clear();
    toController.clear();
    experienceSummery.clear();
  }
}
