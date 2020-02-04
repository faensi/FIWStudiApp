import 'package:FIW_Studi_App/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/Coffee/coffee_view.dart';
import 'dart:async';
import 'package:FIW_Studi_App/globals.dart' as globals;
import 'package:FIW_Studi_App/Networking/networking_functions.dart';

class CoffeeButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CoffeeButtonState();
  }
}

class CoffeeButtonState extends State<CoffeeButton> {
  Timer _timer;

  @override
  Widget build(BuildContext context) {
    // erzeugt Container mit Größe 200x200 Pixel für den KaffeeButton
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints.expand(
            height: 200,
            width: 200,
          ),
          child: Center(
            child: GestureDetector(
              onTap: () => setState(() {
                getCData();
                coffeeLogic();
              }),
              child: Image.asset(cofImageAdr),
            ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          child: Center(
            child: Text(
              cofStatus,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }

  void coffeeLogic() {
    if (globals.cState == "10") {
      cofImageAdr = "Images/Coffee_full.png";
      cofStatus = "Kaffee gemacht" + "\n" + HelperFunctions.displayTime();
    } else if (globals.cState == "20") {
      cofImageAdr = "Images/Coffee_shutoff.png";
      cofStatus = "Kaffeemaschine aus" + "\n" + HelperFunctions.displayTime();
    } else if (globals.cState == "30") {
      cofImageAdr = "Images/Coffee_empty.png";
      cofStatus = "Kaffeemaschine leer" + "\n" + HelperFunctions.displayTime();
    } else if (globals.cState == "40") {
      cofImageAdr = "Images/Coffee_broken.png";
      cofStatus =
          "Kaffeemaschine defekt" + "\n" + HelperFunctions.displayTime();
    } else {
      print("Error");
    }
  }

  @override
  void initState() {
    super.initState();
    _iniData();
  }

  //dispose ist dazu da, damit es keine Memory leaks gibt
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Future<void> _iniData() async {
    await getCData();
    coffeeLogic();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer t) {
      if (mounted)
        setState(() {
          getCData();
          coffeeLogic();
        });
    });
  }
}
