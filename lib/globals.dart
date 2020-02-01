import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/Coffee/Post.dart';

bool isLoggedIn = true;

//variables for Note Class
int semester = 0;
String degreeProgramm = "";
int offset = 0;
int insertSize = 10;

//variables for Button
Map<String, dynamic> cData;
String cState;
DateTime cLastTime;
String cUserName;

String displayTime() {
  return cLastTime.toString().substring(0, 19);
}
