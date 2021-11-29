//? MOBILE APPLICATION PROGRAMMING
//? Exercise 2

// Section: 02
// Member 1's Name: DEIVINA VISVANADAN   Location: BIDOR,PERAK (i.e. where are you currently located)
// Member 2's Name: ANIS SYAZWANI  Location: KAJANG, SEMENYIH, SELANGOR.
import 'package:flutter/material.dart';

import 'main_appbar.dart';
import 'main_body.dart';
import 'main_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  final String title; //Declaration
  MainScreen({Key key, this.title}) : super(key: key); //Define setter

  @override
  _MainScreenState createState() => _MainScreenState();
}

//Main screen
class _MainScreenState extends State<MainScreen> {
  var _drawerItem = {"Allow Resize?": true, "Allow change primer color?": true};

  var _red = 0.0;
  var _green = 0.0;
  var _blue = 0.0;

  var _size = 400.0;
  get size => _size;
//set value size
  set size(value) => setState(() => _size = value);

//set colour
  get red => _red;
  set red(value) => setState(() => _red = value);
  get green => _green;
  set green(value) => setState(() => _green = value);
  get blue => _blue;
  set blue(value) => setState(() => _blue = value);

//Main icon
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Icon'),
        backgroundColor: Colors.brown,
        actions: [
          MainAppBar(
              //We used the drawerItem instead IconButton to represent the button
              state: this,
              title: "-",
              drawerItem: _drawerItem.values.elementAt(0)), // decrease
          MainAppBar(
              state: this,
              title: "S",
              drawerItem: _drawerItem.values.elementAt(0)), //small
          MainAppBar(
              state: this,
              title: "M",
              drawerItem: _drawerItem.values.elementAt(0)), //medium
          MainAppBar(
              state: this,
              title: "L",
              drawerItem: _drawerItem.values.elementAt(0)), // large
          MainAppBar(
              state: this,
              title: "+",
              drawerItem: _drawerItem.values.elementAt(0)), //increase
        ],
      ),
      drawer: Drawer(
        child: ListView.builder(
            itemCount: _drawerItem.length,
            itemBuilder: (context, index) {
              return Card(
                child: CheckboxListTile(
                    title: Text(_drawerItem.keys.elementAt(index)),
                    value: _drawerItem.values.elementAt(index),
                    onChanged: (value) {
                      setState(
                        () {
                          _drawerItem[_drawerItem.keys.elementAt(index)] =
                              value;
                        },
                      );
                    }),
              );
            }),
      ),
      body: MainBody(state: this),
      bottomNavigationBar: MainBottomBar(
          state: this, drawerItem: _drawerItem.values.elementAt(1)),
    );
  }
}
