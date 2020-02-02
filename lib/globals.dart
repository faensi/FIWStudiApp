import 'package:flutter/material.dart';

//variables for login
String kNumber;
String password;

bool isLoggedIn = true;

//variables for Note Class
int semester = 0;
String degreeProgramm = "";
int offset = 0;
int insertSize = 10;

//variables for Button from API/coffee-machine/getState
Map<String, dynamic> cData;
String cState;
DateTime cLastTime;
String cUserName;

//time functions:
String displayTime() {
  return cLastTime.toString().substring(0, 19);
}

String getIso8601Time() {
  return DateTime.now().toIso8601String().substring(0, 19) + "+00:00";
}
