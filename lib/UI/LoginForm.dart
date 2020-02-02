import 'package:FIW_Studi_App/UI/NavDrawer.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';
import 'package:FIW_Studi_App/globals.dart' as globals;

class LoginForm extends StatelessWidget {
  static final TextEditingController _user = new TextEditingController();
  static final TextEditingController _pass = new TextEditingController();

  String get username => _user.text;
  String get password => _pass.text;

  @override
  Widget build(BuildContext login) {
    return MaterialApp(
      title: "Login",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: studiAppGreen,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              semanticLabel: 'Back',
            ),
            onPressed: () {
              Navigator.pop(login);
            },
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              SizedBox(height: 80.0),
              Column(
                children: <Widget>[
                  Image.asset(''),
                  SizedBox(height: 16.0),
                  Text('Admin Login für Fachschaftler'),
                ],
              ),
              SizedBox(height: 120),
              TextField(
                controller: _user,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'k-nummer',
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: _pass,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Passwort',
                ),
                obscureText: true,
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(login);
                    },
                  ),
                  RaisedButton(
                    child: Text('Next'),
                    onPressed: () {
                      globals.kNumber = this.username;
                      globals.password = this.password;
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
