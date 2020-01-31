import 'dart:convert';

import 'package:FIW_Studi_App/Coffee/Button.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeHeadline.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeText.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';
import 'package:FIW_Studi_App/Coffee/Post.dart';

class KaffeeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KaffeeViewState();
  }
}

class KaffeeViewState extends State<KaffeeView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'KaffeeView',
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: studiAppGreen,
            title: Text("COFFEE"),
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // hier werden nurnoch die im Ordner Coffee erstellten Klassen aufgerufen.
              CoffeeHeadline(),
              Divider(
                height: 40,
              ),
              CoffeeButton(),
              CoffeeText(),
              Divider(
                height: 20,
              ),
              new RaisedButton(
                onPressed: () async {
                  postRequest();
                },
                child: const Text("Create"),
              )
            ],
          ),
        ));
  }
}
