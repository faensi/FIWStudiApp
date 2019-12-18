import 'package:FIW_Studi_App/FSnewsView.dart';
import 'package:FIW_Studi_App/KaffeeView.dart';
import 'package:FIW_Studi_App/UI/NavDrawer.dart';
import 'package:FIW_Studi_App/VorlesungsplanerView.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';

const role =
    'test'; //später variable die beschreibt welche rolle der nutzer hat (admin, FSler oder Default)

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
          drawer: NavDrawer(),
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
            ],
          ),
        ));
  }
}
