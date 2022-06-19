import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:posttest5_1915016083_erdianuspagesong/pages/login.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/users/usersPage.dart';
import '../controller/registerCtrl.dart';

class RegisterAkun extends StatelessWidget {
  RegisterAkun({Key? key}) : super(key: key);
  User? user;
  var confirmPasswordCtrl = TextEditingController();
  var passwordCtrl = TextEditingController();
  var emailCtrl = TextEditingController();
  var usernameCtrl = TextEditingController();
  var noHpCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Center(
          child: ListView(
            children: [
              Column(
                
                children: [
                  Text(
                    "Register Akun Anda",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailCtrl,
                    decoration: InputDecoration(
                      labelText: "Email",
                      fillColor: Color.fromARGB(50, 29, 92, 99),
                      filled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    controller: passwordCtrl,
                    decoration: InputDecoration(
                      labelText: "Password",
                      fillColor: Color.fromARGB(50, 29, 92, 99),
                      filled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    controller: confirmPasswordCtrl,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      fillColor: Color.fromARGB(50, 29, 92, 99),
                      filled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      var confirmPassword = confirmPasswordCtrl.value.text;
                      snackBarValidasi(String pesan) {
                        return SnackBar(
                          content: Text(
                            pesan,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          duration: Duration(milliseconds: 2500),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color.fromARGB(200, 29, 92, 99),
                        );
                      }

                      if (emailCtrl.text == "" ||
                          passwordCtrl.text == "" ||
                          confirmPasswordCtrl.text == "") {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackBarValidasi("Form anda kosong"));
                      } else if (passwordCtrl.text ==
                          confirmPasswordCtrl.text) {
                        try {
                          final credential = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: emailCtrl.text,
                                  password: passwordCtrl.text);
                          user = credential.user;
                          users.doc(user!.uid).set({
                            'email': emailCtrl.text,
                            'password': passwordCtrl.text,
                            'userId': user!.uid
                          });
                          Get.to(loginAkun());
                        } on FirebaseAuthException catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              snackBarValidasi(e.message.toString()));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            snackBarValidasi(
                                "Konfirmasi password anda tidak sesuai"));
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(loginAkun());
                    },
                    child: Text("Sudah punya akun?"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
