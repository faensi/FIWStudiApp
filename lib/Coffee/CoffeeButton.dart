import 'package:FIW_Studi_App/Colors.dart';
import 'package:FIW_Studi_App/UI/Startview.dart';
import 'package:flutter/material.dart';

class CoffeeBanner extends StatelessWidget {
  final String _assetPath;

  CoffeeBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: new Container(
        constraints: BoxConstraints.expand(
          height: 200,
          width: 200,
        ),
        decoration: BoxDecoration(color: studiAppWhite),
        child: Image.asset(
          'Images/Coffee_background.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
