import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:projectfanap/src/bloc/client.bloc.dart';
import 'package:projectfanap/src/bloc/home.bloc.dart';
import 'package:projectfanap/src/bloc/servico.bloc.dart';
import 'package:projectfanap/src/bloc/user.bloc.dart';
import 'package:projectfanap/src/route-generator.controller.dart';
import 'package:projectfanap/src/theme/Theme.dart';
import 'package:projectfanap/src/pages/splash.page.dart';
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
        ChangeNotifierProvider<HomeBloc>.value(
          value: HomeBloc(),
        ),
        ChangeNotifierProvider<ServicoBloc>.value(
          value: ServicoBloc(),
        ),
        ChangeNotifierProvider<ClientBloc>.value(
          value: ClientBloc(),
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
      title: "Sistema Gerencial",
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
