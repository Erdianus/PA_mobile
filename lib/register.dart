import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:posttest5_1915016083_erdianuspagesong/login.dart';
import 'package:posttest5_1915016083_erdianuspagesong/mainPage.dart';
import 'controller/registerCtrl.dart';

class RegisterAkun extends StatelessWidget {
  RegisterAkun({Key? key}) : super(key: key);
  @override
  var confirmPasswordCtrl = TextEditingController();
  Widget build(BuildContext context) {
    final RegisterController inputRegister = Get.find();
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Register Akun Anda",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                controller: inputRegister.usernameCtrl,
                decoration: InputDecoration(
                  labelText: "Username",
                  fillColor: Color.fromARGB(50, 29, 92, 99),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: inputRegister.emailCtrl,
                decoration: InputDecoration(
                  labelText: "Email",
                  fillColor: Color.fromARGB(50, 29, 92, 99),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                controller: inputRegister.noHpCtrl,
                decoration: InputDecoration(
                  labelText: "No Hp/Telp",
                  fillColor: Color.fromARGB(50, 29, 92, 99),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.text,
                controller: inputRegister.passwordCtrl,
                decoration: InputDecoration(
                  labelText: "Password",
                  fillColor: Color.fromARGB(50, 29, 92, 99),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
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
              ElevatedButton(
                onPressed: () {
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

                  if (inputRegister.passwordCtrl.text ==
                      confirmPasswordCtrl.text) {
                    inputRegister.onPressed;
                    Get.to(MyHomePage());
                  } else if (inputRegister.usernameCtrl.text == "" ||
                      inputRegister.emailCtrl.text == "" ||
                      inputRegister.noHpCtrl.text == "" ||
                      inputRegister.passwordCtrl.text == "" ||
                      confirmPasswordCtrl.text == "") {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(snackBarValidasi("Form anda kosong"));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(snackBarValidasi(
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
        ),
      ),
    );
  }
}
