import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:posttest5_1915016083_erdianuspagesong/widgets/users_card.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Text(
                'List Users',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              StreamBuilder<QuerySnapshot>(
                  stream: users.snapshots(),
                  builder: (_, snapshots) {
                    if (snapshots.hasData) {
                      return Column(
                          children: snapshots.data!.docs
                              .map((e) => ItemCard(
                                    e.get('email'),
                                    e.get('noHp'),
                                  ))
                              .toList());
                    } else {
                      return Text("Loading");
                    }
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
