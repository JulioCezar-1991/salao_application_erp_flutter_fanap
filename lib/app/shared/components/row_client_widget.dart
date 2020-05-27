import 'package:flutter/material.dart';
import 'package:projeto_fanap/app/shared/models/client_list_model.dart';

class RowClientWidget extends StatelessWidget {
  final ClientListModel client;

  const RowClientWidget({Key key, this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            client.name,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ],
    );
  }
}
