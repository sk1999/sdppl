import 'package:flutter/material.dart';
import 'dart:async';
import './page2.dart';


class Dos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Dsp();
  }
}

class _Dsp extends State<Dos> {

  String uid, name, fname, number;
  int radioGroup = 0,
      rG = 0;
  String myA, myG;

  void radioEventHandler(int value) {
    setState(() {
      radioGroup = value;
      switch (radioGroup) {
        case 0:
          myG = 'Male';
          break;
        case 1:
          myG = 'Female';
          break;
        case 2:
          myG = 'Other';
          break;
      }
    });
  }

  void radioEventhandler(int value) {
    setState(() {
      rG = value;
      switch (rG) {
        case 0:
          myA = 'Rameshwar Colony, GIDC, Sachin';
          break;
        case 1:
          myA = 'Unn patiya, Bhestan';
          break;
        case 2:
          myA = 'Ganesh Nagar, Pandesara';
          break;
        case 3:
          myA = 'GHB, Pandesara';
          break;
        case 4:
          myA = 'GHB, Sachin';
          break;
        case 5:
          myA = 'Slum Board , Sachin';
          break;
      }
    });
  }

  Widget common() {
    return Column(
      children: <Widget>[
        Text(
            'Sankalp Dyeing & Printing Mills Pvt. Ltd.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
        ),
        Text(
            'Employee Registration',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
        )
      ],
    );
  }


  DateTime date = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1960),
        lastDate: DateTime(2019));

    if (picked != null && picked != date) {
      setState(() {
        date = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTRATION'),
      ),
      body: Column(
          children: <Widget>[
          common(),
      Expanded(
          child: ListView(
            children: <Widget>[
          TextField(
          keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)
                ),
                labelText: 'UID'
            ),
            onChanged: (String value) {
              setState(() {
                uid = value;
              }
              );
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)
                ),
                labelText: 'Name'
            ),
            onChanged: (String value) {
              setState(() {
                name = value;
              }
              );
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)
                ),
                labelText: "Father's Name"
            ),
            onChanged: (String value) {
              setState(() {
                fname = value;
              }
              );
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('Date: ${date.toString()}'),
          FlatButton(
            child: Text('Select date'),
            onPressed: () {
              _selectDate(context);
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('Gender'),
          Column(
            children: <Widget>[
              new RadioListTile<int>(
                value: 0,
                groupValue: radioGroup,
                onChanged: radioEventHandler,
                title: new Text('Male'),
                activeColor: Colors.blueAccent,
              ),
              new RadioListTile<int>(
                value: 1,
                groupValue: radioGroup,
                onChanged: radioEventHandler,
                title: new Text('Female'),
                activeColor: Colors.blueAccent,
              ),
              new RadioListTile<int>(
                value: 2,
                groupValue: radioGroup,
                onChanged: radioEventHandler,
                title: new Text('Other'),
                activeColor: Colors.blueAccent,
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('Current Address'),
          Column(
            children: <Widget>[
              new RadioListTile<int>(
                value: 0,
                groupValue: rG,
                onChanged: radioEventhandler,
                title: new Text('Rameshwar Colony, GIDC, Sachin'),
                activeColor: Colors.blueAccent,
              ),
              new RadioListTile<int>(
                value: 1,
                groupValue: rG,
                onChanged: radioEventhandler,
                title: new Text('Unn patiya, Bhestan'),
                activeColor: Colors.blueAccent,
              ),
              new RadioListTile<int>(
                value: 2,
                groupValue: rG,
                onChanged: radioEventhandler,
                title: new Text('Ganesh Nagar, Pandesara'),
                activeColor: Colors.blueAccent,
              ),
              new RadioListTile<int>(
                value: 3,
                groupValue: rG,
                onChanged: radioEventhandler,
                title: new Text('GHB, Pandesara'),
                activeColor: Colors.blueAccent,
              ),
              new RadioListTile<int>(
                value: 4,
                groupValue: rG,
                onChanged: radioEventhandler,
                title: new Text('GHB, Sachin'),
                activeColor: Colors.blueAccent,
              ),
              new RadioListTile<int>(
                value: 5,
                groupValue: rG,
                onChanged: radioEventhandler,
                title: new Text('Slum Board , Sachin'),
                activeColor: Colors.blueAccent,
              ),
              new RadioListTile<int>(
                value: 6,
                groupValue: rG,
                onChanged: radioEventhandler,
                title: new Text('Other'),
                activeColor: Colors.blueAccent,
              ),
              TextField(
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    ),
                    labelText: "other address"
                ),
                onChanged: (String value) {
                  setState(() {
                    myA = value;
                  }
                  );
                },
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)
                ),
                labelText: "Current Phone no."
            ),
            onChanged: (String value) {
              setState(() {
                number = value;
              }
              );
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
          color: Theme
          .of(context)
          .primaryColor,
      child: Text('Next'),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => Dop(),
          ),
        );
      },
    )
    ],
    ),
    )
    ]
    )
    );
  }
}