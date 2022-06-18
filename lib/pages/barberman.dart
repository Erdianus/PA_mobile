import 'package:flutter/material.dart';
import 'package:posttest5_1915016083_erdianuspagesong/pages/detail_Barberman.dart';

class Barberman extends StatefulWidget {
  const Barberman({Key? key}) : super(key: key);

  @override
  State<Barberman> createState() => _BarbermanState();
}

class _BarbermanState extends State<Barberman> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / (1 / 3),
      child: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hello, This is Our List Barberman!",
                style: TextStyle(
                    height: 2,
                    wordSpacing: 1.5,
                    color: Color.fromARGB(255, 81, 135, 132),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            /////////////////////////////Joni Jontor
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 6,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailJoniJontor(),
                    ),
                  );
                },
                splashColor: Color.fromARGB(50, 29, 92, 99),
                child: Row(
                  children: [
                    Ink.image(
                      width: 150,
                      height: 150,
                      image: AssetImage("assets/barber men1.jpg"),
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Joni Jontor",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "5.0 ",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              new Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            /////////////////////////////UDIN SEDUINA
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 6,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailUdinSedunia(),
                    ),
                  );
                },
                splashColor: Color.fromARGB(50, 29, 92, 99),
                child: Row(
                  children: [
                    Ink.image(
                      width: 150,
                      height: 150,
                      image: AssetImage("assets/barber men2.jpg"),
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Udin Sedunia",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "4.5 ",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              new Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            /////////////////////////////JAMES BOND
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 6,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailJemesBond(),
                    ),
                  );
                },
                splashColor: Color.fromARGB(50, 29, 92, 99),
                child: Row(
                  children: [
                    Ink.image(
                      width: 150,
                      height: 150,
                      image: AssetImage("assets/barber men3.jpg"),
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "James Bond",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "4.0 ",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              new Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            /////////////////////////////JORDI TORRES
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 6,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailJordiTorres(),
                    ),
                  );
                },
                splashColor: Color.fromARGB(50, 29, 92, 99),
                child: Row(
                  children: [
                    Ink.image(
                      width: 150,
                      height: 150,
                      image: AssetImage("assets/barber men4.jpg"),
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jordi Torres",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "4.5 ",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              new Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
