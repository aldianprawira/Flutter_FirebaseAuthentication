import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  const ResetPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResetPasswordView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: controller.emailC,
              decoration: const InputDecoration(
                label: Text("Email"),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => controller.authC.resetPassword(controller.emailC.text),
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
