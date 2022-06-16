import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:posttest5_1915016083_erdianuspagesong/adminPage.dart';
import 'package:posttest5_1915016083_erdianuspagesong/mainPage.dart';
import 'package:posttest5_1915016083_erdianuspagesong/register.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/registerCtrl.dart';

class loginAkun extends StatefulWidget {
  loginAkun({Key? key}) : super(key: key);

  @override
  State<loginAkun> createState() => _loginAkunState();
}

final emailCtrl = TextEditingController();
final passwordCtrl = TextEditingController();
//String username = "", password = "";

class _loginAkunState extends State<loginAkun> {
  final RegisterController regis = Get.put(RegisterController());
  @override
  var _isObscure = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/logo_barbershop.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, bottom: 20),
                    height: 190,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.name,
                          controller: emailCtrl,
                          decoration: InputDecoration(
                            labelText: "Email",
                            fillColor: Color.fromARGB(50, 29, 92, 99),
                            filled: true,
                            border: OutlineInputBorder(),
                          ),
                        ),
                        TextFormField(
                          obscureText: _isObscure,
                          keyboardType: TextInputType.text,
                          controller: passwordCtrl,
                          decoration: InputDecoration(
                            labelText: "Password",
                            fillColor: Color.fromARGB(50, 29, 92, 99),
                            filled: true,
                            border: OutlineInputBorder(),
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(_isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      onPressed: () async {
                        if (emailCtrl.text == "admin" &&
                            passwordCtrl.text == "admin") {
                          emailCtrl.text = "";
                          passwordCtrl.text = "";
                          Get.offAll(AdminPage());
                        } else {
                          try {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: emailCtrl.text,
                                    password: passwordCtrl.text);
                            emailCtrl.text = "";
                            passwordCtrl.text = "";
                            Get.offAll(MyHomePage());
                          } on FirebaseAuthException catch (e) {
                            LoginAlert(context, e.message.toString());
                            emailCtrl.text = "";
                            passwordCtrl.text = "";
                          }
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(RegisterAkun());
                      },
                      child: Text("Belum Punya Akun?")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }
}

Future<dynamic> LoginAlert(BuildContext context, String pesan) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(pesan),
        content: Text(
            "Maaf Username atau Password anda salah Silahkan masukkan ulang kembali"),
        actions: [
          TextButton(
              onPressed: () {
                Get.to(loginAkun());
              },
              child: Text("OK"))
        ],
      );
    },
  );
}
