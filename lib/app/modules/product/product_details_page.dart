import 'package:flutter/material.dart';
import 'package:projeto_fanap/app/shared/models/product_list_model.dart';

class ProductDetailsPage extends StatefulWidget {
  final ProductListModel item;

  const ProductDetailsPage({Key key, this.item}) : super(key: key);
  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
