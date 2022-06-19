import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/loginCtrl.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/radioCtrl1.dart';
import 'package:posttest5_1915016083_erdianuspagesong/haircut.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:posttest5_1915016083_erdianuspagesong/main.dart';

int? haircuts = 1;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RadioController radioInput = Get.put(RadioController());
    final LoginController signIn = Get.find();
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesan = firestore.collection('pemesanan');
    return Center(
      child: ListView(
        children: [
          Text(signIn.userId.string),
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
          Container(
            margin: EdgeInsets.only(left: 120, right: 120, bottom: 30),
            child: ElevatedButton(
              onPressed: () {
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
                var jenisHaircut = "";
                if (radioInput.haircuts.value == Haircut.bobcurly) {
                  jenisHaircut = "Bob Curly";
                } else if (radioInput.haircuts.value == Haircut.curlyfade) {
                  jenisHaircut = "Curly Fade";
                } else if (radioInput.haircuts.value == Haircut.messyhair) {
                  jenisHaircut = "Messy Hair";
                } else if (radioInput.haircuts.value == Haircut.pompadour) {
                  jenisHaircut = "Pompadour";
                } else if (radioInput.haircuts.value == Haircut.undercut) {
                  jenisHaircut = "Undercut";
                }
                pesan.add({
                  'email': signIn.email.toString(),
                  'userId': signIn.userId.toString(),
                  'haircut': jenisHaircut
                });

                //CustomAlert(context, getText.namaLengkap.value);
                //ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
  final RadioController haircut = Get.find();
  var jenisHaircut = "";
  if (haircut.haircuts.value == Haircut.bobcurly) {
    jenisHaircut = "Bob Curly";
  } else if (haircut.haircuts.value == Haircut.curlyfade) {
    jenisHaircut = "Curly Fade";
  } else if (haircut.haircuts.value == Haircut.messyhair) {
    jenisHaircut = "Messy Hair";
  } else if (haircut.haircuts.value == Haircut.pompadour) {
    jenisHaircut = "Pompadour";
  } else if (haircut.haircuts.value == Haircut.undercut) {
    jenisHaircut = "Undercut";
  }

  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Berhasil Memesan"),
        content: Text(
            "Terimakasih  sudah memesan di BarberShop kami dengan jenis haircut ${jenisHaircut}"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomePage(),
                  ),
                );
              },
              child: Text("OK"))
        ],
      );
    },
  );
}
