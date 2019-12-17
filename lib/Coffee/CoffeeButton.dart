import 'package:FIW_Studi_App/UI/Colors.dart';
import 'package:FIW_Studi_App/UI/Startview.dart';
import 'package:flutter/material.dart';

class CoffeeBanner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CoffeeBannerState();
  }
}

class CoffeeBannerState extends State<CoffeeBanner> {
  //final String _assetPath;

//  CoffeeBannerState(this._assetPath);
  String image1 = "Images/Coffee_background.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200,
        width: 200,
      ),
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
