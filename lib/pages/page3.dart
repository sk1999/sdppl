import 'package:flutter/material.dart';

class Dud extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Dip();
  }
}

class _Dip extends State<Dud> {
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
        ),
        body: Column(children: <Widget>[
          common(),
          Expanded(
              child: ListView(
                children: <Widget>[

                ],
              )
          )
        ]
        )
    );
  }
}