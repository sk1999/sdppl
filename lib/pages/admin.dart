import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../services/crud.dart';

class AdminPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Dkk();
  }
}

class _Dkk extends State<AdminPage> {

  QuerySnapshot empl;
  server crudobj = new server();

  @override
  void initState() {
    crudobj.get().then((results){
      setState(() {
        empl = results;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ADmin'),
        ),
        body: empList()
    );
  }

  Widget empList() {
    if(empl != null) {
      return ListView.builder(
        itemCount: empl.documents.length,
        padding: EdgeInsets.all(8.0),
        itemBuilder: (context, i) {
          return new ListTile(
            title: Text(empl.documents[i].data['uid']),
          );
        }
      );
    }
  }
}