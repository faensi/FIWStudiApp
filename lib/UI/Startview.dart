import 'package:FIW_Studi_App/UI/KaffeeView.dart';
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
              leading: IconButton(
                  icon: Icon(
                    Icons.menu,
                    semanticLabel: 'menu',
                  ),
                  onPressed: () {
                    print('menu button');
                  })),
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
                        child: Image.asset('Images/Coffeeimage.png'),
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
                  print('Card Clicked');
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
                            Text('room occupancy'),
                            SizedBox(height: 8.0),
                            Text('x rooms are free'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print('Card Clicked');
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
                  print('Card Clicked');
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
                  print('Card Clicked');
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
                            Text('FS News Admin'),
                            SizedBox(height: 8.0),
                            Text('Create FS News'),
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
