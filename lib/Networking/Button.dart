import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/KaffeeView.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/Networking/Post.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:FIW_Studi_App/globals.dart';

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
  String status = "Tippe auf das Bild, um den Status zu erfahren";
  final String url =
      "https://apistaging.fiw.fhws.de/studi-app/api/coffee-machine/getCurrentState";

  Future<String> getCData() async {
    http.Response response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    cData = jsonDecode(response.body);
    cState = cData["state"].toString();
    cLastTime = DateTime.parse(cData["statusTime"]);
    cUserName = cData[
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
          child: Center(
            child: GestureDetector(
              onTap: () => setState(() {
                getCData();
                if (cState == "10") {
                  image1 = "Images/Coffeeimage.png";
                  status = "Kaffee gemacht" + "\n" + displayTime();
                } else if (cState == "20") {
                  image1 = "Images/KaffeGrey.png";
                  status = "Kaffeemaschine aus" + "\n" + displayTime();
                } else if (cState == "30") {
                  image1 = "Images/Coffee_background.png";
                  status = "Kaffeemaschine leer" + "\n" + displayTime();
                } else if (cState == "40") {
                  image1 = "Images/Coffee_background.png";
                  status = "Kaffeemaschine defekt" + "\n" + displayTime();
                } else {
                  print("Error");
                }
              }),
              child: Image.asset(image1),
            ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          child: Center(
            child: Text(
              status,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
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
