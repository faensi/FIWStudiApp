import 'package:FIW_Studi_App/Vorlesungsplaner/VorlesungsplanerSemester.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';
import 'package:FIW_Studi_App/globals.dart' as globals;

class VorlesungsplanerView extends StatelessWidget {
  final List<String> studiengaenge = ["bec", "inf", "bwi", "mis"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wähle deinen Studiengang aus"),
        backgroundColor: studiAppGreen,
      ),
      body: ListView.builder(
        itemCount: studiengaenge.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        globals.degreeProgramm = studiengaenge[index];
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VorlesungsplanerSemester(),
                          ),
                        );
                      },
                      child: Card(
                        child: Container(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: <Widget>[
                                Text("Name: "),
                                Text(studiengaenge[index],
                                    style: TextStyle(
                                        fontSize: 18.0, color: Colors.black87)),
                              ],
                            )),
                      ),
                    ),
                  ]),
            ),
          );
        },
      ),
    );
  }
}
