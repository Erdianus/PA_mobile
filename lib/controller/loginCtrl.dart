import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var username = "".obs;
  var password = "".obs;
  var isObscure = true.obs;

  final usernameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  onPressed() {
    username = usernameCtrl.text.obs;
    password = passwordCtrl.text.obs;
  }

  @override
  void onClose() {
    usernameCtrl.dispose();
    passwordCtrl.dispose();
    super.onClose();
  }
}
