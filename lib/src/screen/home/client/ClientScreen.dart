import 'package:flutter/material.dart';
import 'package:projectfanap/src/widgets/CardClientWidget.dart';

class ClientScreen extends StatefulWidget {
  @override
  _ClientScreenState createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: ListView(
        children: <Widget>[
          for(int i = 0; i < 25; i++)
          CardClientWidget(),
        ],
        
      )
    );
  }
}
