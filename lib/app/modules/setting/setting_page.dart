import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Configuração '),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: _size.width / 20, vertical: _size.width / 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[],
        ),
      ),
    );
  }
}
