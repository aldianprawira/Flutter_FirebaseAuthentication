import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kp_firebase/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
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
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Get.toNamed(Routes.RESET_PASSWORD),
                child: const Text("Forgot password?"),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => controller.authC.login(
                controller.emailC.text,
                controller.passC.text,
              ),
              child: const Text("Login"),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () => Get.offAllNamed(Routes.REGISTER),
                  child: const Text("Register"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
