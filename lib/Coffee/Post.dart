import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<http.Response> postRequest() async {
  var url = 'https://apistaging.fiw.fhws.de/studi-app/api/coffee-machine/';
  var ISO8601time =
      DateTime.now().toIso8601String().substring(0, 19) + "+01:00";
  //ISO8601 implementation only meant for +01:00 timezone
  Map data = {"state": 30, "statusTime": ISO8601time, "userName": "TestUserX"};
  //noch hardcoded bitte aendern

  //encode Map to JSON
  var body = json.encode(data);

  var response = await http.post(url,
      headers: {"Content-Type": "application/json"}, body: body);
  return response;
}
