import 'package:FIW_Studi_App/Colors.dart';
import 'package:flutter/material.dart';

class CoffeeText extends StatelessWidget {
  static const double _hPad = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
            child: Text(
              "dhfsifsitatueatuii iztdz itdutrsi tdout ztsdzrszrsozts",
              style: TextStyle(fontSize: 16.0),
            ),
          )
        ]);
  }
}
