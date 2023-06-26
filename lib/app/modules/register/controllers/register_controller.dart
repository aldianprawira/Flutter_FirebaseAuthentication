import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';

class RegisterController extends GetxController {
  final emailC = TextEditingController();
  final passC = TextEditingController();
  final authC = Get.find<AuthController>();

  @override
  void dispose() {
    emailC.dispose();
    passC.dispose();
    super.dispose();
  }
}
