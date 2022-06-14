import 'package:flutter/material.dart';

class DetailJoniJontor extends StatelessWidget {
  const DetailJoniJontor({Key? key}) : super(key: key);

  Widget myContainer(String text) {
    return Container(
      child: Center(child: Text(text)),
      margin: EdgeInsets.only(left: 15, right: 15),
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        border: Border.all(
          color: Color.fromARGB(255, 29, 92, 99),
          width: 4,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text("Joni Jontor"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 29, 92, 99),
          elevation: 0,
        ),
        body: ListView(children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Material(
                  color: Color.fromARGB(255, 29, 92, 99),
                  elevation: 8,
                  shape: CircleBorder(),
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
                          shape: BoxShape.circle),
                      child: Ink.image(
                        image: AssetImage("assets/barber men1.jpg"),
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
                  "Joni Jontor",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Experience : 2 Tahun",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Jadwal Tersedia",
                  style: TextStyle(
                      color: Color.fromARGB(255, 29, 92, 99),
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myContainer("09.00"),
                      myContainer("11.00"),
                      myContainer("13.00"),
                      myContainer("15.00"),
                      myContainer("17.00")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

class DetailUdinSedunia extends StatelessWidget {
  const DetailUdinSedunia({Key? key}) : super(key: key);

  Widget myContainer(String text) {
    return Container(
      child: Center(child: Text(text)),
      margin: EdgeInsets.only(left: 15, right: 15),
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        border: Border.all(
          color: Color.fromARGB(255, 29, 92, 99),
          width: 4,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Udin Sedunia"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Color.fromARGB(255, 29, 92, 99),
                elevation: 8,
                shape: CircleBorder(),
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
                        shape: BoxShape.circle),
                    child: Ink.image(
                      image: AssetImage("assets/barber men2.jpg"),
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
                "Udin Sedunia",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              Text(
                "Experience : 3 Tahun",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(
                "Jadwal Tersedia",
                style: TextStyle(
                    color: Color.fromARGB(255, 29, 92, 99),
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myContainer("08.00"),
                    myContainer("10.00"),
                    myContainer("12.00"),
                    myContainer("14.00"),
                    myContainer("16.00")
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

class DetailJemesBond extends StatelessWidget {
  const DetailJemesBond({Key? key}) : super(key: key);

  Widget myContainer(String text) {
    return Container(
      child: Center(child: Text(text)),
      margin: EdgeInsets.only(left: 15, right: 15),
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        border: Border.all(
          color: Color.fromARGB(255, 29, 92, 99),
          width: 4,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jemes Bond"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Color.fromARGB(255, 29, 92, 99),
                elevation: 8,
                shape: CircleBorder(),
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
                        shape: BoxShape.circle),
                    child: Ink.image(
                      image: AssetImage("assets/barber men3.jpg"),
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
                "Jemes Bond",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              Text(
                "Experience : 2,5 Tahun",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(
                "Jadwal Tersedia",
                style: TextStyle(
                    color: Color.fromARGB(255, 29, 92, 99),
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myContainer("09.00"),
                    myContainer("11.00"),
                    myContainer("13.00"),
                    myContainer("15.00"),
                    myContainer("17.00")
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

class DetailJordiTorres extends StatelessWidget {
  const DetailJordiTorres({Key? key}) : super(key: key);

  Widget myContainer(String text) {
    return Container(
      child: Center(child: Text(text)),
      margin: EdgeInsets.only(left: 15, right: 15),
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        border: Border.all(
          color: Color.fromARGB(255, 29, 92, 99),
          width: 4,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jordi Torres"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Color.fromARGB(255, 29, 92, 99),
                elevation: 8,
                shape: CircleBorder(),
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
                        shape: BoxShape.circle),
                    child: Ink.image(
                      image: AssetImage("assets/barber men4.jpg"),
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
                "Jordi Torres",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              Text(
                "Experience : 4 Tahun",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(
                "Jadwal Tersedia",
                style: TextStyle(
                    color: Color.fromARGB(255, 29, 92, 99),
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myContainer("09.00"),
                    myContainer("11.00"),
                    myContainer("13.00"),
                    myContainer("15.00"),
                    myContainer("17.00")
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
