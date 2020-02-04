import 'package:FIW_Studi_App/Vorlesungsplaner/note.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/globals.dart' as globals;

class VorlesungsplanerDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VorlesungsplanerDetailState();
  }
}

class VorlesungsplanerDetailState extends State<VorlesungsplanerDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wähle deinen Studiengang aus"),
      ),
      body: ListView.builder(
        itemCount: globals.insertSize,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Card(
                      child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: <Widget>[
                              Text("Name: "),
                              //dataList[index],
                            ],
                          )),
                    ),
                  ]),
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Note n = Note(globals.semester, globals.degreeProgramm, globals.offset,
        globals.insertSize);
    var dataList = n.getInfo;
  }
}
