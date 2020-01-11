import 'package:flutter/material.dart';

class CoffeeText extends StatelessWidget {
  static const double _hPad = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
        // Anordnung der Elemente, entweder Horizontal oder Vertikal + die Startposition
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            // genaue Eckdaten von von allen seiten wie groß das feld sein soll
            padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
            child: Text(
              "dhfsifsitatueatuii iztdz itdutrsi tdout ztsdzrszrsozts",
              // fontsize ist die Beschreibung der Schriftgröße
              style: TextStyle(fontSize: 16.0),
            ),
          )
        ]);
  }
}
