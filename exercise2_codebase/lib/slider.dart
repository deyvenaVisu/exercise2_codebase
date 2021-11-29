//? MOBILE APPLICATION PROGRAMMING
//? Exercise 2

// Section: 02
// Member 1's Name: DEIVINA VISVANADAN   Location: BIDOR,PERAK (i.e. where are you currently located)
// Member 2's Name: ANIS SYAZWANI  Location: KAJANG, SEMENYIH, SELANGOR.

import 'package:flutter/material.dart';

//Declaration
class Sliders extends StatelessWidget {
  final _state;
  final _color;
  final _colorCode;

//Define setter for the color changing
  Sliders({state, color, colorCode})
      : _state = state, // state var
        _color = color, // color var
        _colorCode = colorCode; // colorcode var

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Slider(
          min: 0.0,
          max: 255.0,
          value: _color.toDouble(),
          //This is where the color changing alarm happens
          activeColor: Colors.brown,
          inactiveColor: Colors.brown,
          onChanged: (double value) {
            if (_colorCode == "red") {
              _state.red = value;
            } else if (_colorCode == "green") {
              _state.green = value;
            } else {
              _state.blue = value;
            }
          },
        ),
      ),
    );
  }
}
