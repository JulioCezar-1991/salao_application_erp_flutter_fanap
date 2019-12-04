import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardServiceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            child: Center(
              child: Icon(
                FontAwesomeIcons.cut,
                color: Colors.pinkAccent[100],
                size: 50,
              ),
            ),
          ),
          Container(
            width: 200,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 2.5),
                  child: Text(
                    "Corte de Cabelo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Text("Valor: R\$35,00"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.5, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Tempo Médio: 30 Minutos",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
