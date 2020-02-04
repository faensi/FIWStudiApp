import 'package:FIW_Studi_App/FSnews/fsnews_view.dart';
import 'package:FIW_Studi_App/Coffee/coffee_view.dart';
import 'package:FIW_Studi_App/Vorlesungsplaner/vorlesungsplaner_view.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/login_form.dart';

import '../globals.dart';
import '../style.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // setzt die Elemente im Children in eine Liste
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          //fslogin --> true
          // beschreibt den Drawer Kopf
          UserAccountsDrawerHeader(
            accountName: Text("Fachschaft"),
            accountEmail: null,
            //beschreibt das Bild im Drawer
            currentAccountPicture: CircleAvatar(
              backgroundColor: studiAppPurple,
              child: isLoggedIn ? Text("FS") : null,
            ),
            //beschreibt die Boxfarbe
            decoration: BoxDecoration(
              color: studiAppGreen,
            ),
          ),
          //beschreibt ein Element der ListView
          ListTile(
            title: Text("1. Kaffeemaschine"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CoffeeView()),
              );
            },
          ),
          ListTile(
            title: Text("2. FS-News"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FSnewsView()),
              );
            },
          ),
          ListTile(
            title: Text("3. Vorlesungsssplaner"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VorlesungsplanerView()),
              );
            },
          ),
          ListTile(
            title: Text("Login"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginForm()),
              );
            },
          ),
          // fügt eine Leerzeile ein
          Divider(),
          ListTile(
            title: Text("Close"),
            trailing: Icon(Icons.close),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
