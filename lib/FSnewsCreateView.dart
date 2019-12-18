import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';

class FSnewsCreateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FSnewsDetailView',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('FSnewsDetailView'),
          backgroundColor: studiAppGreen,
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
              SizedBox(height: 80.0),
              TextField(
                keyboardType: TextInputType.multiline,
                style: TextStyle(fontSize: 20),
                maxLength: 64,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
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
