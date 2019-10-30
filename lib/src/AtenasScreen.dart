import 'package:flutter/material.dart';
import 'package:projectfanap/src/SplashScreen.dart';
import 'pages/login/LoginSignInPage.dart';


class AtenasScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Color.fromRGBO(56, 32, 52, 1.0),
        bottomAppBarColor: Color.fromRGBO(56, 32, 52, 1.0),
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(56, 32, 52, 1.0),
        ),
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/pages/login/LoginSignInPage': (BuildContext context) => LoginSignInPage()
      },
    );
  }
}
