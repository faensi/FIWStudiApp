import 'package:flutter/material.dart';

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
  String status = "Kaffee gemacht";
  @override
  Widget build(BuildContext context) {
    // erzeugt Container mit größe 200x200 Pixel für den KaffeeButton
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints.expand(
            height: 200,
            width: 200,
          ),
          // Knopf ändert auf Druck den Status und soll diesen Später an die Datenbank senden
          child: GestureDetector(
            onTap: () => setState(() {
              if (image1 == "Images/Coffee_background.png") {
                image1 = "Images/Coffeeimage.png";
                status = "Kaffee gemacht";
              } else if (image1 == "Images/Coffeeimage.png") {
                image1 = "Images/KaffeGrey.png";
                status = "Kaffee läuft durch";
              } else if (image1 == "Images/KaffeGrey.png") {
                image1 = "Images/Coffee_background.png";
                status = "Kaffeemaschine sauber";
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
            style: TextStyle(fontSize: 18, fontWeight: ),
          ),
        )
      ],
    );
  }
}
