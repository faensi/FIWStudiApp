import 'package:FIW_Studi_App/FSnews/FSnewsCreateView.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';

class FSnewsView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FSnewsViewState();
  }
}

class FSnewsViewState extends State<FSnewsView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FSnewsView',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('FSnewsView'),
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FSnewsCreateView()),
            );
          },
        ),
      ),
    );
  }
}
