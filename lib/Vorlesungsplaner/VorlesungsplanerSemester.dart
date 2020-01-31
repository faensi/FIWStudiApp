import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';
import 'package:FIW_Studi_App/Vorlesungsplaner/VorlesungsplanerDetail.dart';

class VorlesungsplanerSemester extends StatelessWidget {
  final List<String> semester = ["1", "2", "3", "4", "5", "6", "7"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wähle deinen Semester aus"),
        backgroundColor: studiAppGreen,
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context, // Hier Semestervariable abändern.
                        MaterialPageRoute(
                          builder: (context) => VorlesungsplanerDetail(),
                        ),
                      );
                    },
                    child: Card(
                      child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: <Widget>[
                              Text(semester[index] + ". Semester",
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
