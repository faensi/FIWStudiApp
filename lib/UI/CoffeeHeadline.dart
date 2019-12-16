import 'package:flutter/material.dart';

class CoffeeHeadline extends StatelessWidget {
  static const double _hPad = 16.0;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
            child: Text(
              "COFFEEBUTTON",
              style: TextStyle(fontSize: 32.0),
            ),
          )
        ]);
  }
}
