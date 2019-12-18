import 'package:flutter/material.dart';
import 'package:projectfanap/src/widgets/CardServiceWidget.dart';

class ServicoScreen extends StatefulWidget {
  @override
  _ServicoScreenState createState() => _ServicoScreenState();
}

class _ServicoScreenState extends State<ServicoScreen> {
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
