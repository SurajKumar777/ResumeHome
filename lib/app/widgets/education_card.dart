import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:resumehome/app/modules/resume_screen/controllers/resume_screen_controller.dart';

import 'CustomButton.dart';
import 'CustomInput.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({super.key});

  @override
  Widget build(BuildContext context) {
    final homeC = Get.find<ResumeScreenController>();
    return Column(
      children: [
        CustomInput(
          hintText: "Education",
          controller: homeC.experienceDesignation,
          validation: null,
          border: OutlineInputBorder(),
          inputFontSize: 14,
        ),
        SizedBox(
          height: 5,
        ),
        CustomInput(
          hintText: "Board/University",
          controller: homeC.experienceCompany,
          inputFontSize: 14,
          validation: null,
          border: OutlineInputBorder(),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Flexible(
              child: TextFormField(
                controller: homeC.fromController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "From",
                  suffixIcon: IconButton(
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(), //get today's date
                          firstDate: DateTime(
                              2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101));
                      homeC.fromController.text =
                          "${pickedDate!.day}-${pickedDate.month}-${pickedDate.year}";
                    },
                    icon: Icon(Icons.calendar_month),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: TextFormField(
                controller: homeC.toController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "To",
                  suffixIcon: IconButton(
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(), //get today's date
                          firstDate: DateTime(
                              2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101));
                      homeC.toController.text =
                          "${pickedDate!.day}-${pickedDate.month}-${pickedDate.year}";
                    },
                    icon: Icon(Icons.calendar_month),
                  ),
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        InkWell(onTap: homeC.saveHandler, child: CustomButton(text: "Save"))
      ],
    );
  }
}
