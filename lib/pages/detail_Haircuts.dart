import 'package:flutter/material.dart';

class DetailBobCurly extends StatelessWidget {
  const DetailBobCurly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HAIRCUTS",
          style: TextStyle(fontFamily: 'stan'),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
        elevation: 0,
      ),
      body: Container(
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
            Text(
              "Bob Curly",
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'typo',
                letterSpacing: 3,
              ),
            ),
            Text(
              "Price : Rp 50.000-100.000",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'banana',
                  letterSpacing: 2,
                  color: Color.fromARGB(255, 0, 81, 3)),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Bob Curly adalah solusi untuk anda yang memiliki rambut keriting dengan gaya berbentuk terlihat menarik dan menyanjung bentuk wajah apa pun",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'stan',
                      letterSpacing: 2,
                      height: 2,
                    ),
                  ),
                ],
              ),
            )
          ],
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
        title: Text(
          "HAIRCUTS",
          style: TextStyle(fontFamily: 'stan'),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 92, 99),
        elevation: 0,
      ),
      body: Container(
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
              Text(
                "Curly Fade",
                style: TextStyle(
                    fontSize: 30, fontFamily: 'typo', letterSpacing: 3),
              ),
              Text(
                "Price : Rp 50.000-100.000",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'banana',
                    letterSpacing: 2,
                    color: Color.fromARGB(255, 0, 81, 3)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Curly Fade telah menjadi potongan rambut modern yang populer untuk pria dengan jenis rambut keriting atau bergelombang karena potongan pudar lancip pendek dan sederhana",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'stan',
                          letterSpacing: 2,
                          height: 2),
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
          title: Text(
            "HAIRCUTS",
            style: TextStyle(fontFamily: 'stan'),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 29, 92, 99),
          elevation: 0,
        ),
        body: Container(
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
                Text(
                  "Messy Hair",
                  style: TextStyle(
                      fontSize: 30, fontFamily: 'typo', letterSpacing: 3),
                ),
                Text(
                  "Price : Rp 50.000-100.000",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'banana',
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 0, 81, 3)),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Messy Hair adalah tren baru-baru ini yang mengacu pada tampilan yang mudah dan alami, membuat anda tetap terawat tetapi tanpa menghabiskan banyak waktu dan sedikit lebih liar pada rambut lurus",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'stan',
                            letterSpacing: 2,
                            height: 2),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class DetailPompadour extends StatelessWidget {
  const DetailPompadour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "HAIRCUTS",
            style: TextStyle(fontFamily: 'stan'),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 29, 92, 99),
          elevation: 0,
        ),
        body: Container(
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
                Text(
                  "Pompadour",
                  style: TextStyle(
                      fontSize: 30, fontFamily: 'typo', letterSpacing: 3),
                ),
                Text(
                  "Price : Rp 50.000-100.000",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'banana',
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 0, 81, 3)),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Popadour adalah gaya rambut yang menampilkan kemiringan yang tinggi dan bulat, serta dibuat dengan menyisir rambut di bawah dirinya sendiri untuk menciptakan volume",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'stan',
                            letterSpacing: 2,
                            height: 2),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class DetailUndercut extends StatelessWidget {
  const DetailUndercut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "HAIRCUTS",
            style: TextStyle(fontFamily: 'stan'),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 29, 92, 99),
          elevation: 0,
        ),
        body: Container(
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
                Text(
                  "Undercut",
                  style: TextStyle(
                      fontSize: 30, fontFamily: 'typo', letterSpacing: 3),
                ),
                Text(
                  "Price : Rp 50.000-100.000",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'banana',
                      letterSpacing: 2,
                      color: Color.fromARGB(255, 0, 81, 3)),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Undercut adalah jenis sisi pendek gaya rambut undercut menciptakan kontras yang tajam, dengan membiarkan sisi dan punggung terputus dari rambut di atas",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'stan',
                            letterSpacing: 2,
                            height: 2),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
