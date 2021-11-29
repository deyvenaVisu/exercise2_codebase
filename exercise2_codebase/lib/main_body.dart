//? MOBILE APPLICATION PROGRAMMING
//? Exercise 2

// Section: 02
// Member 1's Name: DEIVINA VISVANADAN   Location: BIDOR,PERAK (i.e. where are you currently located)
// Member 2's Name: ANIS SYAZWANI  Location: KAJANG, SEMENYIH, SELANGOR.
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  final _state; //Declaration
  MainBody({state}) : _state = state; //Define setter

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.access_alarm, //To enable the alarm
                color: Color.fromRGBO(_state.red.round(), _state.green.round(),
                    _state.blue.round(), 1.0),
                size: _state.size),
          ]),
    );
  }
}
