import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/Colors.dart';

class KaffeeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        /*return MaterialApp(
      title: 'KaffeeView',
      home: Scaffold(
        backgroundColor: Colors.white,*/

        /*appBar: AppBar(
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
        ),*/
        CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: studiAppGreen,
          pinned: true,
          expandedHeight: 300.0,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text('KaffeeView'),
            background:
                Image.asset('Images/Coffee_background.png', fit: BoxFit.cover),
          ),
        ),
        /*SingleChildScrollView(
              child: new Text(
                'das ist ein Text in dem es um Kaffee Geht',
                style: new TextStyle(
                  fontSize: 16.0,
                  color: studiAppWhite,
                ),
              ),
            ),*/
        /*SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 4,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                      alignment: Alignment.center,
                      color: studiAppGrey,
                      child: Text('grid item '));
                },
                childCount: 5,
              ),
            )*/
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
    );
  }
}
