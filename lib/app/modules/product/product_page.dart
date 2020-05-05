import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/product/product_controller.dart';
import 'package:projeto_fanap/app/shared/components/product_card_widget.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _productController = Modular.get<ProductController>();
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (_productController.products.error != null) {
            return Center(
              child: IconButton(
                icon: Icon(
                  Icons.replay,
                  size: 40,
                ),
                onPressed: () {
                  _productController.fetchProduct();
                },
              ),
            );
          }
          if (_productController.products.value == null) {
            return Center(child: CircularProgressIndicator());
          }
          var list = _productController.products.value;
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: ProductCard(
                  item: list[index],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
