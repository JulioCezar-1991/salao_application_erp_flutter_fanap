import 'package:flutter/material.dart';
import 'package:projeto_fanap/app/modules/customer/customer_details_page.dart';
import 'package:projeto_fanap/app/shared/models/customer_list_model.dart';

class CustomerCard extends StatelessWidget {
  final CustomerListModel item;

  const CustomerCard({Key key, this.item});

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
                      item.name != null
                          ? (item.name.length >= 32
                              ? item.name.substring(0, 29) + '...'
                              : item.name)
                          : 'Consumidor Final',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).accentColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2, bottom: 2),
                    child: Text(
                      item.email != null
                          ? (item.name.length >= 32
                              ? item.email.substring(0, 29) + '...'
                              : item.email)
                          : 'Consumidor Final',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).accentColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.5, bottom: 2),
                    child: Row(
                      children: <Widget>[
                        Text(
                          item.telcel == null ? 'Sem Celular' : item.telcel,
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).accentColor),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Text(
                          item.telfix == null ? 'Sem Fone Fixo' : item.telfix,
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
            builder: (context) => CustomerDetailsPage(
              item: item,
            ),
          ),
        );
      },
    );
  }
}
