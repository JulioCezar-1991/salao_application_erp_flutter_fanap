import 'package:flutter/material.dart';
import 'dart:async';

import 'package:projectfanap/src/RouteGeneratorController.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacementNamed(
        context, RouteGeneratorController.ROUTE_LOGINSINGIN);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 250,
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
              CircularProgressIndicator(
                strokeWidth: 5,
              )
            ],
          )),
    );
  }
}
