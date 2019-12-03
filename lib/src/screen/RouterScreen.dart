import 'package:flutter/material.dart';
import 'package:projectfanap/src/screen/SplashScreen.dart';
import 'package:projectfanap/src/screen/login/LoginSignInScreen.dart';

class RouterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        accentColor: Color.fromRGBO(56, 32, 52, 1.0),
        bottomAppBarColor: Color.fromRGBO(56, 32, 52, 1.0),
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(56, 32, 52, 1.0),
        ),
        buttonColor: Color.fromRGBO(56, 32, 52, 1.0),
        
        
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        'screen/login/LoginSignInScreen': (BuildContext context) => LoginSignInScreen()
      },
    );
  }
}
