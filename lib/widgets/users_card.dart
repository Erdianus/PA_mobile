import 'package:flutter/material.dart';

class ItemCardUsers extends StatelessWidget {
  final String email;
  final String userId;

  ItemCardUsers(
    this.email,
    this.userId,
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
                "$userId",
              )
            ],
          ),
        ],
      ),
    );
  }

  toList() {}
}
