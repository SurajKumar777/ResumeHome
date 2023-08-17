import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/resume_screen_controller.dart';

class ResumeScreenView extends GetView<ResumeScreenController> {
  const ResumeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResumeScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResumeScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
