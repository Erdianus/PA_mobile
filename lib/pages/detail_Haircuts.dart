import 'package:flutter/material.dart';

class DetailBobCurly extends StatelessWidget {
  const DetailBobCurly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bob Curly"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 29, 92, 99),
              Color.fromARGB(255, 237, 230, 219),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Color.fromARGB(255, 29, 92, 99),
                elevation: 8,
                borderRadius: BorderRadius.circular(15),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Color.fromARGB(50, 29, 92, 99),
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color.fromARGB(255, 29, 92, 99),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Ink.image(
                      image: AssetImage("assets/bob curly.jpg"),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Bob Curly",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "HARGA",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Rp. 100.000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailCurlyFade extends StatelessWidget {
  const DetailCurlyFade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CurlyFade"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 29, 92, 99),
              Color.fromARGB(255, 237, 230, 219),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Color.fromARGB(255, 29, 92, 99),
                elevation: 8,
                borderRadius: BorderRadius.circular(15),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Color.fromARGB(50, 29, 92, 99),
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color.fromARGB(255, 29, 92, 99),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Ink.image(
                      image: AssetImage("assets/curly fade.jpg"),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Curly Fade",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "HARGA",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Rp. 120.000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailMessyHair extends StatelessWidget {
  const DetailMessyHair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messy Hair"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 29, 92, 99),
              Color.fromARGB(255, 237, 230, 219),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Color.fromARGB(255, 29, 92, 99),
                elevation: 8,
                borderRadius: BorderRadius.circular(15),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Color.fromARGB(50, 29, 92, 99),
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color.fromARGB(255, 29, 92, 99),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Ink.image(
                      image: AssetImage("assets/messy hair.jpg"),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Messy Hair",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "HARGA",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Rp. 120.000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPompadour extends StatelessWidget {
  const DetailPompadour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pompadour"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 29, 92, 99),
              Color.fromARGB(255, 237, 230, 219),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Color.fromARGB(255, 29, 92, 99),
                elevation: 8,
                borderRadius: BorderRadius.circular(15),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Color.fromARGB(50, 29, 92, 99),
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color.fromARGB(255, 29, 92, 99),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Ink.image(
                      image: AssetImage("assets/pompadour.jpg"),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Pompadour",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "HARGA",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Rp. 125.000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailUndercut extends StatelessWidget {
  const DetailUndercut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Undercut"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 29, 92, 99),
              Color.fromARGB(255, 237, 230, 219),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Color.fromARGB(255, 29, 92, 99),
                elevation: 8,
                borderRadius: BorderRadius.circular(15),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Color.fromARGB(50, 29, 92, 99),
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color.fromARGB(255, 29, 92, 99),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Ink.image(
                      image: AssetImage("assets/undercut.jpg"),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Undercut",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "HARGA",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Rp. 120.000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
