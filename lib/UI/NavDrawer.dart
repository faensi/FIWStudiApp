import 'package:FIW_Studi_App/KaffeeView.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';

import 'package:FIW_Studi_App/VorlesungsplanerView.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/LoginForm.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          //fslogin --> true

           UserAccountsDrawerHeader(
            accountName: new Text("Fachschaft"),
            accountEmail: null,
            currentAccountPicture: new CircleAvatar(
              backgroundColor: studiApppurple,
              child: new Text("FS"),
            ),
            decoration: BoxDecoration(
              color: studiAppGreen,
            ),
          ),
           ListTile(
            title: new Text("1. Kaffe"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KaffeeView()),
              );
            },
          ),
          ListTile(
            title: new Text("2. Vorlesungsssplaner"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VorlesungsplanerView()),
              );
            },
          ),
          new ListTile(
            title: new Text("login"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginForm()),
              );
            },
          ),
           Divider(),
           ListTile(
            title: new Text("Close"),
            trailing: new Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
