import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:FIW_Studi_App/globals.dart' as globals;

Future<http.Response> postRequest(int postState) async {
  var url = 'https://apistaging.fiw.fhws.de/studi-app/api/coffee-machine/';

  Map data = {
    "state": postState,
    "statusTime": globals.getIso8601Time(),
    "userName": "TestUserX"
  };
  //noch hardcoded bitte aendern

  //encode Map to JSON
  var body = json.encode(data);

  var response = await http.post(url,
      headers: {"Content-Type": "application/json"}, body: body);
  return response;
}
