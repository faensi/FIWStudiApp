import 'package:FIW_Studi_App/UI/Startview.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/Colors.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext login) {
    return MaterialApp(
      title: "Login",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('LoginForm'),
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
      ),
    );
  }
}
