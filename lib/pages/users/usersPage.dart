import 'package:flutter/material.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/admin/ListPemesanan.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/login.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/users/ListPemesananUsers.dart';
import 'homeUsers.dart';
import '../../haircut.dart';
import '../barberman.dart';
import '../../main.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  static final List _pages = [
    HomePage(),
    Haircuts(),
    Barberman(),
    PemesananPageUsers(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BARBERSHOP',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 237, 230, 219),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 65, 125, 122),
              ),
              child: Text("Menu"),
            ),
            ListTile(
              title: Text("Logout"),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Get.back();
                Get.offAll(LandingPage());
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cut_outlined),
            label: "Haircuts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "Barberman",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: "Pemesanan",
          ),
        ],
      ),
      body: _pages.elementAt(_index),
    );
  }
}
