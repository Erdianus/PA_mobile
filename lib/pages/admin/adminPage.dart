import 'package:flutter/material.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/admin/ListPemesanan.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/admin/users.dart';
import '../home1.dart';
import '../../haircut.dart';
import '../barberman.dart';
import '../../main.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AdminPage extends StatefulWidget {
  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  int _index = 1;
  static final List _pages = [
    PemesananPageAdmin(),
    UsersPage(),
    Barberman(),
    Haircuts()
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
            icon: Icon(Icons.list_alt_rounded),
            label: "Pemesanan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Users",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "Barberman",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cut_outlined),
            label: "Haircuts",
          ),
        ],
      ),
      body: _pages.elementAt(_index),
    );
  }
}
