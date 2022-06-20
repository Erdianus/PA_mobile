import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/barberCtrl.dart';

import 'package:posttest5_1915016083_erdianuspagesong/controller/form_text_ctrl.dart';

import 'package:posttest5_1915016083_erdianuspagesong/controller/FireStoreController.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/loginCtrl.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/radioCtrl1.dart';

import 'package:posttest5_1915016083_erdianuspagesong/haircut.dart';

import 'package:posttest5_1915016083_erdianuspagesong/main.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/admin/ListPemesanan.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/admin/adminPage.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/admin/users.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/users/ListPemesananUsers.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/users/usersPage.dart';

int? haircuts = 1;
int? barbermans = 1;

FireStoreController fsc = Get.put(FireStoreController());
final TransaksiController inputText = Get.put(TransaksiController());
final RadioController radioInput = Get.put(RadioController());
final TransaksiController getText = Get.put(TransaksiController());
final BarberController barberInput = Get.put(BarberController());
LoginController login = Get.put(LoginController());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Text("${login.email}"),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo_barbershop.png"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "FORM PESANAN",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              keyboardType: TextInputType.name,
              controller: inputText.namaCtrl,
              decoration: InputDecoration(
                labelText: "Nama Lengkap",
                fillColor: Color.fromARGB(50, 29, 92, 99),
                filled: true,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: inputText.noHpCtrl,
              decoration: InputDecoration(
                labelText: "No Telpon/Hp",
                fillColor: Color.fromARGB(50, 29, 92, 99),
                filled: true,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: inputText.emailTransaksiCtrl,
              decoration: InputDecoration(
                labelText: "Email",
                fillColor: Color.fromARGB(50, 29, 92, 99),
                filled: true,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Pilih Jenis Haircut: ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            ///////////////////////////////Radio BOB CURLY
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bob Curly",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Obx(
                    () => Radio<Haircut>(
                        value: Haircut.bobcurly,
                        groupValue: radioInput.haircuts.value,
                        onChanged: (value) {
                          radioInput.haircuts(value);
                        }),
                  ),
                ],
              ),
            ),
          ),
          Container(
            ///////////////////////////////Radio CURLY FADE
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Curly Fade",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Obx(
                    () => Radio<Haircut>(
                        value: Haircut.curlyfade,
                        groupValue: radioInput.haircuts.value,
                        onChanged: (value) {
                          radioInput.haircuts(value);
                        }),
                  ),
                ],
              ),
            ),
          ),
          Container(
            ///////////////////////////////Radio MESSY HAIR
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messy Hair",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Obx(
                    () => Radio<Haircut>(
                        value: Haircut.messyhair,
                        groupValue: radioInput.haircuts.value,
                        onChanged: (value) {
                          radioInput.haircuts(value);
                        }),
                  ),
                ],
              ),
            ),
          ),
          Container(
            ///////////////////////////////Radio POMPADOUR
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pompadour",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Obx(
                    () => Radio<Haircut>(
                        value: Haircut.pompadour,
                        groupValue: radioInput.haircuts.value,
                        onChanged: (value) {
                          radioInput.haircuts(value);
                        }),
                  ),
                ],
              ),
            ),
          ),
          Container(
            ///////////////////////////////Radio UNDERCUT
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Undercut",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Obx(
                    () => Radio<Haircut>(
                        value: Haircut.undercut,
                        groupValue: radioInput.haircuts.value,
                        onChanged: (value) {
                          radioInput.haircuts(value);
                        }),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Pilih Barberman : ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            ///////////////////////////////Radio Joni Jontor
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Joni Jontor",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Obx(
                    () => Radio<Barber>(
                        value: Barber.joniJontor,
                        groupValue: barberInput.barbermans.value,
                        onChanged: (value) {
                          barberInput.barbermans(value);
                        }),
                  ),
                ],
              ),
            ),
          ),
          Container(
            ///////////////////////////////Radio Udin Sedunia
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Udin Sedunia",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Obx(
                    () => Radio<Barber>(
                        value: Barber.udinSedunia,
                        groupValue: barberInput.barbermans.value,
                        onChanged: (value) {
                          barberInput.barbermans(value);
                        }),
                  ),
                ],
              ),
            ),
          ),
          Container(
            ///////////////////////////////Radio Jordi Torres
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jordi Torres",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Obx(
                    () => Radio<Barber>(
                        value: Barber.jordiTorres,
                        groupValue: barberInput.barbermans.value,
                        onChanged: (value) {
                          barberInput.barbermans(value);
                        }),
                  ),
                ],
              ),
            ),
          ),
          Container(
            ///////////////////////////////Radio James Bond
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "James Bond",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Obx(
                    () => Radio<Barber>(
                        value: Barber.jemesBond,
                        groupValue: barberInput.barbermans.value,
                        onChanged: (value) {
                          barberInput.barbermans(value);
                        }),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 120, right: 120, bottom: 30),
            child: ElevatedButton(
              onPressed: () {
                inputText.onPressed();
                final snackBar = SnackBar(
                  content: Text(
                    "Form pesanan Anda tidak terisi semua mohon untuk diisi semua",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  duration: Duration(seconds: 3),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Color.fromARGB(200, 29, 92, 99),
                );

                if (getText.nama.isNotEmpty &&
                    getText.noHp.isNotEmpty &&
                    getText.emailTransaksi.isNotEmpty) {
                  CustomAlert(context, getText.nama.value);
                } else if (getText.nama.isEmpty ||
                    getText.noHp.isEmpty ||
                    getText.emailTransaksi.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Text(
                "PESAN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<dynamic> CustomAlert(BuildContext context, String namaCustomer) {
  final TransaksiController text = Get.find();
  final RadioController haircut = Get.find();
  final BarberController barber = Get.find();
  var jenisHaircut = "";
  var harga = "";
  var barberman = "";
  var jadwal = "";
  if (haircut.haircuts.value == Haircut.bobcurly) {
    jenisHaircut = "Bob Curly";
    harga = "Rp. 100.000";
  } else if (haircut.haircuts.value == Haircut.curlyfade) {
    jenisHaircut = "Curly Fade";
    harga = "Rp. 120.000";
  } else if (haircut.haircuts.value == Haircut.messyhair) {
    jenisHaircut = "Messy Hair";
    harga = "Rp. 120.000";
  } else if (haircut.haircuts.value == Haircut.pompadour) {
    jenisHaircut = "Pompadour";
    harga = "Rp. 125.000";
  } else if (haircut.haircuts.value == Haircut.undercut) {
    jenisHaircut = "Undercut";
    harga = "Rp. 120.000";
  }
  if (barber.barbermans.value == Barber.joniJontor) {
    barberman = "Joni Jontor";
    jadwal = "09.00-17.00";
  } else if (barber.barbermans.value == Barber.udinSedunia) {
    barberman = "Udin Sedunia";
    jadwal = "09.00-17.00";
  } else if (barber.barbermans.value == Barber.jordiTorres) {
    barberman = "Jordi Torres";
    jadwal = "09.00-17.00";
  } else if (barber.barbermans.value == Barber.jemesBond) {
    barberman = "James Bondr";
    jadwal = "09.00-17.00";
  }
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Berhasil Memesan"),
        content: Text(
            "Terimakasih ${text.nama} sudah memesan di BarberShop kami dengan jenis haircut ${jenisHaircut}"),
        actions: [
          TextButton(
              onPressed: () {
                String cdate =
                    DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
                fsc.pesanan.value.add(
                  {
                    'name': inputText.namaCtrl.text,
                    'noHp': inputText.noHpCtrl.text,
                    'email': inputText.emailTransaksiCtrl.text,
                    'jenis': jenisHaircut,
                    'harga': harga,
                    'barberman': barberman,
                    'jadwal': jadwal,
                    'waktu': cdate,
                  },
                );
                Get.back();
              },
              child: Text("OK"))
        ],
      );
    },
  );
}
