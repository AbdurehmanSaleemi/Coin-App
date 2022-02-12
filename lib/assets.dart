import 'package:flutter/material.dart';

// fonts
final String sandReg = 'SandReg';
final String sandBold = 'SandBold';

// Colors
const Color myBlue = Color.fromRGBO(0, 41, 107, 1);
const Color myBlueHint = Color.fromARGB(255, 30, 100, 214);
const Color myYellow = Color.fromRGBO(253, 197, 0, 1);
const Color lightBlue = Color.fromRGBO(0, 63, 136, 1);

//data to store
String playerOneName = '';
String playerTwoName = '';
bool playerOneSide = false;
bool playerTwoSide = false;

Color borderClr = (playerOneSide == true && playerTwoSide == false) ||
            (playerOneSide == false && playerTwoSide == true)
        ? myYellow
        : Colors.transparent;