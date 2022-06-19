import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/form_text_ctrl.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/FireStoreController.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/radioCtrl1.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/barberCtrl.dart';
import 'package:posttest5_1915016083_erdianuspagesong/haircut.dart';
import 'package:posttest5_1915016083_erdianuspagesong/main.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/admin/ListPemesanan.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/admin/adminPage.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/users/homeUsers.dart';

class UpdatePageAdmin extends StatelessWidget {
  final String id;

  UpdatePageAdmin(this.id);

  @override
  Widget build(BuildContext context) {
    TransaksiController inputText = Get.put(TransaksiController());
    FireStoreController fsc = Get.find();
    final RadioController haircut = Get.find();
    final BarberController barber = Get.find();
    var jenisHaircut = "";
    var harga = "";
    var barberman = "";
    var jadwal = "";

    return Scaffold(
      appBar: AppBar(
        title: Text("Update Data"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
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
                child: Text(
                  "Pilih Jenis Haircut: ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                ///////////////////////////////Radio BOB CURLY
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
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
                  border: Border.all(
                      color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
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
                  border: Border.all(
                      color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
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
                  border: Border.all(
                      color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
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
                  border: Border.all(
                      color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
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
              SizedBox(height: 30),
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
                  border: Border.all(
                      color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
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
                  border: Border.all(
                      color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
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
                  border: Border.all(
                      color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
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
                  border: Border.all(
                      color: Color.fromARGB(50, 29, 92, 99), width: 0.2),
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
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
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
                    barberman = "Messy Hair";
                    jadwal = "09.00-17.00";
                  } else if (barber.barbermans.value == Barber.jemesBond) {
                    barberman = "Pompadour";
                    jadwal = "09.00-17.00";
                  }
                  String cdate =
                      DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
                  fsc.pesanan.value.doc(id).update({
                    'name': inputText.namaCtrl.text,
                    'noHp': inputText.noHpCtrl.text,
                    'jenis': jenisHaircut,
                    'harga': harga,
                    'barberman': barberman,
                    'jadwal': jadwal,
                    'waktu': cdate,
                  });
                  UpdateAlert(context, inputText.namaCtrl.text);
                },
                child: Text('Update'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Future<dynamic> UpdateAlert(BuildContext context, String pesan) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Update Berhasil"),
        content: Text("Selamat Data Pemesanan Anda telah di update!"),
        actions: [
          TextButton(
              onPressed: () {
                Get.off(AdminPage());
              },
              child: Text("OK"))
        ],
      );
    },
  );
}
