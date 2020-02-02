import 'dart:convert';
import 'dart:ffi';

import 'package:FIW_Studi_App/Networking/Button.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeHeadline.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeText.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';
import 'package:FIW_Studi_App/Networking/Post.dart';
import 'package:FIW_Studi_App/globals.dart' as globals;

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
            CoffeeHeadline(),
            Divider(
              height: 40,
            ),
            CoffeeButton(),
            CoffeeText(),
            Divider(
              height: 20,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    globals.isLoggedIn = true;
                    print(globals.isLoggedIn);
                    setState(() {});
                  },
                  child: const Text("true"),
                ),
                new RaisedButton(
                  onPressed: () {
                    globals.isLoggedIn = false;
                    print(globals.isLoggedIn);
                    setState(() {});
                  },
                  child: const Text("false"),
                ),
              ],
            ),
            if (globals.isLoggedIn)
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    onPressed: () async {
                      postRequest(10);
                    },
                    child: const Text("Fertig"),
                  ),
                  new RaisedButton(
                    onPressed: () async {
                      postRequest(20);
                    },
                    child: const Text("Aus"),
                  ),
                  new RaisedButton(
                    onPressed: () async {
                      postRequest(30);
                    },
                    child: const Text("Leer"),
                  ),
                  new RaisedButton(
                    onPressed: () async {
                      postRequest(40);
                    },
                    child: const Text("Defekt!"),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
