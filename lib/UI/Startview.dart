import 'package:FIW_Studi_App/Coffee/CoffeeCard.dart';
import 'package:FIW_Studi_App/Vorlesungsplaner/VorlesungsplanerCard.dart';
import 'package:FIW_Studi_App/FSnews/FSnewsCard.dart';
import 'package:FIW_Studi_App/Ui/LoginForm.dart';
import 'package:flutter/material.dart';
import 'Colors.dart';

class Startview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StartCards();
  }
}

class _StartCards extends State<Startview> {
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
              CoffeeCard(),
              FSnewsCard(),
              VorlesungsplanerCard(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginForm()),
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
                            Text('Login'),
                            SizedBox(height: 8.0),
                            Text(''),
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

/*  @override
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
              CoffeeCard(),
              FSnewsCard(),
              VorlesungsplanerCard(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginForm()),
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
                            Text('Login'),
                            SizedBox(height: 8.0),
                            Text(''),
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
}*/
/*
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
              CoffeeCard(),
              FSnewsCard(),
              VorlesungsplanerCard(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginForm()),
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
                            Text('Login'),
                            SizedBox(height: 8.0),
                            Text(''),
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

*/
