import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:resumehome/app/modules/resume_screen/controllers/resume_screen_controller.dart';

import 'CustomButton.dart';
import 'CustomInput.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final homeC = Get.find<ResumeScreenController>();
    return Column(
      children: [
        CustomInput(
          hintText: "Skill",
          controller: homeC.skillName,
          validation: null,
          border: OutlineInputBorder(),
          inputFontSize: 14,
        ),
        Spacer(),
        InkWell(onTap: homeC.saveHandler, child: CustomButton(text: "Save"))
      ],
    );
  }
}
