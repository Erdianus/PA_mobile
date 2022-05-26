import 'package:flutter/material.dart';
import 'detail_Haircuts.dart';

class Haircuts extends StatefulWidget {
  const Haircuts({Key? key}) : super(key: key);

  @override
  State<Haircuts> createState() => _HaircutsState();
}

class _HaircutsState extends State<Haircuts> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          /////////////////////////////BOB CURLY
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
                    builder: (_) => DetailBobCurly(),
                  ),
                );
              },
              splashColor: Color.fromARGB(50, 29, 92, 99),
              child: Row(
                children: [
                  Ink.image(
                    width: 150,
                    height: 150,
                    image: AssetImage("assets/bob curly.jpg"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Bob Curly",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          //////////////////////////////CURLY FADEE
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
                    builder: (_) => DetailCurlyFade(),
                  ),
                );
              },
              splashColor: Color.fromARGB(50, 29, 92, 99),
              child: Row(
                children: [
                  Ink.image(
                    width: 150,
                    height: 150,
                    image: AssetImage("assets/curly fade.jpg"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Curly Fade",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          //////////////////////////////MESSY COME OVER
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
                    builder: (_) => DetailMessyHair(),
                  ),
                );
              },
              splashColor: Color.fromARGB(50, 29, 92, 99),
              child: Row(
                children: [
                  Ink.image(
                    width: 150,
                    height: 150,
                    image: AssetImage("assets/messy hair.jpg"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Messy Hair",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      maxLines: 1),
                ],
              ),
            ),
          ),
        ),
        Padding(
          //////////////////////////////POMPADOUR
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
                    builder: (_) => DetailPompadour(),
                  ),
                );
              },
              splashColor: Color.fromARGB(50, 29, 92, 99),
              child: Row(
                children: [
                  Ink.image(
                    width: 150,
                    height: 150,
                    image: AssetImage("assets/pompadour.jpg"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Pompadour",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          //////////////////////////////UNDERCUT
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
                    builder: (_) => DetailUndercut(),
                  ),
                );
              },
              splashColor: Color.fromARGB(50, 29, 92, 99),
              child: Row(
                children: [
                  Ink.image(
                    width: 150,
                    height: 150,
                    image: AssetImage("assets/undercut.jpg"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Undercut",
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
