import 'package:flutter/material.dart';

// The main function is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('FIW Studi App'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Image(
            image: AssetImage(),
          ),
        ),
      ),
    ),
  );
}
