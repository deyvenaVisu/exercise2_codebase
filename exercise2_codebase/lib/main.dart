//? MOBILE APPLICATION PROGRAMMING
//? Exercise 2

// Section: 02
// Member 1's Name: DEIVINA VISVANADAN   Location: BIDOR,PERAK (i.e. where are you currently located)
// Member 2's Name: ANIS SYAZWANI  Location: KAJANG, SEMENYIH, SELANGOR.
import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MAP Exercise 2',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MainScreen(),
    );
  }
}
