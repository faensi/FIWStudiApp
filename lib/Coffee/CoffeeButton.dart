import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeView.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:FIW_Studi_App/globals.dart' as globals;
import 'package:FIW_Studi_App/Networking/NetworkingFunctions.dart';

class CoffeeButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //new Timer.periodic(Duration(seconds: 3), (Timer t) => CoffeeButtonState());
    return CoffeeButtonState();
  }
}

class CoffeeButtonState extends State<CoffeeButton> {
  //final String _assetPath;
  //  CoffeeBannerState(this._assetPath);
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
                coffeeLogic();
              }),
              child: Image.asset(cofImageAdr),
            ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          child: Center(
            child: Text(
              cofStatus,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }

  void coffeeLogic() {
    if (globals.cState == "10") {
      cofImageAdr = "Images/Coffee_full.png";
      cofStatus = "Kaffee gemacht" + "\n" + globals.displayTime();
    } else if (globals.cState == "20") {
      cofImageAdr = "Images/Coffee_shutoff.png";
      cofStatus = "Kaffeemaschine aus" + "\n" + globals.displayTime();
    } else if (globals.cState == "30") {
      cofImageAdr = "Images/Coffee_empty.png";
      cofStatus = "Kaffeemaschine leer" + "\n" + globals.displayTime();
    } else if (globals.cState == "40") {
      cofImageAdr = "Images/Coffee_broken.png";
      cofStatus = "Kaffeemaschine defekt" + "\n" + globals.displayTime();
    } else {
      print("Error");
    }
  }

  @override
  void initState() {
    super.initState();
    getCData();
    //TODO: check out how to refresh
    new Timer.periodic(
      Duration(seconds: 1),
      (Timer t) => setState(() {
        getCData();
        coffeeLogic();
      }),
    );
  }
}
