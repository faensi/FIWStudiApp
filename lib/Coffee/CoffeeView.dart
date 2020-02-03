import 'package:FIW_Studi_App/Coffee/CoffeeButton.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeHeadline.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeText.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';
import 'package:FIW_Studi_App/Networking/NetworkingFunctions.dart';
import 'package:FIW_Studi_App/globals.dart' as globals;
import 'dart:async';

class CoffeeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CoffeeViewState();
  }
}

String cofImageAdr = "Images/Coffee_full.png";
String cofStatus = "Der Status wird geladen";

class CoffeeViewState extends State<CoffeeView> {
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
                new RaisedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text("setState"),
                ),
              ],
            ),
            if (globals.isLoggedIn)
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    onPressed: () async {
                      postState(10);
                    },
                    child: const Text("Fertig"),
                  ),
                  new RaisedButton(
                    onPressed: () async {
                      postState(20);
                    },
                    child: const Text("Aus"),
                  ),
                  new RaisedButton(
                    onPressed: () async {
                      postState(30);
                    },
                    child: const Text("Leer"),
                  ),
                  new RaisedButton(
                    onPressed: () async {
                      postState(40);
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
