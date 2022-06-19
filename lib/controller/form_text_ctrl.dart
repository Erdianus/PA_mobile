import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

class BarbermanController extends GetxController {
  var nama = "".obs;
  var experience = "".obs;
  var jadwal = "".obs;
  var desc = "".obs;
  var photoUrl = ''.obs;

  TextEditingController namaCtrl = TextEditingController();
  TextEditingController experienceCtrl = TextEditingController();
  TextEditingController jadwalCtrl = TextEditingController();
  TextEditingController descCtrl = TextEditingController();
  TextEditingController photoCtrl = TextEditingController();

  @override
  void onClose() {
    namaCtrl.dispose();
    experienceCtrl.dispose();
    jadwalCtrl.dispose();
    descCtrl.dispose();
    photoCtrl.dispose();
    super.onClose();
  }

  void barbermans(value) {}
}

class TransaksiController extends GetxController {
  var nama = "".obs;
  var emailTransaksi = "".obs;
  var noHp = "".obs;
  var jenis = "".obs;
  var waktu = ''.obs;

  TextEditingController namaCtrl = TextEditingController();
  TextEditingController emailTransaksiCtrl = TextEditingController();
  TextEditingController noHpCtrl = TextEditingController();
  TextEditingController jenisCtrl = TextEditingController();
  TextEditingController waktuCtrl = TextEditingController();

  onPressed() {
    nama = namaCtrl.text.obs;
    noHp = noHpCtrl.text.obs;
    emailTransaksi = emailTransaksiCtrl.text.obs;
  }

  @override
  void onClose() {
    namaCtrl.dispose();
    emailTransaksiCtrl.dispose();
    noHpCtrl.dispose();
    jenisCtrl.dispose();
    waktuCtrl.dispose();
    super.onClose();
  }
}
