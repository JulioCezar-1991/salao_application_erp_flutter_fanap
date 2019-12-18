import 'package:flutter/material.dart';

const brightness = Brightness.light;

const primaryColor = const Color.fromRGBO(56, 32, 52, 1.0);
const accentColor = const Color.fromRGBO(92, 42, 100, 1.0);
const bottomAppBarColor = const Color.fromRGBO(56, 32, 52, 1.0);
const buttonColor = const Color.fromRGBO(56, 32, 52, 1.0);
const cursorColor = Colors.white;

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: accentColor,
    bottomAppBarColor: bottomAppBarColor,
    buttonColor: buttonColor,
    cursorColor: cursorColor,
    textTheme: TextTheme(
      body1: TextStyle(
        
        fontFamily: "Montserrat",
      ),
      body2: TextStyle(
        
        fontFamily: "Montserrat",
      ),
      button: TextStyle(
        color: Colors.white,
        fontFamily: "Montserrat",
      ),
      caption: TextStyle(
        
        fontFamily: "Montserrat",
      ),
      display1: TextStyle(
        color: Colors.white,
        fontFamily: "Montserrat",
      ),
      display2: TextStyle(
        color: Colors.white,
        fontFamily: "Montserrat",
      ),
      display3: TextStyle(
        color: Colors.white,
        fontFamily: "Montserrat",
      ),
      display4: TextStyle(
        color: Colors.white,
        fontFamily: "Montserrat",
      ),
      headline: TextStyle(
        color: Colors.white,
        fontFamily: "Montserrat",
      ),
      overline: TextStyle(
        color: Colors.white,
        fontFamily: "Montserrat",
      ),
      subhead: TextStyle(
        color: Colors.white,
        fontFamily: "Montserrat",
      ),
      subtitle: TextStyle(
        color: Colors.white,
        fontFamily: "Montserrat",
      ),
      title: TextStyle(
        color: Colors.white,
        fontFamily: "Montserrat",
      ),
      
    ),
  );
}
