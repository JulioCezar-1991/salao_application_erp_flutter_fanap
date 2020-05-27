import 'package:flutter/material.dart';
import 'package:projeto_fanap/app/shared/models/customer_list_model.dart';

class RowCustomerWidget extends StatelessWidget {
  final CustomerListModel customer;

  const RowCustomerWidget({Key key, this.customer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            customer.name,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ],
    );
  }
}
