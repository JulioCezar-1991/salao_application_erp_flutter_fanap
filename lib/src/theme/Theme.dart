import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color.fromRGBO(92, 42, 100, 1.0);
const backgroundColor = const Color.fromRGBO(56, 32, 52, 1.0);
const accentColor = const Color.fromRGBO(92, 42, 100, 1.0);
const bottomAppBarColor = const Color.fromRGBO(56, 32, 52, 1.0);
const cursorColor = Colors.white;
const textStyleColor = Colors.white;

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: accentColor,
    backgroundColor: backgroundColor,
    bottomAppBarColor: bottomAppBarColor,
    cursorColor: cursorColor,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        title: TextStyle(
          fontSize: 20,
          color: textStyleColor,
        ),
      ),
      color: Color.fromRGBO(56, 32, 52, 1.0),
      actionsIconTheme: IconThemeData(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white),
    ),
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
        fontFamily: "Montserrat",
      ),
      display2: TextStyle(
        fontFamily: "Montserrat",
      ),
      display3: TextStyle(
        fontFamily: "Montserrat",
      ),
      display4: TextStyle(
        fontFamily: "Montserrat",
      ),
      headline: TextStyle(
        fontFamily: "Montserrat",
      ),
      overline: TextStyle(
        fontFamily: "Montserrat",
      ),
      subhead: TextStyle(
        fontFamily: "Montserrat",
      ),
      subtitle: TextStyle(
        fontFamily: "Montserrat",
      ),
      title: TextStyle(
        fontFamily: "Montserrat",
      ),
    ),
  );
}
