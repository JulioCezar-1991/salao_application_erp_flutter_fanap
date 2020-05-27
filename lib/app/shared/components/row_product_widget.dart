import 'package:flutter/material.dart';
import 'package:projeto_fanap/app/shared/models/product_list_model.dart';

class RowProductWidget extends StatelessWidget {
  final ProductListModel product;

  const RowProductWidget({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            product.title,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ],
    );
  }
}
