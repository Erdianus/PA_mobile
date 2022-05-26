import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest5_1915016083_erdianuspagesong/home.dart';

class TextController extends GetxController {
  var namaLengkap = "".obs;
  var noTelp = "".obs;
  var email = "".obs;

  final namaLengkapCtrl = TextEditingController();
  final noTelpCtrl = TextEditingController();
  final emailCtrl = TextEditingController();

  onPressed() {
    namaLengkap = namaLengkapCtrl.text.obs;
    noTelp = noTelpCtrl.text.obs;
    email = emailCtrl.text.obs;
    print(namaLengkap);
  }

  // Mirip dispose() di Stateful
  @override
  void onClose() {
    namaLengkapCtrl.dispose();
    noTelpCtrl.dispose();
    emailCtrl.dispose();
    super.onClose();
  }
}
