import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';

class ResetPasswordController extends GetxController {
  TextEditingController emailC = TextEditingController();
  final authC = Get.find<AuthController>();

  @override
  void dispose() {
    emailC.dispose();
  }
}
