import 'package:FIW_Studi_App/Coffee/CoffeeBanner.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeHeadline.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeText.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';

class KaffeeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KaffeeViewState();
  }
}

class KaffeeViewState extends State<KaffeeView> {
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
              CoffeeBanner(),
              CoffeeText(),
            ],
          ),
        ));
  }
}
