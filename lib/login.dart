import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:posttest5_1915016083_erdianuspagesong/mainPage.dart';
import 'package:posttest5_1915016083_erdianuspagesong/register.dart';
import 'package:posttest5_1915016083_erdianuspagesong/controller/registerCtrl.dart';

class loginAkun extends StatefulWidget {
  loginAkun({Key? key}) : super(key: key);

  @override
  State<loginAkun> createState() => _loginAkunState();
}

final usernameCtrl = TextEditingController();
final passwordCtrl = TextEditingController();
String username = "", password = "";

class _loginAkunState extends State<loginAkun> {
  final RegisterController regis = Get.put(RegisterController());
  @override
  var _isObscure = true;
  Widget build(BuildContext context) {
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
                      controller: usernameCtrl,
                      decoration: InputDecoration(
                        labelText: "Username",
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
                  onPressed: () {
                    if ((usernameCtrl.text == "admin" &&
                            passwordCtrl.text == "admin") ||
                        (usernameCtrl.text == regis.username &&
                            passwordCtrl.text == regis.password)) {
                      username = usernameCtrl.value.text;
                      password = passwordCtrl.value.text;

                      Get.to(MyHomePage());
                    } else {
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

  void _togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
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
