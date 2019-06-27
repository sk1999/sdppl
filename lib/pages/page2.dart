import 'package:flutter/material.dart';
import './page3.dart';

class Dop extends StatefulWidget {

 final String addr;

  Dop(this.addr);

  @override
  State<StatefulWidget> createState() {
    return _Dss(addr);
  }
}

class _Dss extends State<Dop> {

  int radioGroup = 0,rG=0;
  String mypa,pnumber,dpt='Department',pos;
  var _dprt = ['Gray Sikka','Grey Godown','Drum','Jet','Stenter','Batching','Printing 1','Printing 2','Printing 3','Printing 4','Printing 5','Printing 6','Printing 7','Printing 8','Printing 9','Loop','Washing','Padding','Finish','Zero','Folding','Colour Khaata','Colour store','Boiler','Sample Table','Design Department','Computer Tracing','Office Staff','General Staff','Master Staff','Loading/Packaging','Reel','Charkha','Maintanance',''];

  _Dss(this.mypa);

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

  void radioEventhandler(int value) {
    setState(() {
      radioGroup = value;
      switch (radioGroup) {
        case 0:
          mypa = mypa;
          break;
      }
    });
  }


  void radioeventhandler(int value) {
    setState(() {
      rG = value;
      switch (rG) {
        case 0:
          dpt = 'Operator';
          break;
        case 1:
          dpt = 'Assistant Operator';
          break;
        case 2:
          dpt = 'Border Man';
          break;
        case 3:
          dpt = 'Checker Man';
          break;
        case 4:
          dpt = 'Helper';
          break;
        case 5:
          dpt = 'Flatter Man';
          break;
        case 6:
          dpt = 'Kanji Man';
          break;
        case 7:
          dpt = 'Silai Man';
          break;
        case 8:
          dpt = 'Jobber';
          break;
        case 9:
          dpt = 'meter counter';
          break;
        case 10:
          dpt = 'supervisor';
          break;
        case 11:
          dpt = 'Programmer';
          break;
        case 12:
          dpt = 'Contractor';
          break;
      }
    });
  }

  DateTime jdate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: jdate,
        firstDate: DateTime(1960),
        lastDate: DateTime(2019));

    if (picked != null && picked != jdate) {
      setState(() {
        jdate = picked;
      });
    }
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
              Text('Permanent Address'),
              Column(
              children: <Widget>[
              new RadioListTile<int>(
              value: 0,
                groupValue: radioGroup,
                onChanged: radioEventhandler,
                title: new Text('Same as Present Address'),
                activeColor: Colors.blueAccent,
              ),
              new RadioListTile<int>(
                value: 1,
                groupValue: radioGroup,
                onChanged: radioEventhandler,
                title: new Text('Other'),
                activeColor: Colors.blueAccent,
              ),
                TextField(
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      ),
                      labelText: "new permanent address"
                  ),
                  onChanged: (String value) {
                    setState(() {
                      mypa = value;
                    }
                    );
                  },
                )
              ]
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
                    pnumber = value;
                  }
                  );
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('Date: ${jdate.toString()}'),
              FlatButton(
                child: Text('Select date'),
                onPressed: () {
                  _selectDate(context);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('Department'),
              DropdownButton<String>(
                items: _dprt.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
              }).toList(),
                onChanged: (String dvalue) {
                  setState(() {
                    dpt = dvalue;
                  });
                },
                hint: Text(dpt),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('Position'),
              Column(
                children: <Widget>[
                  new RadioListTile<int>(
                    value: 0,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Operator'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 1,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Assistant Operator'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 2,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Border Man'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 3,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Checker Man'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 4,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Helper'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 5,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Flatter Man'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 6,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Kanji Man'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 7,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Silai Man'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 8,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Jobber'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 9,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('meter counter'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 10,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('supervisor'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 11,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Programmer'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 12,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Contractor'),
                    activeColor: Colors.blueAccent,
                  ),
                  new RadioListTile<int>(
                    value: 13,
                    groupValue: rG,
                    onChanged: radioeventhandler,
                    title: new Text('Other:'),
                    activeColor: Colors.blueAccent,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        ),
                        labelText: "other position"
                    ),
                    onChanged: (String value) {
                      setState(() {
                        pos = value;
                      }
                      );
                    },
                  )
                ],
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
                      builder: (BuildContext context) => Dud(),
                    ),
                  );
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