import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var userId = "".obs;
  var email = "".obs;
  var password = "".obs;

  var passwordCtrl = TextEditingController();
  var emailCtrl = TextEditingController();

  onPressed() {
    email = emailCtrl.text.obs;
    password = passwordCtrl.text.obs;
  }

  @override
  void onClose() {
    passwordCtrl.dispose();
    emailCtrl.dispose();
    super.onClose();
  }
}
