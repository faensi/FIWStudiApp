import 'package:FIW_Studi_App/UI/NavDrawer.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';

class LoginForm extends StatelessWidget {
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
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'knummer',
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
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
                    onPressed: () {},
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
