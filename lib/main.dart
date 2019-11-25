import 'package:flutter/material.dart';
import 'Colors.dart';

// The main function is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text('FIW Studi App'),
            backgroundColor: studiAppGreen,
            leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  semanticLabel: 'menu',
                ),
                onPressed: () {
                  print('menu button');
                })),
        body: Center(
          child: Image(
            image: AssetImage(''),
          ),
        ),
      ),
    ),
  );
}
