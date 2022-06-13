import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  var username = "".obs;
  var email = "".obs;
  var noHp = "".obs;
  var password = "".obs;

  final usernameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final noHpCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  onPressed() {
    username = usernameCtrl.text.obs;
    email = emailCtrl.text.obs;
    noHp = noHpCtrl.text.obs;
    password = passwordCtrl.text.obs;
  }

  @override
  void onClose() {
    usernameCtrl.dispose();
    emailCtrl.dispose();
    noHpCtrl.dispose();
    passwordCtrl.dispose();
  }
}
