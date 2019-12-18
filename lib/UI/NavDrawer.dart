import 'package:FIW_Studi_App/UI/FSnewsChangeView.dart';
import 'package:FIW_Studi_App/UI/FSnewsView.dart';
import 'package:FIW_Studi_App/UI/KaffeeChangeView.dart';
import 'package:FIW_Studi_App/UI/KaffeeView.dart';
import 'package:FIW_Studi_App/UI/LoginForm.dart';
import 'package:FIW_Studi_App/UI/VorlesungsplanerView.dart';
import 'package:flutter/material.dart';
import '../Colors.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "navdraw",
      home: new Drawer(
        child: new ListView(
          children: <Widget>[
            //fslogin --> true

            new UserAccountsDrawerHeader(
              accountName: new Text("Fachschaft"),
              accountEmail: null,
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.purple,
                child: new Text("FS"),
              ),
            ),
            new ListTile(
              title: new Text("1. Kaffe"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KaffeeView()),
                );
              },
            ),
            new ListTile(
              title: new Text("2. Vorlesungsssplaner"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VorlesungsplanerView()),
                );
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}
