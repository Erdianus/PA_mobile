import 'package:flutter/material.dart';
import 'package:posttest5_1915016083_erdianuspagesong/detail_Barberman.dart';

class Barberman extends StatefulWidget {
  const Barberman({Key? key}) : super(key: key);

  @override
  State<Barberman> createState() => _BarbermanState();
}

class _BarbermanState extends State<Barberman> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "OUR BARBERMAN",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
        SizedBox(
          height: 30,
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
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Joni Jontor",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          /////////////////////////////UDIN SEDUNIA
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
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Udin Sedunia",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          /////////////////////////////JEMES BOND
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
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Jemes Bond",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Jordi Torres",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
