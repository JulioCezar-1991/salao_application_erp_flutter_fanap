import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:projectfanap/src/controller/RouteGeneratorController.dart';
import 'package:projectfanap/src/screen/SplashScreen.dart';
import 'package:projectfanap/src/theme/Theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sistema Gerancial",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale("pt"),
      ],
      home: SplashScreen(),
      theme: appTheme(),
      initialRoute: "/",
      onGenerateRoute: RouteGeneratorController.generateRoute,
    );
  }
}
