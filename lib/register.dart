import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:posttest5_1915016083_erdianuspagesong/login.dart';
import 'controller/registerCtrl.dart';

class RegisterAkun extends StatelessWidget {
  const RegisterAkun({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final RegisterController inputRegister = Get.put(RegisterController());
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
                keyboardType: TextInputType.name,
                controller: inputRegister.usernameCtrl,
                decoration: InputDecoration(
                  labelText: "Email",
                  fillColor: Color.fromARGB(50, 29, 92, 99),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                controller: inputRegister.usernameCtrl,
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
                controller: inputRegister.usernameCtrl,
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
                controller: inputRegister.usernameCtrl,
                decoration: InputDecoration(
                  labelText: "Username",
                  fillColor: Color.fromARGB(50, 29, 92, 99),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(loginAkun());
                  inputRegister.onPressed;
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
