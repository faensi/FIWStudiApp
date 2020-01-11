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

  @override
  Widget build(BuildContext context) {
    // erzeugt Container mit größe 200x200 Pixel für den KaffeeButton
    return Container(
      constraints: BoxConstraints.expand(
        height: 200,
        width: 200,
      ),
      // Knopf ändert auf Druck den Status und soll diesen Später an die Datenbank senden
      child: GestureDetector(
        onTap: () => setState(() {
          if (image1 == "Images/Coffee_background.png")
            image1 = "Images/Coffeeimage.png";
          else if (image1 == "Images/Coffeeimage.png")
            image1 = "Images/KaffeGrey.png";
          else if (image1 == "Images/KaffeGrey.png")
            image1 = "Images/Coffee_background.png";
        }),
        child: Image.asset(image1),
      ),
    );
  }
}
