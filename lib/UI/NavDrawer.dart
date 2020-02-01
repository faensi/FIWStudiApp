import 'package:FIW_Studi_App/FSnewsView.dart';
import 'package:FIW_Studi_App/KaffeeView.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';
import 'package:FIW_Studi_App/VorlesungsplanerView.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/LoginForm.dart';

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
            accountName: new Text("Fachschaft"),
            accountEmail: null,
            //beschreibt das Bild im Drawer
            currentAccountPicture: new CircleAvatar(
              backgroundColor: studiApppurple,
              child: new Text("FS"),
            ),
            //beschreibt die Boxfarbe
            decoration: BoxDecoration(
              color: studiAppGreen,
            ),
          ),
          //beschreibt ein Element der ListView
          ListTile(
            title: new Text("1. Kaffeemaschine"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KaffeeView()),
              );
            },
          ),
          ListTile(
            title: new Text("2. FS-News"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FSnewsView()),
              );
            },
          ),
          ListTile(
            title: new Text("3. Vorlesungsssplaner"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VorlesungsplanerView()),
              );
            },
          ),
          ListTile(
            title: new Text("Login"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginForm()),
              );
            },
          ),
          // fügt eine Leerzeile ein
          Divider(),
          ListTile(
            title: new Text("Close"),
            trailing: new Icon(Icons.close),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
