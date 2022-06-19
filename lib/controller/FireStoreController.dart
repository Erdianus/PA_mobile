import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FireStoreController extends GetxController {
  var barbermans = FirebaseFirestore.instance.collection("barberman").obs;
  var pesanan = FirebaseFirestore.instance.collection("pesanan").obs;
}
