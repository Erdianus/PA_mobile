import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var userId = "".obs;
  var username = "".obs;
  var email = "".obs;
  var noHp = "".obs;
  var password = "".obs;

  var passwordCtrl = TextEditingController();
  var emailCtrl = TextEditingController();
  var usernameCtrl = TextEditingController();
  var noHpCtrl = TextEditingController();

  onPressed() {
    username = usernameCtrl.text.obs;
    email = emailCtrl.text.obs;
    noHp = noHpCtrl.text.obs;
    password = passwordCtrl.text.obs;
  }

  @override
  void onClose() {
    usernameCtrl.dispose();
    passwordCtrl.dispose();
    super.onClose();
  }
}
