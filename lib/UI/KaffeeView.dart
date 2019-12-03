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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: studiAppGreen,
              floating: true,
              expandedHeight: 300.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('Images/Coffee_background.png',
                    fit: BoxFit.cover),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 150.0,
              delegate: SliverChildListDelegate([
                Container(color: studiAppGreen),
                Container(color: studiAppGrey),
                Container(color: studiAppWhite),
                Container(color: studiAppGreen),
                Container(color: studiAppGrey),
                Container(color: studiAppWhite),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
