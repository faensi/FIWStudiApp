import 'package:flutter/material.dart';
import 'Startview.dart';
import 'package:FIW_Studi_App/Colors.dart';

class VorlesungsplanerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<SizedBox> _buildCards(int count) {
      List<SizedBox> boxes = List.generate(
          count,
          (int index) => SizedBox(
                height: 120,
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(''),
                        subtitle: Text(''),
                        leading: Icon(
                          Icons.add_box,
                          color: studiAppGreen,
                          size: 50,
                        ),
                      )
                    ],
                  ),
                ),
              ));

      return boxes;
    }

    return MaterialApp(
      title: 'VorlesungsplanerView',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Vorlesungsplaner'),
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
        body: ListView(
          children: _buildCards(10),
        ),
      ),
    );
  }
}
