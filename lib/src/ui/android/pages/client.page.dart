import 'package:flutter/material.dart';
import 'package:projectfanap/src/ui/shared/widgets/client-card.widget.dart';

class ClientPage extends StatefulWidget {
  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
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
          ClientCardWidget(),
        ],
        
      )
    );
  }
}
