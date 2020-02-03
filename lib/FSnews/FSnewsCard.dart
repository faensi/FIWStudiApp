import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/FSnews/FSnewsView.dart';

class FSnewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FSnewsView()),
        );
      },
      child: new Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          // Anordnung der Elemente, entweder Horizontal oder Vertikal
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset('Images/news-636978_1280.jpg'),
            ),
            Padding(
              // genaue Eckdaten von von allen seiten wie groß das feld sein soll
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                // Anordnung der Elemente, entweder Horizontal oder Vertikal
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(
                    height: 20,
                  ),
                  Center(child: Text('FSnews')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
