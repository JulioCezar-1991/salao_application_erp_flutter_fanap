import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_fanap/app/shared/models/product_list_model.dart';

class ProductCard extends StatelessWidget {
  final ProductListModel item;

  const ProductCard({@required this.item});

  @override
  Widget build(BuildContext context) {
    DateTime tempDate = DateTime.parse(item.averagetime);

    return Card(
      elevation: 2,
      child: Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            child: Center(
              child: Icon(
                FontAwesomeIcons.cut,
                color: Colors.pinkAccent[100],
                size: 60,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.height / 3.2,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 4),
                  child: Text(
                    item.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Text(
                    "Valor: R\$ ${item.price}",
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
                        "Tempo Médio: ${tempDate.hour}:${tempDate.minute}h",
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
