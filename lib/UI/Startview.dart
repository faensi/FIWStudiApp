import 'package:FIW_Studi_App/UI/FSnewsChangeView.dart';
import 'package:FIW_Studi_App/UI/FSnewsView.dart';
import 'package:FIW_Studi_App/UI/KaffeeChangeView.dart';
import 'package:FIW_Studi_App/UI/KaffeeView.dart';
import 'package:FIW_Studi_App/UI/LoginForm.dart';
import 'package:FIW_Studi_App/UI/VorlesungsplanerView.dart';
import 'package:flutter/material.dart';
import '../Colors.dart';

class Startview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FIW Studi App',
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('FIW Studi App'),
            backgroundColor: studiAppGreen,
          ),
          drawer: new Drawer(
              child: new ListView(children: <Widget>[
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
            ),
            new ListTile(
              title: new Text("2. Vorlesungsssplaner"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            )
          ])),
          body: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(16.0),
            childAspectRatio: 8.0 / 9.0,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KaffeeView()),
                  );
                },
                child: new Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('Images/KaffeGrey.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Coffeemachine'),
                            SizedBox(height: 8.0),
                            Text('Status On/Off'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VorlesungsplanerView()),
                  );
                },
                child: new Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('Images/Kalender.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Lecture planner'),
                            SizedBox(height: 8.0),
                            Text('Create your Plan'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FSnewsView()),
                  );
                },
                child: new Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset('Images/news-636978_1280.jpg'),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('FS-News'),
                            SizedBox(height: 8.0),
                            Text('newest news'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FSnewsChangeView()),
                  );
                },
                child: new Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset(''),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('FS-News Change'),
                            SizedBox(height: 8.0),
                            Text('Latest Changes'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KaffeeChangeView()),
                  );
                },
                child: new Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 18.0 / 11.0,
                        child: Image.asset(''),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Kaffe Change'),
                            SizedBox(height: 8.0),
                            Text('Change Status'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             ],
          ),
        ));
  }
}
