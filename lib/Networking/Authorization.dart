import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:FIW_Studi_App/globals.dart' as globals;

var body;

void getAInfo() {
/*
Future<http.Response> getAInfo() async {


  var url = 'https://apistaging.fiw.fhws.de/studi-app/api/';
  String username = globals.kNumber;
  String password = globals.password;

  String basicAuth =
      'Basic ' + base64Encode(utf8.encode('$username:$password'));
  Map data = {};
  var body = json.encode(data);
  var response = await http.post(url,
      headers: {
        HttpHeaders.authorizationHeader: basicAuth,
        "Content-Type": "application/json"
      },
      body: body);
  return response;
   */
}

void checkAuth() {
  getAInfo();
  //instead of true -> json... something... body... something...== something
  if (true) globals.isLoggedIn = true;
}
