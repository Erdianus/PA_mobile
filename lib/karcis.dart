import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/form_text_ctrl.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/radioCtrl.dart';

class DetailTransaksi extends StatelessWidget {
  DetailTransaksi({Key? key}) : super(key: key);
  final TextController text = Get.find();
  final RadioController haircut = Get.find();
  var jenisHaircut = "";
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Pemesanan"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Detail Karcis anda",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Nama Pemesan"),
                    ),
                    Container(
                      child: Text(":"),
                    ),
                    Container(
                      child: Text("${text.namaLengkap}"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("No Telpon          "),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(":"),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text("${text.noTelp}"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Email                  "),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(":"),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text("${text.email}"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Jenis Haircut                   "),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(":"),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text("${jenisHaircut}"),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
