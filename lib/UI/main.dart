import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/studyrooms.dart';
import '../Startview.dart';

// The main function is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      title: 'FIW Studi App',
      home: Startview(),
    ),
  );
}

void rooms() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Study Rooms',
      theme: ThemeData(
        primaryColor: new Color(0xFF66BB6A),
        backgroundColor: new Color(0xFFC8E6C9),
      ),
      home: Rooms(),
    );
  }
}