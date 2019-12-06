import 'package:flutter/material.dart';
import 'package:projectfanap/src/controller/RouteGeneratorController.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:projectfanap/src/screen/SplashScreen.dart';
import 'package:projectfanap/src/screen/login/LoginSignInScreen.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [
          Locale("pt"),
        ],
        home: SplashScreen(),
        theme: ThemeData(
          accentColor: Color.fromRGBO(56, 32, 52, 1.0),
          bottomAppBarColor: Color.fromRGBO(56, 32, 52, 1.0),
          appBarTheme: AppBarTheme(
            color: Color.fromRGBO(56, 32, 52, 1.0),
          ),
          buttonColor: Color.fromRGBO(56, 32, 52, 1.0),
        ),
        initialRoute: "/",
        onGenerateRoute: RouteGeneratorController.generateRoute,
        routes: <String, WidgetBuilder>{
          'screen/login/LoginSignInScreen': (BuildContext context) =>
              LoginSignInScreen()
        },
      ),
    );
