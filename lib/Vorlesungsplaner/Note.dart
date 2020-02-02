import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Note {

  int sem = 1;                            // 1-7
  String degreeProgram = "{programm}";    // bec, bin, bwi, mis
  int offset= 0;                          // Startpunkt
  int insertSize = 10;                    // Anzahl anzuzeigender Elemente
  var q = "";                          // bestimmte Query, nur für eventuelle spätere Updates


  Note(int sem, String degreeProgram, int offset, int insertSize){
    this.sem = sem;
    this.degreeProgram = degreeProgram;
    this.offset = offset;
    this.insertSize = insertSize;
  }

  void getInfo(){
    restApi(sem, degreeProgram, offset, insertSize, q);
  }


  static Future<List<List<String>>> restApi(int sem, String degreeProgram, int offset, int insertSize, String q) async {

// ========== Schritt 1 - REST-API ansprechen und Liste aller weiteren möglichen Routes ziehen ==========
    var url = 'https://fiwis.fiw.fhws.de/fiwis2/api';

    http.Response response = await http.get(
        Uri.encodeFull(url),
        headers: {"Accept": "*/*"} // univsereller Content-Type
    );

    //if(response.statusCode==200) {
    var auswahl = response.headers; // :_InternalLinkedHashMap<String, String>

// ========== Schritt 2 - Aus dem Response die Classes-API bauen ==========

    // Response-Map nach "link" searchen und daraus Array bilden
    var links = auswahl["link"].split(","); // :List<String>
    var classesLink;

    for (int i = 0; i < links.length; i++) {
      if (links[i].contains("classes")) { // Suche nach Classes-API
        classesLink = links[i]; // Array-Eintrag speichern
        break;
      }
    }

    var classesApiArray = classesLink.split(";"); // Die Header-Informationen für Classes separieren und einzelne Variablen extrahieren
    var acceptClasses = classesApiArray[2].split("=")[1]; // Ergebnis:   Accept: "application/vnd.fhws-class.classview+json"
    var urlClasses = classesApiArray[0]
        .replaceFirst(RegExp('<'), '')
        .replaceFirst(RegExp('>'), '')
        .split("?")[0]; // url für die API Classes herausdestillieren


// ========== Schritt 3 - Attribute für das Filtern der Anfrage vorbereiten ==========

    var classesFilter = "?q&semester=" +sem.toString() +"&program=" +degreeProgram +"&offset=" +offset.toString() +"&size=" +insertSize.toString();
    String ergebnisUrl = urlClasses + classesFilter;

    http.Response responseClasses = await http.get(
        Uri.encodeFull(ergebnisUrl),
        headers: {"Accept":"*/*"}     // Anmerkung: automatisches Ziehen des MIME-Types generiert einen 400 Fehler, daher "Notlösung"
    );

    var arrayResult;

    if(responseClasses.statusCode==200) {
      arrayResult=responseClasses.body;
    }
    else{
      print("Unbekanter Fehler"+ responseClasses.statusCode.toString());
    }

    var jsonResult = json.decode(arrayResult);
    List<List<String>> resultList = new List(insertSize);


    for (int i = 0; i < jsonResult.length; i++) {
      //Abfrage ob einmaliges Ereignis (ID = 90...) , dann überspringen
      //Abfrage um sicherzustellen, dass nur Kurse aus dem Studiengang angezeigt werden (Any wird ausgefiltert)
      if(jsonResult[i]["id"].toString().codeUnitAt(0).toString()=='57' && jsonResult[i]["id"].toString().codeUnitAt(1).toString()=='48'
      ||jsonResult[i]["studyGroupsToShow"].contains(degreeProgram.toUpperCase()+sem.toString())==false){
                continue;
      }

      // Anmerkung: über    jsonResult[i]["name"]["href"] Zugriff auf URL für Raum & Zeit

      resultList[i]= [jsonResult[i]["name"],jsonResult[i]["lecturerNamesToShow"]];
      print(resultList[i]);

      // Anmerkung: mit jsonResult[i]["icalUrl"]["href"] bekomme ich die URL zu einer ical.Datei
    }
    if (resultList[0]==null) print("Liste leer");
    return resultList;

  }

}