import 'package:FIW_Studi_App/UI/Style.dart';
import 'package:flutter/material.dart';
import 'UI/Startview.dart';
import 'UI/Style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Startview(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
        ),
      ),
    );
  }
}
