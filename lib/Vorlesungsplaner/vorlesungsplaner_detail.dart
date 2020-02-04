import 'package:FIW_Studi_App/Vorlesungsplaner/note.dart';
import 'package:flutter/material.dart';
import 'package:FIW_Studi_App/globals.dart' as globals;

class VorlesungsplanerDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VorlesungsplanerDetailState();
  }
}

class _VorlesungsplanerDetailState extends State<VorlesungsplanerDetail> {
  List<Course> _courseList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Veranstaltungsübersicht"),
      ),
      body: _courseList == null
          ? Center(child: CircularProgressIndicator())
          : _buildCourseList(),
    );
  }

  Widget _buildCourseList() {
    if (_courseList.isEmpty) {
      return Center(
        child: Text("Es wurden leider keine Veranstaltungen gefunden :.("),
      );
    }

    return ListView.separated(
      itemCount: _courseList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(_courseList[index].title),
          subtitle: Text(_courseList[index].lecturers),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  Future<void> _initData() async {
    final note = Note(globals.semester, globals.degreeProgramm, globals.offset,
        globals.insertSize);
    final courseList = await note.getCourseList();
    setState(() {
      _courseList = courseList;
    });
  }
}
