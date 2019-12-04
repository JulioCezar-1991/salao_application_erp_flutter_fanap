import 'package:flutter/material.dart';
import 'package:projectfanap/src/widgets/CardServiceWidget.dart';

class ServiceScreen extends StatefulWidget {
  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: ListView(
        children: <Widget>[
          for(int i = 0; i < 25; i++)
          CardServiceWidget(),
        ],
      ),
    );
  }
}
