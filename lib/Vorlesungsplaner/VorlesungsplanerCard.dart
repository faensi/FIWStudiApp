import 'package:FIW_Studi_App/Vorlesungsplaner/VorlesungsplanerView.dart';
import 'package:flutter/material.dart';

class VorlesungsplanerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VorlesungsplanerView()),
        );
      },
      child: new Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset('Images/Coffee_background.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Coffeemachine'),
                  SizedBox(height: 8.0),
                  Text('Status On/Off'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
