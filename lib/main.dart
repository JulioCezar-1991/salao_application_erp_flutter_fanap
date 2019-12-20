import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:projectfanap/src/RouteGeneratorController.dart';
import 'package:projectfanap/src/blocs/UserBloc.dart';
import 'package:projectfanap/src/theme/Theme.dart';
import 'package:projectfanap/src/ui/android/pages/SplashPage.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserBloc>.value(
          value: UserBloc(),
        ),
      ],
      child: Main(),
    );
  }
}
class Main extends StatelessWidget {
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
      home: SplashPage(),
      theme: appTheme(),
      initialRoute: "/",
      onGenerateRoute: RouteGeneratorController.generateRoute,
    );
  }
}
