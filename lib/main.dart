import 'package:flutter/material.dart';
import 'package:projectfanap/src/screen/RouterScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
        home: RouterScreen(),
      ),
    );
