import 'package:flutter/material.dart';

class RadioWidgetDemo extends StatefulWidget {
  RadioWidgetDemo() : super();

  final String title = "Today's bookings";

  @override
  RadioWidgetDemoState createState() => RadioWidgetDemoState();
}

class RadioWidgetDemoState extends State<RadioWidgetDemo> {

  int selectedRadioTile;

  @override
  void initState () {
    super.initState();
    selectedRadioTile= 0;
  }

  setSelectedRadioTile (int val) {
    setState(() {
      selectedRadioTile= val;
    });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RadioListTile(
                value: 1,
                groupValue: selectedRadioTile,
                title: Text("period1"),
                subtitle: Text ("subtitlep1"),
                onChanged: (val) {
                  print("Radio Tile pressed $val");
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.green,
                secondary: OutlineButton(
                  child: Text("Book!"),
                  onPressed: () {
                    print("Selected");
                  },
                ),
                selected: true,
              ),
              RadioListTile(
                value: 2,
                groupValue: selectedRadioTile,
                title: Text("period2"),
                subtitle: Text ("subtitlep2"),
                onChanged: (val) {
                  print("Radio Tile pressed $val");
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.green,
                secondary: OutlineButton(
                  child: Text("Book!"),
                  onPressed: () {
                    print("Selected");
                  },
                ),
                selected: false,
              ),
              RadioListTile(
                value: 3,
                groupValue: selectedRadioTile,
                title: Text("period3"),
                subtitle: Text ("subtitlep3"),
                onChanged: (val) {
                  print("Radio Tile pressed $val");
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.green,
                secondary: OutlineButton(
                  child: Text("Book!"),
                  onPressed: () {
                    print("Selected");
                  },
                ),
                selected: false,
              ),
              RadioListTile(
                value: 4,
                groupValue: selectedRadioTile,
                title: Text("period4"),
                subtitle: Text ("subtitlep4"),
                onChanged: (val) {
                  print("Radio Tile pressed $val");
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.green,
                secondary: OutlineButton(
                  child: Text("Book!"),
                  onPressed: () {
                    print("Selected");
                  },
                ),
                selected: false,
              )
            ]
        ),
    );
  }
}