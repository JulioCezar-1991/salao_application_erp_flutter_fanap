import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectfanap/src/model/servico-list.model.dart';


class ServicoCard extends StatelessWidget {

  final ServicoListModel item;

  const ServicoCard({ @required this.item});
  
  @override
  Widget build(BuildContext context) {
    return Card(
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
                  padding: EdgeInsets.only(top: 8, bottom: 4),
                  child: Text(
                    item.descricao,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Text(
                    "Valor: ${item.valor}",
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.5, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Tempo Médio: ${item.tempoGasto}",
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).accentColor,
                        ),
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