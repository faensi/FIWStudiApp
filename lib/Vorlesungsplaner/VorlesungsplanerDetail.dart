import 'package:FIW_Studi_App/Note.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/globals.dart' as globals;
import 'package:FIW_Studi_App/Note.dart';

class VorlesungsplanerDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VorlesungsplanerDetailState();
  }
}

class VorlesungsplanerDetailState extends State<VorlesungsplanerDetail> {
  Note n = Note(globals.semester, globals.degreeProgramm, globals.offset,
      globals.insertSize);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
