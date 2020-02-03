import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';
import 'package:FIW_Studi_App/Vorlesungsplaner/VorlesungsplanerDetail.dart';
import 'package:FIW_Studi_App/globals.dart' as globals;

class VorlesungsplanerSemester extends StatelessWidget {
  final List<int> semesterList = [1, 2, 3, 4, 5, 6, 7];

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
                      globals.semester = semesterList[index];
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
                              Text(
                                  semesterList[index].toString() + ". Semester",
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
