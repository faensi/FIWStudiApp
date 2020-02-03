import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:FIW_Studi_App/globals.dart' as globals;

Future<http.Response> postNews(String title, String text) async {
  var url = 'https://apistaging.fiw.fhws.de/studi-app/api/news';
  String username = globals.kNumber;
  String password = globals.password;

  String basicAuth =
      'Basic ' + base64Encode(utf8.encode('$username:$password'));
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
        HttpHeaders.authorizationHeader: basicAuth,
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
