import 'dart:io';
import '../services//crud.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Dud extends StatefulWidget {

  final String uid, name, fname, number, myA, myG, mypa, pnumber, dpt, pos;
  final DateTime date, jdate;

  Dud(this.uid, this.name, this.fname, this.number, this.myA, this.myG, this.date, this.mypa, this.pnumber, this.dpt, this.pos, this.jdate);

  @override
  State<StatefulWidget> createState() {
    return _Dip(uid, name, fname, number, myA, myG, date, mypa, pnumber, dpt, pos, jdate);
  }
}

class _Dip extends State<Dud> {

  String uid, name, fname, number, myA, myG, mypa, pnumber, dpt, pos;
  DateTime date, jdate;
  server crudobj = new server();

  _Dip(this.uid, this.name, this.fname, this.number, this.myA, this.myG, this.date, this.mypa, this.pnumber, this.dpt, this.pos, this.jdate);

  int ra=0,v, s;
  File img1, img2;

  void subForm(String uid, String name, String fname, String number, String myA, String myG, DateTime date, String mypa, String pnumber, String dpt, String pos, DateTime jdate) {
    final Map<String, dynamic> emplData = {
      'UID': uid,
      'Name': name,
      "father's name" : fname,
      'phone number': number,

    };
    crudobj.add(emplData);
  }

  void radioEventHandler(int value) {
    setState(() {
      ra = value;
      switch (ra) {
        case 0:
          setState(() {
            v = 0;
          });
          break;
        case 1:
          setState(() {
            v = 1;
          });
          break;
      }
    });
  }

  void _iI(BuildContext context, ImageSource source) {
    ImagePicker.pickImage(source: source, maxWidth: 400.0).then((File image) {
      if(s==0)
        setState(() {
          img1 = image;
        });
      else
        setState(() {
          img2 = image;
        });
      Navigator.pop(context);
    });
  }

  void _oI(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 150.0,
            padding: EdgeInsets.all(10.0),
            child: Column(children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
              FlatButton(
              textColor: Theme.of(context).primaryColor,
              child:
              Text('Use Camera'),
              onPressed: () {
                _iI(context, ImageSource.camera);
              },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
              textColor: Theme.of(context).primaryColor,
              child:
              Text('Use Gallery'),
              onPressed: () {
                _iI(context, ImageSource.gallery);
              },
              )
            ],
            ),
          );
        }
    );
  }

  Widget common() {
    return Column(
      children: <Widget>[
        Text('Sankalp Dyeing & Printing Mills Pvt. Ltd.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Text('Employee Registration',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('REGISTRATION'),
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() => Navigator.pop(context),
            )
        ),
        body: Column(children: <Widget>[
          common(),
          Expanded(
              child: ListView(
                children: <Widget>[
                  Text('Employee Photo'),
                  OutlineButton(
                      borderSide: BorderSide(
                          color: Theme.of(context).accentColor,
                          width: 2.0
                      ),
                      onPressed: () {
                        setState(() {
                          s = 0;
                        });
                        _oI(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.camera_alt),
                          SizedBox(
                            width: 10.0,
                          )
                        ],
                      )
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Employee ID Proof'),
                  OutlineButton(
                    borderSide: BorderSide(
                      color: Theme.of(context).accentColor,
                      width: 2.0
                    ),
                      onPressed: () {
                        setState(() {
                          s = 0;
                        });
                        _oI(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.camera_alt),
                          SizedBox(
                            width: 10.0,
                          )
                        ],
                      )
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Do you have bank account details now?'),
                  Column(
                    children: <Widget>[
                      new RadioListTile<int>(
                        value: 0,
                        groupValue: ra,
                        onChanged: radioEventHandler,
                        title: new Text('Yes'),
                        activeColor: Colors.blueAccent,
                      ),
                      new RadioListTile<int>(
                        value: 1,
                        groupValue: ra,
                        onChanged: radioEventHandler,
                        title: new Text('No'),
                        activeColor: Colors.blueAccent,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    color: Theme
                        .of(context)
                        .primaryColor,
                    child: Text('Submit'),
                    onPressed: () {
                      subForm(uid, name, fname, number, myA, myG, date, mypa, pnumber, dpt, pos, jdate);
                    },
                  )
                ],
              )
          )
        ]
        )
    );
  }
}