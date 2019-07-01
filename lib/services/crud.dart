import 'package:cloud_firestore/cloud_firestore.dart';


class server {

  Future<void> add(emplData) async {
    Firestore.instance.collection('Employee Data').add(emplData);
  }

  get() async {
    return await Firestore.instance.collection('Employee Data').getDocuments();
  }
}