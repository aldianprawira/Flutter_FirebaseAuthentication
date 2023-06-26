import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
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
            TextField(
              controller: controller.passC,
              decoration: const InputDecoration(
                label: Text("Password"),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => controller.authC.register(
                controller.emailC.text,
                controller.passC.text,
              ),
              child: const Text("Register"),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Have an account?"),
                TextButton(
                  onPressed: () => Get.offAllNamed(Routes.LOGIN),
                  child: const Text("Log in"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
