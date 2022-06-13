import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:posttest5_1915016083_erdianuspagesong/controller/loginCtrl.dart';
import 'package:posttest5_1915016083_erdianuspagesong/mainPage.dart';
import 'package:posttest5_1915016083_erdianuspagesong/register.dart';

class loginAkun extends StatelessWidget {
  loginAkun({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final LoginController inputLogin = Get.put(LoginController());
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                      controller: inputLogin.usernameCtrl,
                      decoration: InputDecoration(
                        labelText: "Username",
                        fillColor: Color.fromARGB(50, 29, 92, 99),
                        filled: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      controller: inputLogin.passwordCtrl,
                      decoration: InputDecoration(
                        labelText: "Password",
                        fillColor: Color.fromARGB(50, 29, 92, 99),
                        filled: true,
                        border: OutlineInputBorder(),
                        suffixIcon: Obx(
                          () => IconButton(
                            icon: Icon(inputLogin.isObscure.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    if (inputLogin.usernameCtrl.text == "admin" &&
                        inputLogin.passwordCtrl.text == "admin") {
                      inputLogin.onPressed;
                      Get.to(MyHomePage());
                    } else {
                      inputLogin.onClose;
                      LoginAlert(context);
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
        ),
      ),
    );
  }
}

Future<dynamic> LoginAlert(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Gagal Login"),
        content: Text(
            "Maaf Username atau Password anda salah Silahkan masukkan ulang kembali"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => loginAkun(),
                  ),
                );
              },
              child: Text("OK"))
        ],
      );
    },
  );
}
