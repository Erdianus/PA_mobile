import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String email;
  final int noHp;

  ItemCard(
    this.email,
    this.noHp,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color.fromARGB(255, 29, 92, 99))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(email),
              ),
              Text(
                "$noHp",
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 60,
                child: RaisedButton(
                    shape: CircleBorder(),
                    color: Colors.green[900],
                    child: Center(
                        child: Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                    )),
                    onPressed: () {
                      // if (onUpdate != null) onUpdate();
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }

  toList() {}
}
