import 'package:flutter/material.dart';
import 'package:projeto_fanap/app/page/client/client_details_page.dart';
import 'package:projeto_fanap/app/shared/models/client-list.model.dart';

class ClientCard extends StatelessWidget {
  final ClientListModel item;

  const ClientCard({Key key, this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 2,
        child: Row(
          children: <Widget>[
            Container(
              width: 80,
              height: 80,
              child: Center(
                child: Icon(
                  Icons.person,
                  color: Colors.teal,
                  size: 60,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.height / 3.0,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 3, bottom: 4),
                    child: Text(
                      item.name = item.name = item.name.length > 36
                          ? item.name.substring(0, 32) + '...'
                          : item.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).accentColor),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        item.sector = item.sector.length > 23
                            ? item.sector.substring(0, 20) + '...'
                            : item.sector,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      SizedBox(
                        child: Text(" - "),
                      ),
                      Text(
                        item.city = item.city.length > 14
                            ? item.city.substring(0, 12) + '...'
                            : item.city,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.5, bottom: 4),
                    child: Row(
                      children: <Widget>[
                        Text(
                          item.telcel,
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).accentColor),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          item.telfix,
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).accentColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ClientDetails(
              item: item,
            ),
          ),
        );
      },
    );
  }
}
