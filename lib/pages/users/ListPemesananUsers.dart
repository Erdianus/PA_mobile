import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/loginCtrl.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/admin/adminPage.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/admin/users.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/users/update_pemesananUsers.dart';
import 'package:posttest5_1915016083_erdianuspagesong/widgets/itemCardTransaksi.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/admin/update_pemesananAdmin.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/FireStoreController.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/form_text_ctrl.dart';
import 'package:get/get.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference pesanan = firestore.collection("pesanan");

class PemesananPageUsers extends StatelessWidget {
  PemesananPageUsers({Key? key}) : super(key: key);
  TransaksiController tc = Get.put(TransaksiController());
  FireStoreController fsc = Get.put(FireStoreController());
  LoginController login = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        ListView(
          children: [
            // VIEW DATA HERE
            StreamBuilder<QuerySnapshot>(
              stream: pesanan
                  .where('email', isEqualTo: login.email.string)
                  .snapshots(),
              builder: (_, snapshot) {
                return (snapshot.hasData)
                    ? Column(
                        children: snapshot.data!.docs
                            .map(
                              (e) => Itemcard(
                                  e.get('name'),
                                  e.get('email'),
                                  e.get('noHp'),
                                  e.get('jenis'),
                                  e.get('harga'),
                                  e.get('barberman'),
                                  e.get('jadwal'),
                                  e.get('waktu'),
                                  onUpdate: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              UpdatePageUsers(e.id))),
                                  onDelete: () {
                                    fsc.pesanan.value.doc(e.id)..delete();
                                    DeleteAlert(context);
                                  }),
                            )
                            .toList(),
                      )
                    : Text('Loading...');
              },
            ),
            SizedBox(height: 100)
          ],
        ),
      ]),
    );
  }
}

Future<dynamic> DeleteAlert(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text("Klik OK jika ingin menghapus"),
        actions: [
          TextButton(
              onPressed: () {
                Get.off(UsersPage());
              },
              child: Text("OK"))
        ],
      );
    },
  );
}
