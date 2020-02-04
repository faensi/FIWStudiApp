import 'package:FIW_Studi_App/Coffee/coffee_button.dart';
import 'package:FIW_Studi_App/Coffee/coffee_headline.dart';
import 'package:FIW_Studi_App/Coffee/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/Networking/networking_functions.dart';
import 'package:FIW_Studi_App/globals.dart' as globals;

class CoffeeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CoffeeViewState();
  }
}

class CoffeeViewState extends State<CoffeeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COFFEE"),
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
    );
  }
}
