import 'package:flutter/material.dart';
import './admin.dart';
import './page1.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Dsk();
  }
}

class _Dsk extends State<AuthPage> {

  String mail, pass, omail = 'admin123@gmail.com', opass = '1279';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AUTH'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      ),
                      labelText: 'Email ID'
                  ),
                  onSaved: (String value) {
                    setState(() {
                      mail = value;
                    }
                    );
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      ),
                      labelText: 'Password'
                  ),
                  onSaved: (String value) {
                    setState(() {
                      pass = value;
                    }
                    );
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: Text('Admin Login'),
                  onPressed: () {
                    if(mail == omail && pass == opass){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => AdminPage(),
                        ),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: Text('Employee Registration'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Dos(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        )
        );
  }
}