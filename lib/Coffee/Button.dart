import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/KaffeeView.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/Coffee/Post.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CoffeeButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CoffeeButtonState();
  }
}

class CoffeeButtonState extends State<CoffeeButton> {
  //final String _assetPath;

  //  CoffeeBannerState(this._assetPath);
  String image1 = "Images/Coffee_background.png";
  String status = "Kaffee gemacht!";
  final String url =
      "https://apistaging.fiw.fhws.de/studi-app/api/coffee-machine/getCurrentState";
  var data;
  var state;
  var lastTime;
  var userName;

  Future<String> getCData() async {
    http.Response response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    data = jsonDecode(response.body);
    state = data["state"].toString();
    lastTime = data["statusTime"];
    userName = data[
        "userName"]; //momentan nicht in Verwendung; hier Aufgrund der Datenabnk
    return "Success!";
  }

  @override
  Widget build(BuildContext context) {
    // erzeugt Container mit Größe 200x200 Pixel für den KaffeeButton
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints.expand(
            height: 200,
            width: 200,
          ),
          child: GestureDetector(
            onTap: () => setState(() {
              getCData();
              if (state == "10") {
                image1 = "Images/Coffeeimage.png";
                status = "Kaffee gemacht" +
                    "\n" +
                    DateTime.parse(lastTime).toString();
              } else if (state == "20") {
                image1 = "Images/KaffeGrey.png";
                status =
                    "Kaffee leer" + "\n" + DateTime.parse(lastTime).toString();
              } else if (state == "30") {
                image1 = "Images/Coffee_background.png";
                status = "Kaffeemaschine aus" +
                    "\n" +
                    DateTime.parse(lastTime).toString();
              } else if (state == "40") {
                image1 = "Images/Coffee_background.png";
                status = "Kaffeemaschine defekt" +
                    "\n" +
                    DateTime.parse(lastTime).toString();
              } else {
                print("Error");
              }
            }),
            child: Image.asset(image1),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          child: Text(
            status,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    this.getCData();
  }
}
