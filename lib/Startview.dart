import 'package:FIW_Studi_App/Coffee/CoffeeCard.dart';
import 'package:FIW_Studi_App/Vorlesungsplaner/VorlesungsplanerCard.dart';
import 'package:FIW_Studi_App/FSnews/FSnewsCard.dart';
import 'package:FIW_Studi_App/Ui/LoginForm.dart';
import 'package:flutter/material.dart';
import 'UI/Colors.dart';
import 'package:FIW_Studi_App/UI/NavDrawer.dart';

class Startview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FIW Studi App',
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('FIW Studi App'),
            backgroundColor: studiAppGreen,
          ),
          drawer: NavDrawer(),
          body: GridView.count(
            //beschreibt die anzahl der Spalten der Angezeigten Karten
            crossAxisCount: 2,
            padding: EdgeInsets.all(16.0),
            childAspectRatio: 8.0 / 9.0,
            children: <Widget>[
              CoffeeCard(),
              FSnewsCard(),
              VorlesungsplanerCard(),
              //VorlesungsplanerCard(),
            ],
          ),
        ));
  }
}
