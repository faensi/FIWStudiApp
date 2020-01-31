import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';

class VorlesungsplanerView extends StatelessWidget {
  static const double _hPad = 16;

  @override
  Widget build(BuildContext context) {
    List<SizedBox> _buildCards(int count) {
      List<SizedBox> boxes = List.generate(
          count,
          (int index) => SizedBox(
                height: 120,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ListTile(
                        title: Text('Vorlesungstitel'),
                        subtitle: Text('Kurze beschreibung'),
                        leading: Icon(
                          Icons.add_to_photos,
                          color: studiAppGreen,
                          size: 50,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
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
