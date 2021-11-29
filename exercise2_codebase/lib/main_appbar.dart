//? MOBILE APPLICATION PROGRAMMING
//? Exercise 2

// Section: 02
// Member 1's Name: DEIVINA VISVANADAN   Location: BIDOR,PERAK (i.e. where are you currently located)
// Member 2's Name: ANIS SYAZWANI  Location: KAJANG, SEMENYIH, SELANGOR.

import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  //Declaration
  final _state, _title, _drawerItem;

//Define setter
  MainAppBar({state, title, drawerItem})
      : _state = state,
        _title = title,
        _drawerItem = drawerItem;

  @override
  //Declare the size of the app bar
  Size get preferredSize => Size.fromHeight(60.0);

  //Define the drawer items / bar above
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _drawerItem,
      child: IconButton(
          visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
          padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
          icon: Container(
            alignment: Alignment.center,
            child: Text(_title),
            decoration: BoxDecoration(
                color: Colors.brown, // colour of the box/bar above
                border: Border.all(width: 1.0, color: Colors.white),
                shape: BoxShape.circle),
          ),
          //on press function switch case to change size
          onPressed: () {
            switch (_title) {
              case 'S':
                _state.size = 100.0; // small size = size 100
                break;
              case 'M':
                _state.size = 300.0; // medium size = 300
                break;
              case 'L':
                _state.size = 500.0; // large size = 500
                break;
              case '+':
                _state.size = _state.size + 50.0; // increase by +50
                break;
              case '-':
                _state.size = _state.size - 50.0; // descrease by -50
                break;
            }
          }),
    );
  }
}
