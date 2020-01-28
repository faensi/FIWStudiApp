import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/KaffeeView.dart';
import 'package:FIW_Studi_App/Coffee/Button.dart';

class CoffeeCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CoffeeCardState();
  }
}

class CoffeeCardState extends State<CoffeeCard> {
  String image = CoffeeButtonState().image1;
  @override
  Widget build(BuildContext context) {
    // macht die "Card" anklickbar
    return InkWell(
      onTap: () {
        // Navigator verweist auf FolgeView
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KaffeeView()),
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
              child: Image.asset(image),
            ),
            Padding(
              // genaue Eckdaten von von allen seiten wie groß das feld sein soll
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                // Anordnung der Elemente, entweder Horizontal oder Vertikal
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Coffeemachine'),
                  // das leere Feld zwischen den Zeilen die, diese trennt
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
