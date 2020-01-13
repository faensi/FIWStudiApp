import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';

class FSnewsCreateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FSnewsDetailView',
      home: Scaffold(
        backgroundColor: Colors.white,
        // beschreibt die Appbar
        appBar: AppBar(
          title: Text('FSnewsDetailView'),
          backgroundColor: studiAppGreen,
          //beschreibt den Zurückpfeil oben links in der app
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              semanticLabel: 'Back',
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              SizedBox(height: 40.0),
              Column(
                children: <Widget>[
                  SizedBox(height: 16.0),
                  Text(
                    "Create News",
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
              SizedBox(height: 64.0),
              TextField(
                decoration: InputDecoration(
                  hintText: "News-Title",
                ),
                // beschreibt ein Feld in das Text bis zu einer Länge von 64 zeichen eingegeben werden können
                keyboardType: TextInputType.multiline,
                style: TextStyle(fontSize: 20),
                maxLength: 64,
              ),
              Divider(height: 12),
              TextField(
                decoration: InputDecoration(hintText: "News-Textyxcbv<c"),
                //beschreibt ein Feld in das Text in nicht endlicher Länge eingegeben werden kann
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              Divider(height: 16),
              RaisedButton(
                child: Text("Create"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
