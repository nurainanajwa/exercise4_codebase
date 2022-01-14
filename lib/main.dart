//? MOBILE APPLICATION PROGRAMMING
//? Exercise 4

// Date: 14 January 20222
// Member 1's Name: Nuraina Najwa binti Mohd Rauzi   Section: 02  Location: Gombak, Selangor (i.e. where are you currently located)
// Member 2's Name: Nur Ainaa Najihah Binti Azizan    Section: 02   Location: Sungai Petani, Kedah
// Log the time(s) your pair programming sessions
//  Date         Time (From)   To             Duration (in minutes)
//  14/1/2022     2.33p.m       3.13p.m       40minutes
//  14/1/2022      9.54p.m     11.34p.m         1hours 40 minutes  
//  _________    ___________   ___________    ________
//
////? The main file (main.dart) is fully given. Do nothing here.

import 'package:flutter/material.dart';

import 'app/service_locator.dart';
import 'screens/main/main_screen.dart';

void main() {
  initializeServiceLocator();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MAP Exercise 4',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MainScreen(),
    // home: NoteScreen(),
  ));
}
