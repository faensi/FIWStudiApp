import 'package:FIW_Studi_App/Coffee/CoffeeCard.dart';
import 'package:FIW_Studi_App/Vorlesungsplaner/VorlesungsplanerCard.dart';
import 'package:FIW_Studi_App/FSnews/FSnewsCard.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/NavDrawer.dart';
import 'package:FIW_Studi_App/KaimWebview/KaimWVCard.dart';
import 'UI/Style.dart';

class Startview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      title: 'FIW Studi App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FIW Studi App'),
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
            KaimWVCard(),
          ],
        ),
      ),
    );
  }
}
