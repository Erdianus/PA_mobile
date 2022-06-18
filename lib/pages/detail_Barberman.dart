import 'package:flutter/material.dart';

class DetailJoniJontor extends StatelessWidget {
  const DetailJoniJontor({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 122, 179, 176),
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ratings : ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                  width: mediaQueryWidth / 0.5,
                  height: mediaQueryHeight / 2.8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 92, 99),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Experience : 2 Tahun",
                        style: TextStyle(
                            height: 2,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      Center(
                        child: Text(
                            "Joni Jontor adalah seorang penata rambut selebriti yang telah berkarya sejak berusia 21 tahun. Kebanyakan orang biasanya tidak masalah menghabiskan banyak uang untuk membeli barang dan jasa jika layanan dan kualitasnya memang bagus. Apakah anda bersedia untuk merogoh kocek lebih dalam untuk menata rambut oleh sang expert? ",
                            maxLines: 8,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                wordSpacing: 3,
                                height: 1.4,
                                fontSize: 14,
                                color: Colors.white)),
                      ),
                      Text(
                        "Jadwal Operasional : 09.00 -17.00",
                        style: TextStyle(
                            color: Colors.white,
                            height: 2,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
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
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 122, 179, 176),
        appBar: AppBar(
          title: Text("Udin Sedunia"),
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
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ratings : ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star_half_sharp,
                        size: 25,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                  width: mediaQueryWidth / 0.5,
                  height: mediaQueryHeight / 2.8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 92, 99),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Experience : 2 Tahun",
                        style: TextStyle(
                            height: 2,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      Center(
                        child: Text(
                            "Udin Sedunia adalah penata rambut asal Inggris yang mempunyai banyak pelanggan setia di kalangan artis, seperti Jamie Oliver, Jean Claude Van Damme, Benicio Del Toro, dan pengusaha properti asal Italia Beverley Lateo",
                            maxLines: 8,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                wordSpacing: 3,
                                height: 1.4,
                                fontSize: 14,
                                color: Colors.white)),
                      ),
                      Text(
                        "Jadwal Operasional : 09.00 -17.00",
                        style: TextStyle(
                            color: Colors.white,
                            height: 2,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ]));
  }
}

class DetailJemesBond extends StatelessWidget {
  const DetailJemesBond({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 122, 179, 176),
        appBar: AppBar(
          title: Text("Jemes Bond"),
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
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ratings : ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star_border_outlined,
                        size: 25,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                  width: mediaQueryWidth / 0.5,
                  height: mediaQueryHeight / 2.8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 92, 99),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Experience : 2 Tahun",
                        style: TextStyle(
                            height: 2,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      Center(
                        child: Text(
                            "Jemes Bond merupakan penata rambut asal California yang menjadi favorit sederet artis papan atas, seperti Jennifer Aniston, Nicole Kidman, Jennifer Lopez, Julia Roberts, dan Sarah-Jessica Parker",
                            maxLines: 8,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                wordSpacing: 3,
                                height: 1.4,
                                fontSize: 14,
                                color: Colors.white)),
                      ),
                      Text(
                        "Jadwal Operasional : 09.00 -17.00",
                        style: TextStyle(
                            color: Colors.white,
                            height: 2,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ]));
  }
}

class DetailJordiTorres extends StatelessWidget {
  const DetailJordiTorres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 122, 179, 176),
        appBar: AppBar(
          title: Text("Jordi Torres"),
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
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ratings : ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.yellow,
                      ),
                      new Icon(
                        Icons.star_half_sharp,
                        size: 25,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                  width: mediaQueryWidth / 0.5,
                  height: mediaQueryHeight / 2.8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 92, 99),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Experience : 2 Tahun",
                        style: TextStyle(
                            height: 2,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      Center(
                        child: Text(
                            "Jordi Torres memiliki impian untuk membuat barber memiliki standar yang jelas dan menjadi profesi berstandar di Indonesia, Keinginannya, generasi barber ke depan semakin merasakan kenikmatan saat profesinya dipandang dan memiliki standar, dan Expert di bidangnya",
                            maxLines: 8,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                wordSpacing: 3,
                                height: 1.4,
                                fontSize: 14,
                                color: Colors.white)),
                      ),
                      Text(
                        "Jadwal Operasional : 09.00 -17.00",
                        style: TextStyle(
                            color: Colors.white,
                            height: 2,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ]));
  }
}
