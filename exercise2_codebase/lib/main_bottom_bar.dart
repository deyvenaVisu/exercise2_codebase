//? MOBILE APPLICATION PROGRAMMING
//? Exercise 2

// Section: 02
// Member 1's Name: DEIVINA VISVANADAN   Location: BIDOR,PERAK (i.e. where are you currently located)
// Member 2's Name: ANIS SYAZWANI  Location: KAJANG, SEMENYIH, SELANGOR.
import 'package:flutter/material.dart';
import 'Slider.dart';

//Declaration
class MainBottomBar extends StatelessWidget {
  final _state;
  final _drawerItem;

//Define setter
  MainBottomBar({state, drawerItem})
      : _state = state,
        _drawerItem = drawerItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      child: Padding(
        //add 15 padding
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 15.0,
            0.0), // padding between boz size of the color sliders
        child: Column(children: [
          //Define the slider part for red
          Row(
            children: [
              Sliders(
                state: _state,
                colorCode: "red",
                color: _state.red,
              ),
              Center(
                child: Visibility(
                  visible: _drawerItem, //drawer
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      _state.red = 255.0;
                      _state.green = 0.0;
                      _state.blue = 0.0;
                    },
                    label: Text(_state.red.round().toString()),
                    shape: CircleBorder(),
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              Visibility(
                visible: !_drawerItem,
                child: Text(_state.red.round().toString()),
              )
            ],
          ),

          //Define the slider part for green
          Row(
            children: [
              Sliders(
                state: _state,
                colorCode: "green",
                color: _state.green,
              ),
              Center(
                child: Visibility(
                  visible: _drawerItem,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      _state.red = 0.0;
                      _state.green = 255.0;
                      _state.blue = 0.0;
                    },
                    label: Text(_state.green.round().toString()),
                    shape: CircleBorder(),
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
              Visibility(
                visible: !_drawerItem,
                child: Text(_state.green.round().toString()),
              )
            ],
          ),

          //Define the slider part for blue
          Row(
            children: [
              Sliders(
                state: _state,
                colorCode: "blue",
                color: _state.blue,
              ),
              Center(
                child: Visibility(
                  visible: _drawerItem,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      _state.red = 0.0;
                      _state.green = 0.0;
                      _state.blue = 255.0;
                    },
                    label: Text(_state.blue.round().toString()),
                    shape: CircleBorder(),
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              Visibility(
                visible: !_drawerItem,
                child: Text(_state.blue.round().toString()),
              )
            ],
          )
        ]),
      ),
    );
  }
}
