import 'package:flutter/material.dart';
import 'package:projectfanap/src/ui/shared/widgets/CardServiceWidget.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: ListView(
        children: <Widget>[
          CardServiceWidget(),
        ],
      ),
    );
  }
}
