import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeView.dart';
import 'package:FIW_Studi_App/Networking/Button.dart';
import 'package:FIW_Studi_App/globals.dart';
import 'package:FIW_Studi_App/KaimWebview/KaimWView.dart';

class KaimWVCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KaimWVState();
  }
}

class KaimWVState extends State<KaimWVCard> {
  @override
  Widget build(BuildContext context) {
    // macht die "Card" anklickbar
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KaimWView()),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          // Anordnung der Elemente, entweder Horizontal oder Vertikal
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Rellation von Breite und höhe der image
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset('Images/unicorn.png'),
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
                  Center(child: Text('KaimVP')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
