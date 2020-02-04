import 'package:flutter/material.dart';
import '../UI/Colors.dart';

class FSnewsViewState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FSnewsView',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('FSnewsView'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //FSnewsNews("Title", "News"),
          ],
        ),
      ),
    );
  }
}
