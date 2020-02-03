import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:FIW_Studi_App/globals.dart' as globals;

final String coffeeGetUrl =
    "https://apistaging.fiw.fhws.de/studi-app/api/coffee-machine/getCurrentState";

Future<http.Response> postNews(String title, String text) async {
  var url = 'https://apistaging.fiw.fhws.de/studi-app/api/news';
  String username = globals.kNumber;
  String password = globals.password;

  Map data = {
    "image": "",
    "text": text,
    "time": globals.getIso8601Time(),
    "title": title,
    "userName": username,
  };
  var body = json.encode(data);
  var response = await http.post(url,
      headers: {
        HttpHeaders.authorizationHeader: basicAuth(username, password),
        "Content-Type": "application/json"
      },
      body: body);
  return response;
}

Future<http.Response> postState(int pState) async {
  var url = 'https://apistaging.fiw.fhws.de/studi-app/api/coffee-machine/';

  Map data = {
    "state": pState,
    "statusTime": globals.getIso8601Time(),
    "userName": globals.kNumber,
  };
  var body = json.encode(data);

  var response = await http.post(url,
      headers: {"Content-Type": "application/json"}, body: body);
  return response;
}

String basicAuth(username, password) {
  return 'Basic ' + base64Encode(utf8.encode('$username:$password'));
}

Future<String> getNewsData() async {
  http.Response response = await http.get(
      Uri.encodeFull('https://apistaging.fiw.fhws.de/studi-app/api/news'),
      headers: {
        HttpHeaders.authorizationHeader:
            basicAuth(globals.kNumber, globals.password),
        "Accept": "application/json"
      });
  globals.newsData = jsonDecode(response.body);
  return "Success!";
}

Future<String> getCData() async {
  http.Response response = await http.get(Uri.encodeFull(coffeeGetUrl),
      headers: {"Accept": "application/json"});
  globals.cData = jsonDecode(response.body);
  globals.cState = globals.cData["state"].toString();
  globals.cLastTime = DateTime.parse(globals.cData["statusTime"]);
  globals.cUserName = globals.cData[
      "userName"]; //momentan nicht in Verwendung; hier Aufgrund der Datenabnk
  return "Success!";
}
