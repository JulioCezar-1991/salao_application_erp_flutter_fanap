import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:projeto_fanap/app/shared/models/product_create_model.dart';
import 'package:projeto_fanap/app/shared/models/product_list_model.dart';
import 'package:projeto_fanap/app/shared/models/product_model.dart';

class ProductRepository {
  final Dio dio;

  ProductRepository(this.dio);

  Future<List<ProductListModel>> getAllProduct() async {
    Response response = await dio.get('/products');
    return (response.data as List)
        .map((item) => ProductListModel.fromJson(item))
        .toList();
  }

  Future<ProductModel> postProduct(ProductCreateModel model) async {
    Response response = await dio.post('/products', data: model);
    return ProductModel.fromJson(response.data[0]);
  }

  Future<ProductModel> deleteProduct() async {
    Response response = await dio.delete('/products');
    debugPrint("resposta: ${response.statusCode}");
    return ProductModel.fromJson(response.data);
  }

  Future<ProductModel> patchProduct(ProductCreateModel model) async {
    Response response = await dio.patch('/products', data: model);
    debugPrint("resposta: ${response.data}");
    return ProductModel.fromJson(response.data);
  }
}
