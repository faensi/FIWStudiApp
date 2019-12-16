import 'package:FIW_Studi_App/UI/CoffeeButton.dart';
import 'package:FIW_Studi_App/UI/CoffeeHeadline.dart';
import 'package:FIW_Studi_App/UI/CoffeeText.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/Colors.dart';

class KaffeeView extends StatelessWidget {
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
              // CoffeeBanner('Images/Coffee_background.png'),
              CoffeeText(),
            ],
          ),
        ));
  }
}
