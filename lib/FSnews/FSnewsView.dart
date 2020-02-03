import 'package:FIW_Studi_App/FSnews/FSnewsCreateView.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';
import 'package:FIW_Studi_App/Networking/NetworkingFunctions.dart';
import 'package:FIW_Studi_App/globals.dart' as globals;
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

class FSnewsView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FSnewsViewState();
  }
}

class FSnewsViewState extends State<FSnewsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: studiAppGreen,
        title: Text("FS News View"),
        //backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView.builder(
        itemCount: globals.newsData == null
            ? 0
            : globals.newsData.length <= 10
                ? globals.newsData.length
                : 10, //-> maximum of 10 elements
        itemBuilder: (BuildContext context, int index) {
          // we will only use (globals.newsData.length - 1 - index) because we want the latest news
          return Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Wrap(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                globals.newsData[globals.newsData.length -
                                        1 -
                                        index]["title"]
                                    .toString(),
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 18.0,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                    globals.newsData[globals.newsData.length -
                                            1 -
                                            index]["text"]
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 18.0, color: Colors.black87)),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("Author: "),
                              Text(
                                  globals.newsData[globals.newsData.length -
                                          1 -
                                          index]["userName"]
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
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
    );
  }

  @override
  void initState() {
    super.initState();
    getNewsData();
    new Timer.periodic(Duration(seconds: 3), (Timer t) => setState(() {}));
  }
}
