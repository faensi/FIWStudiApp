import 'dart:convert';
import 'dart:ffi';
import 'package:FIW_Studi_App/Networking/Button.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeHeadline.dart';
import 'package:FIW_Studi_App/Coffee/CoffeeText.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/UI/Colors.dart';
import 'package:FIW_Studi_App/Networking/NetworkingFunctions.dart';
import 'package:FIW_Studi_App/globals.dart' as globals;
//import 'package:webview_flutter/webview_flutter.dart';

class KaimWView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KaimWViewState();
  }
}

class KaimWViewState extends State<KaimWView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webview'),
      ), /*
        body: WebView(
          initialUrl: 'http://unicorns.diamonds/vp',
          javascriptMode: JavascriptMode.unrestricted,
        )*/
    );
  }
}
